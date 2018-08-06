package controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import bean.Manager;
import service.adminservice.Adminservice;

@Controller
@RequestMapping(value = "admin")
public class Admincontroller {
	@Autowired
	Adminservice adminservice;

	@RequestMapping(value = "signin", method = RequestMethod.POST)
	public String signin(Manager manager,String referrer, Model model, HttpSession session) {
		String result=adminservice.signin(manager);
		if(result.equals("ok"))
		{
			session.setAttribute("currentManager", manager);
			return "next";
		}
		model.addAttribute("error", result);
		return "adminsignin";
	}
	

}
