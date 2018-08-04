package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import bean.Address;
import bean.Customer;
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
	public String signin(Customer customer, Model model, HttpSession session) {
		String result = "";
		customer = userservice.signincheck(customer);
		if (customer == null) {
			result += "用户名或密码不正确";
			model.addAttribute("error", result);
			return "signin";
		} else {
			session.setAttribute("currentCustomer", customer);
		}
		return "redirect:/";
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
	
	@RequestMapping(value ="mycenter")
	public String mycenter(Model model,HttpSession httpSession){
		int customerID=((Customer)httpSession.getAttribute("currentCustomer")).getCustomerID();
		List<HashMap<String, String>> allindent=userservice.getAllIndent(customerID);
		List<Address> addresses=userservice.getAllAddress(customerID);
		model.addAttribute("allindent",allindent);
		model.addAttribute("addresses", addresses);
		return "myCenter";
	}
	
	@RequestMapping(value ="signout")
	public String signout(HttpSession session){
        session.removeAttribute("currentCustomer");
		return "redirect:/";
	}
	
	@RequestMapping(value= "changeName",produces="application/json;charset=utf-8")
	@ResponseBody
	public String changeName(String callback,HttpServletRequest request,HttpSession httpSession) throws Exception{ 
		String customerID=request.getParameter("customerID");
		String customerName=request.getParameter("customerName");
		String result=userservice.changeName(Integer.parseInt(customerID), customerName);
		if(result=="") {
			Customer customer=(Customer) httpSession.getAttribute("currentCustomer");
			customer.setCustomerName(customerName);
		}
		Map<String, String> map=new HashMap<>();
		map.put("result", result);
		String res=callback+"("+JSON.toJSONString(map)+")";
		return res;
	}
	
	@RequestMapping(value= "changePassword",produces="application/json;charset=utf-8")
	@ResponseBody
	public String changePassword(String callback,HttpServletRequest request,HttpSession httpSession) throws Exception{ 
		String customerID=request.getParameter("customerID");
		String oldPassword=request.getParameter("oldPassword");
		String newPassword=request.getParameter("newPassword");
		String rePassword=request.getParameter("rePassword");
	    String result=userservice.changePassword(Integer.parseInt(customerID), oldPassword, newPassword, rePassword);
	    if(result=="") {
	    	Customer customer=(Customer) httpSession.getAttribute("currentCustomer");
	    	customer.setCustomerPwd(newPassword);
	    }
		Map<String, String> map=new HashMap<>();
		map.put("result", result);
		String res=callback+"("+JSON.toJSONString(map)+")";
		return res;
	}
	
	@RequestMapping(value= {"addAddress","changeAddress"},produces="application/json;charset=utf-8")//增加或修改地址
	@ResponseBody
	public String addressService(String callback,HttpServletRequest request,HttpSession httpSession) throws Exception{ 
		String addressDetail=request.getParameter("addressDetail");
		String addressPostcode=request.getParameter("addressPostcode");
		String addressPhone=request.getParameter("addressPhone");
		String addressName=request.getParameter("addressName");
		String temp=request.getParameter("addressID");
		int addressID=-1;//-1是增加地址
		if(temp!=null){
			addressID=Integer.parseInt(temp);
			}
		Customer customer=(Customer) httpSession.getAttribute("currentCustomer");
		int customerID=customer.getCustomerID();
		Address address =new Address(customerID,addressID,addressDetail, addressPostcode, addressPhone, addressName,null);
	    String result=userservice.addressService(address);
	    String newaddressID=String.valueOf(address.getAddressID());
		Map<String, String> map=new HashMap<>();
		map.put("result", result);
		map.put("addressID",newaddressID);
		String res=callback+"("+JSON.toJSONString(map)+")";
		return res;
	}
	
	@RequestMapping(value= "deleteAddress",produces="application/json;charset=utf-8")//增加或修改地址
	@ResponseBody
	public String deleteAddress(String callback,HttpServletRequest request,HttpSession httpSession) throws Exception{ 
		String addressID=request.getParameter("addressID");
		Customer customer=(Customer) httpSession.getAttribute("currentCustomer");
		int customerID=customer.getCustomerID();
	    String result=userservice.deleteAddress(customerID, Integer.parseInt(addressID));
		Map<String, String> map=new HashMap<>();
		map.put("result", result);
		String res=callback+"("+JSON.toJSONString(map)+")";
		return res;
	}
	
	@RequestMapping(value= "deleteIndent",produces="application/json;charset=utf-8")
	@ResponseBody
	public String deleteIndent(String callback,HttpServletRequest request) throws Exception{ 
		String indentID=request.getParameter("indentID");
	    String result=userservice.deleteIndent(Integer.parseInt(indentID));
		Map<String, String> map=new HashMap<>();
		map.put("result", result);
		String res=callback+"("+JSON.toJSONString(map)+")";
		return res;
	}
}
