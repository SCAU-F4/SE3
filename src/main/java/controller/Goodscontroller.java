package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="products")
public class Goodscontroller {
 @RequestMapping(value="detail")
 public String goodsDetail(){
	 return "detail";
 }
}
