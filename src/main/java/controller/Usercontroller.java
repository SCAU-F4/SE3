package controller;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import bean.Address;
import bean.Customer;
import bean.Evaluate;
import bean.Indent;
import service.userservice.Userservice;

@Controller
@RequestMapping(value = "user")
public class Usercontroller {
	@Autowired
	Userservice userservice;

	@RequestMapping(value = "signin", method = RequestMethod.GET)
	public String signin() {
		return "signin";
	}

	@RequestMapping(value = "signin", method = RequestMethod.POST)
	public String signin(Customer customer,String referrer, Model model, HttpSession session) {
		String result = "";
		customer = userservice.signincheck(customer);
		if (customer == null) {
			result += "用户名或密码不正确";
			model.addAttribute("error", result);
			return "signin";
		} else {
			session.setAttribute("currentCustomer", customer);
		}
		String substr="http://localhost:8080/SE3-F4";
		referrer=referrer.replaceFirst(substr, "");
		return "forward:"+referrer;
	}

	@RequestMapping(value = "signup", method = RequestMethod.GET)
	public String signup() {
		return "signup";
	}

	@RequestMapping(value = "signup", method = RequestMethod.POST)
	public String signupcheck(Customer customer, Model model, HttpServletRequest request) {
		String repassword = request.getParameter("repassword");
		String result = userservice.signup(customer, repassword);
		model.addAttribute("error", result);
		if (result == null)
			return "forward:/user/signin";
		else
			return "signup";
	}

	@RequestMapping(value = "mycenter")
	public String mycenter(Model model, HttpSession httpSession) {
		Customer customer = (Customer) httpSession.getAttribute("currentCustomer");
		int customerID = customer.getCustomerID();
		List<Indent> allindent = userservice.getAllIndent(customerID);
		model.addAttribute("allindent", allindent);
		return "myCenter";
	}

	@RequestMapping(value = "signout")
	public String signout(HttpSession session) {
		session.removeAttribute("currentCustomer");
		return "redirect:/";
	}

