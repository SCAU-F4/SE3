package controller;

import java.sql.Timestamp;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mysql.fabric.xmlrpc.base.Data;

import Mapper.ManagerMapper;
import bean.Customer;
import bean.Manager;

@Controller
@RequestMapping(value="user")
public class Usercontroller {
	  @RequestMapping(value="signin")
	  public String signin(){
		  return "signin";
	  }
	  @RequestMapping(value="signup",method=RequestMethod.GET)
	  public String signup(){
		  return "signup";
	  }
	  @RequestMapping(value="signup",method=RequestMethod.POST)
	  public String signupcheck(Customer customer){
		  //检验数据 AOP
		  //成功,存进数据库
		  customer.setCustomerRegDate(new Timestamp(System.currentTimeMillis()));
		  return "redirect:/";
	  }
}
