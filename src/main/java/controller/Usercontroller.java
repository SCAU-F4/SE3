package controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;

import org.apache.catalina.connector.Request;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import Mapper.ManagerMapper;
import bean.Customer;
import service.userservice.Userservice;

@Controller
@RequestMapping(value = "user")
public class Usercontroller {
	@Autowired
	Userservice userservice;

	@RequestMapping(value = "signin")
	public String signin() {
		return "signin";
	}

	@RequestMapping(value = "signup", method = RequestMethod.GET)
	public String signup() {
		return "signup";
	}

	@RequestMapping(value = "signup", method = RequestMethod.POST)
	public String signupcheck(Customer customer,HttpServletRequest request) {
		String repassword=request.getParameter("repassword");
		String result=userservice.signup(customer,repassword);
		if(result==null) return "redirect:/";
		else return "signup";
	}
}
