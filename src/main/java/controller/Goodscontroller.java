package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import bean.Goods;
import bean.GoodsSecondaryType;
import bean.middle.categorybean;
import service.goodservice.Goodservice;

@Controller
@RequestMapping(value = "products")
public class Goodscontroller {
	@Autowired
	Goodservice goodservice;
	@RequestMapping(value="list",method=RequestMethod.GET)  
	public String getcategory(Model model,@RequestParam(value="categoryId") int categoryID,@RequestParam(value="subcategoryId") int subcategoryID){
			categorybean category=goodservice.getcategory(categoryID);
			model.addAttribute("category", category);
		return "classify";
	}
	
	@RequestMapping(value = "detail/{goodsID}")
	public String goodsDetail(@PathVariable int goodsID) {
		System.out.println(goodsID);
		return "detail";
	}
}
