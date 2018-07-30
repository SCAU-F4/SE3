package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import Mapper.IndentMapper;
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
		model.addAttribute("allindent",allindent);
		return "myCenter";
	}
	
	@RequestMapping(value ="signout")
	public String signout(HttpSession session){
        session.removeAttribute("currentCustomer");
		return "redirect:/";
	}
	
	@RequestMapping(value= "changeName",produces="application/json;charset=utf-8")
	@ResponseBody
	public JSONObject changeName(@RequestBody Map<String,String> map,HttpSession httpSession){ 
		System.out.println(6666666);
		System.out.println(map.get("customerName"));
		JSONObject jsonobject=new JSONObject();
		jsonobject.put("aaa", 2222);
//		Customer customer=(Customer) httpSession.getAttribute("currentCustomer");
//		String result=userservice.changeName(customer.getCustomerID(),customer.getCustomerName());
		return jsonobject;
//		JSONObject.
	}
}
