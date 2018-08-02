package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import bean.middle.indexbean;
import service.welcomeservice.Welcomeservice;

@Controller
public class Welcomecontroller {
	@Autowired
	Welcomeservice welcomeservice;
    @RequestMapping("")
    public String welcome(Model model){
    	List<indexbean> indexs=welcomeservice.initIndex();
    	model.addAttribute("indexs", indexs);
    	return "index";
    }
}
