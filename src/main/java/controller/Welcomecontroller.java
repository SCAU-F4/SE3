package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Welcomecontroller {
  @RequestMapping(value="")
  public String welcome(){
	  return "index";
  }
}
