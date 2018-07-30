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
//		System.out.println(customer);
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
		System.out.println(customerName);
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
	
//	@RequestMapping(value= "addAddress",produces="application/json;charset=utf-8")
//	@ResponseBody
//	public String addAddress(String callback,HttpServletRequest request,HttpSession httpSession) throws Exception{ 
//		String customerID=request.getParameter("customerID");
//		String oldPassword=request.getParameter("oldPassword");
//		String newPassword=request.getParameter("newPassword");
//		String rePassword=request.getParameter("rePassword");
//	    String result=userservice.changePassword(Integer.parseInt(customerID), oldPassword, newPassword, rePassword);
//		Map<String, String> map=new HashMap<>();
//		map.put("result", result);
//		String res=callback+"("+JSON.toJSONString(map)+")";
//		return res;
//	}
}
