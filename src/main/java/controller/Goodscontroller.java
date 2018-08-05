package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import bean.Customer;
import bean.Goods;
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
	public String goodsDetail(Model model,@PathVariable int goodsID) {
		List<Goods> goods=goodservice.getgood(goodsID);
		model.addAttribute("goods", goods);
		return "detail";
	}
	
	@RequestMapping(value= "add2Cart",produces="application/json;charset=utf-8")
	@ResponseBody
	public String add2Cart(String callback,HttpServletRequest request,HttpSession httpSession) throws Exception{ 
		String result="非法操作";
		
		System.out.println("6666");
		String goodsID = request.getParameter("goodsID");
		String goodsSpecify = request.getParameter("goodsSpecify");
		String goodsCount =request.getParameter("goodsCount");//增量，不是总量
		if(Integer.parseInt(goodsCount)!=0){
			Customer customer=(Customer) httpSession.getAttribute("currentCustomer");
			if(Integer.parseInt(goodsCount)>0){
				result=goodservice.add2Cart(Integer.parseInt(goodsID), goodsSpecify, Integer.parseInt(goodsCount),customer);
			}
			else {
				result=goodservice.removefromCart(Integer.parseInt(goodsID), goodsSpecify, Integer.parseInt(goodsCount), customer);
			}
		}
		Map<String, String> map=new HashMap<>();
		map.put("result", result);
		String res=callback+"("+JSON.toJSONString(map)+")";
		return res;
	}
	
	@RequestMapping(value="searchitems")
	public String searchItems(Model model,@RequestParam("Name") String Name){
		List<Goods> goods=goodservice.searchItems(Name);
		for(Goods good:goods) System.out.println(good);
		model.addAttribute("goodsList", goods);
		return "searchItems";
	}
}