	@RequestMapping(value = "changeName", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String changeName(String callback, HttpServletRequest request, HttpSession httpSession) throws Exception {
		String customerID = request.getParameter("customerID");
		String customerName = request.getParameter("customerName");
		String result = userservice.changeName(Integer.parseInt(customerID), customerName);
		if (result == "") {
			Customer customer = (Customer) httpSession.getAttribute("currentCustomer");
			customer.setCustomerName(customerName);
		}
		Map<String, String> map = new HashMap<>();
		map.put("result", result);
		String res = callback + "(" + JSON.toJSONString(map) + ")";
		return res;
	}

	@RequestMapping(value = "changePassword", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String changePassword(String callback, HttpServletRequest request, HttpSession httpSession)
			throws Exception {
		String customerID = request.getParameter("customerID");
		String oldPassword = request.getParameter("oldPassword");
		String newPassword = request.getParameter("newPassword");
		String rePassword = request.getParameter("rePassword");
		String result = userservice.changePassword(Integer.parseInt(customerID), oldPassword, newPassword, rePassword);
		Map<String, String> map = new HashMap<>();
		if (result == "") {
			Customer customer = (Customer) httpSession.getAttribute("currentCustomer");
			customer.setCustomerPwd(newPassword);
			map.put("password", newPassword);
		}
		map.put("result", result);
		String res = callback + "(" + JSON.toJSONString(map) + ")";
		return res;
	}

	@RequestMapping(value = { "addAddress", "changeAddress" }, produces = "application/json;charset=utf-8") // 增加或修改地址
	@ResponseBody
	public String addressService(String callback, HttpServletRequest request, HttpSession httpSession)
			throws Exception {
		String addressDetail = request.getParameter("addressDetail");
		String addressPostcode = request.getParameter("addressPostcode");
		String addressPhone = request.getParameter("addressPhone");
		String addressName = request.getParameter("addressName");
		String temp = request.getParameter("addressID");
		int addressID = -1;// -1是增加地址
		boolean flag = true;// true是增加地址，false是修改地址
		if (temp != null) {// 修改地址
			addressID = Integer.parseInt(temp);
			flag = false;
		}
		Customer customer = (Customer) httpSession.getAttribute("currentCustomer");
		int customerID = customer.getCustomerID();
		Address address = new Address(customerID, addressID, addressDetail, addressPostcode, addressPhone, addressName);
		String result = userservice.addressService(address);
		if (result == "") {
			if (flag == true)
				customer.getAddressList().add(address);
			else {
				for (Address oldaddress : customer.getAddressList()) {
					if (oldaddress.getAddressID() == address.getAddressID()) {
						customer.getAddressList().remove(oldaddress);
						customer.getAddressList().add(address);
						break;
					}
				}
			}
		}
		String newaddressID = String.valueOf(address.getAddressID());
		Map<String, String> map = new HashMap<>();
		map.put("result", result);
		map.put("addressID", newaddressID);
		String res = callback + "(" + JSON.toJSONString(map) + ")";
		return res;
	}

	@RequestMapping(value = "deleteAddress", produces = "application/json;charset=utf-8")
	@ResponseBody
	public String deleteAddress(String callback, HttpServletRequest request, HttpSession httpSession) throws Exception {
		String addressID = request.getParameter("addressID");
		Customer customer = (Customer) httpSession.getAttribute("currentCustomer");
		int customerID = customer.getCustomerID();
		String result = userservice.deleteAddress(customerID, Integer.parseInt(addressID));
		if(result==""){
			for (Address oldaddress : customer.getAddressList()) {
				if (oldaddress.getAddressID() == Integer.parseInt(addressID)) {
					customer.getAddressList().remove(oldaddress);
					break;
				}
			}
		}
		Map<String, String> map = new HashMap<>();
		map.put("result", result);
		String res = callback + "(" + JSON.toJSONString(map) + ")";
		return res;
	}

	@RequestMapping(value = "deleteIndent", produces = "application/json;charset=utf-8")
	@ResponseBody//危险，没维护currentCustomer对象，不能从该对象里调取订单
	public String deleteIndent(String callback, HttpServletRequest request) throws Exception {
		String indentID = request.getParameter("indentID");
		String result = userservice.deleteIndent(Integer.parseInt(indentID));
		Map<String, String> map = new HashMap<>();
		map.put("result", result);
		String res = callback + "(" + JSON.toJSONString(map) + ")";
		return res;
	}
	
	@RequestMapping(value ="comment")
	public String comment(Evaluate evaluate,Model model,ServletRequest servletRequest){
		String result=userservice.comment(evaluate,servletRequest.getServletContext().getRealPath("/img"));
		/*if(result=="") {
			return "redirect:/products/detail/"+evaluate.getGoodsID(); */
			result="11111111111111111------222222";
			Map<String, String> map = new HashMap<>();
			map.put("result", result);
			String res =JSON.toJSONString(map);
			return res;
		/*}*/

		/*else {
			model.addAttribute("result",result);
			return "mycenter";
		} */
	}

	@RequestMapping(value = "auction")
	public String auction(HttpSession httpSession,Model model) {
		Customer customer=(Customer) httpSession.getAttribute("currentCustomer");
		Indent indent=userservice.auction(customer);
		model.addAttribute("indent", indent);
		System.out.println(indent);
		return "auction";
	}
	
	@RequestMapping(value="pay")
	public String pay(@RequestParam("addressID") int addressID,@RequestParam("indentID")int indentID,HttpSession httpSession){
		Customer customer=(Customer) httpSession.getAttribute("currentCustomer");
		userservice.pay(addressID, indentID, customer);
		return "pay";
	}
	
	@RequestMapping(value = "purchase")
	public String purchase(@RequestParam("goodsID") int goodsID,@RequestParam("goodsSpecify") String goodsSpecify ,@RequestParam("goodsCount") int goodsCount,HttpSession httpSession,Model model) {
		Customer customer=(Customer) httpSession.getAttribute("currentCustomer");
		Indent indent=userservice.purchase(goodsID,goodsSpecify,goodsCount,customer);
		model.addAttribute("indent", indent);
		return "auction";
	}
}
