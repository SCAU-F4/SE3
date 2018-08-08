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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import bean.Customer;
import bean.Goods;
import bean.Manager;
import service.adminservice.Adminservice;
import service.goodservice.Goodservice;

@Controller
@RequestMapping(value = "admin")
public class Admincontroller {
	@Autowired
	Adminservice adminservice;

	@RequestMapping(value = "adminsignin", method = RequestMethod.GET)
	public String signin() {
		return "adminsignin";
	}

	@RequestMapping(value = "adminsignin", method = RequestMethod.POST)
	public String signin(Manager manager, String referrer, Model model, HttpSession session) {
		System.out.println(manager);
		System.out.println("-------------------------------------------------------------");
		String result = adminservice.signin(manager);
		if (result.equals("ok")) {
			session.setAttribute("currentManager", manager);
			return "forward:/admin/tongji";
		}
		model.addAttribute("error", result);
		return "adminsignin";
	}

	@RequestMapping(value = "tongji")
	public String searchItems(Model model) {
		double PackageMainTypeWeight = adminservice.MainTypeSaleWeight(1);
		double ClothMainTypeWeight = adminservice.MainTypeSaleWeight(2);
		double FoodMainTypeWeight = adminservice.MainTypeSaleWeight(3);
		double CultureMainTypeWeight = adminservice.MainTypeSaleWeight(4);
		//////////////////////////////////////////////////////////////////////////
		double ManPackWeight = adminservice.SecondaryTypeSaleWeight(1, 1);
		double GirlPackWeight = adminservice.SecondaryTypeSaleWeight(1, 2);
		double PurseWeight = adminservice.SecondaryTypeSaleWeight(1, 3);
		double CarrierWeight = adminservice.SecondaryTypeSaleWeight(1, 4);
		/////////////////////////////////////////////////////////////////////////////
		double TshirtWeight = adminservice.SecondaryTypeSaleWeight(2, 5);
		double PoloWeight = adminservice.SecondaryTypeSaleWeight(2, 6);
		double SexySkirtWeight = adminservice.SecondaryTypeSaleWeight(2, 7);
		double FashionPantWeight = adminservice.SecondaryTypeSaleWeight(2, 8);
		///////////////////////////////////////////////////////////////////////////
		double SockWeight = adminservice.SecondaryTypeSaleWeight(3,9);
		double NutWeight = adminservice.SecondaryTypeSaleWeight(3, 10);
		double MeatWeight = adminservice.SecondaryTypeSaleWeight(3,11);
		double DrinkWeight = adminservice.SecondaryTypeSaleWeight(3,12);
		//////////////////////////////////////////////////////////////////////
		double BeautifulWritingWeight = adminservice.SecondaryTypeSaleWeight(4,13);
		double OutDoorWeight = adminservice.SecondaryTypeSaleWeight(4,14);
		double MusicWeight = adminservice.SecondaryTypeSaleWeight(4,15);
		double FilmWeight = adminservice.SecondaryTypeSaleWeight(4,16);

		
		Map mymap = new HashMap<String, Double>();
		mymap.put("PackageMainTypeWeight", PackageMainTypeWeight);
		mymap.put("ClothMainTypeWeight", ClothMainTypeWeight);
		mymap.put("FoodMainTypeWeight", FoodMainTypeWeight);
		mymap.put("CultureMainTypeWeight", CultureMainTypeWeight);
		mymap.put("ManPackWeight", ManPackWeight);
		mymap.put("GirlPackWeight", GirlPackWeight);
		mymap.put("PurseWeight", PurseWeight);
		mymap.put("CarrierWeight", CarrierWeight);
		mymap.put("TshirtWeight", TshirtWeight);
		mymap.put("PoloWeight", PoloWeight);
		mymap.put("SexySkirtWeight", SexySkirtWeight);
		mymap.put("FashionPantWeight", FashionPantWeight);
		mymap.put("SockWeight", SockWeight);
		mymap.put("NutWeight", NutWeight);
		mymap.put("MeatWeight", MeatWeight);
		mymap.put("DrinkWeight", DrinkWeight);
		mymap.put("BeautifulWritingWeight", BeautifulWritingWeight);
		mymap.put("OutDoorWeight", OutDoorWeight);
		mymap.put("MusicWeight", MusicWeight);
		mymap.put("FilmWeight", FilmWeight);

		model.addAttribute("mymap", mymap);
		return "next";
	}
	
	//第二个页面
	@RequestMapping(value = "goodsCharge", method = RequestMethod.POST)
	public String goodsCharge(Model model, HttpSession session) {
		Manager manager=(Manager) session.getAttribute("currentManager");
		if(manager==null) return "adminsignin";
		List allGoodsList=adminservice.getAllGoods();
		model.addAttribute("allGoodList",allGoodsList);
		return "goodsCharge";
	}
	
//	@RequestMapping(value= "showAllGoods",produces="application/json;charset=utf-8")
//	@ResponseBody
//	public String showAllGoods(String callback,HttpServletRequest request,HttpSession httpSession) throws Exception{ 
//		Map<String, List<Goods>> map=new HashMap<>();
//		map.put("AllGoodsList", adminservice.getAllGoods());
//		String res=callback+"("+JSON.toJSONString(map)+")";
//		return res;
//	}
//	
	
	
	
	
	

}
