package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String signin(Manager manager,String referrer, Model model, HttpSession session) {
		String result=adminservice.signin(manager);
		if(result.equals("ok"))
		{
			session.setAttribute("currentManager", manager);
			return "forward:/admin/tongji";
		}
		model.addAttribute("error", result);
		return "adminsignin";
	}
	
	
	@RequestMapping(value="tongji")
	public String searchItems(Model model){
		double PackageMainTypeWeight=adminservice.MainTypeSaleWeight(1);
		double ClothMainTypeWeight=adminservice.MainTypeSaleWeight(2);
		double FoodMainTypeWeight=adminservice.MainTypeSaleWeight(3);
		double CultureMainTypeWeight=adminservice.MainTypeSaleWeight(4);
		//////////////////////////////////////////////////////////////////////////
		double ManPackWeight=adminservice.SecondaryTypeSaleWeight(1, 1);
		double GirlPackWeight=adminservice.SecondaryTypeSaleWeight(1, 2);
		double PurseWeight=adminservice.SecondaryTypeSaleWeight(1, 3);
		double CarrierWeight=adminservice.SecondaryTypeSaleWeight(1, 4);
		/////////////////////////////////////////////////////////////////////////////
		double TshirtWeight=adminservice.SecondaryTypeSaleWeight(2, 1);
		double PoloWeight=adminservice.SecondaryTypeSaleWeight(2, 2);
		double SexySkirtWeight=adminservice.SecondaryTypeSaleWeight(2, 3);
		double FashionPantWeight=adminservice.SecondaryTypeSaleWeight(2,4);
		///////////////////////////////////////////////////////////////////////////
		double SockWeight=adminservice.SecondaryTypeSaleWeight(3, 1);
		double NutWeight=adminservice.SecondaryTypeSaleWeight(3, 2);
		double MeatWeight=adminservice.SecondaryTypeSaleWeight(3, 3);
		double DrinkWeight=adminservice.SecondaryTypeSaleWeight(3, 4);
		//////////////////////////////////////////////////////////////////////
		double BeautifulWritingWeight=adminservice.SecondaryTypeSaleWeight(4, 1);
		double OutDoorWeight=adminservice.SecondaryTypeSaleWeight(4, 2);
		double MusicWeight=adminservice.SecondaryTypeSaleWeight(4, 3);
		double FilmWeight=adminservice.SecondaryTypeSaleWeight(4,4);
		
		Map mymap=new HashMap<String, Double>();
		mymap.put("PackageMainTypeWeight", PackageMainTypeWeight);
		mymap.put("ClothMainTypeWeight",ClothMainTypeWeight);
		mymap.put("FoodMainTypeWeight", FoodMainTypeWeight);
		mymap.put("CultureMainTypeWeight", CultureMainTypeWeight);
		mymap.put("ManPackWeight", ManPackWeight);
		mymap.put("GirlPackWeight", GirlPackWeight);
		mymap.put("PurseWeight", PurseWeight);
		mymap.put("CarrierWeight", CarrierWeight);
		mymap.put("TshirtWeight", TshirtWeight);
		mymap.put("PoloWeight",  PoloWeight);
		mymap.put("SexySkirtWeight", SexySkirtWeight);
		mymap.put("FashionPantWeight", FashionPantWeight);
		mymap.put("SockWeight", SockWeight);
		mymap.put("NutWeight", NutWeight);
		mymap.put("MeatWeight", MeatWeight);
		mymap.put("DrinkWeight",DrinkWeight);
		mymap.put("BeautifulWritingWeight", BeautifulWritingWeight);
		mymap.put("OutDoorWeight", OutDoorWeight);
		mymap.put("MusicWeight", MusicWeight);
		mymap.put("FilmWeight", FilmWeight);
		
		model.addAttribute("mymap", mymap);
		return "next";
	}
	
	
	

}
