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
		float PackageMainTypeWeight =(float) adminservice.MainTypeSaleWeight(1);
		float ClothMainTypeWeight = (float) adminservice.MainTypeSaleWeight(2);
		float FoodMainTypeWeight = (float) adminservice.MainTypeSaleWeight(3);
		float CultureMainTypeWeight = (float) adminservice.MainTypeSaleWeight(4);
		//////////////////////////////////////////////////////////////////////////
		float ManPackWeight = (float) adminservice.SecondaryTypeSaleWeight(1, 1);
		float GirlPackWeight = (float) adminservice.SecondaryTypeSaleWeight(1, 2);
		float PurseWeight = (float) adminservice.SecondaryTypeSaleWeight(1, 3);
		float CarrierWeight = (float) adminservice.SecondaryTypeSaleWeight(1, 4);
		/////////////////////////////////////////////////////////////////////////////
		float TshirtWeight = (float) adminservice.SecondaryTypeSaleWeight(2, 5);
		float PoloWeight = (float) adminservice.SecondaryTypeSaleWeight(2, 6);
		float SexySkirtWeight = (float) adminservice.SecondaryTypeSaleWeight(2, 7);
		float FashionPantWeight = (float) adminservice.SecondaryTypeSaleWeight(2, 8);
		///////////////////////////////////////////////////////////////////////////
		float SockWeight = (float) adminservice.SecondaryTypeSaleWeight(3,9);
		float NutWeight = (float) adminservice.SecondaryTypeSaleWeight(3, 10);
		float MeatWeight = (float) adminservice.SecondaryTypeSaleWeight(3,11);
		float DrinkWeight = (float) adminservice.SecondaryTypeSaleWeight(3,12);
		//////////////////////////////////////////////////////////////////////
		float BeautifulWritingWeight = (float) adminservice.SecondaryTypeSaleWeight(4,13);
		float OutDoorWeight = (float) adminservice.SecondaryTypeSaleWeight(4,14);
		float MusicWeight = (float) adminservice.SecondaryTypeSaleWeight(4,15);
		float FilmWeight = (float) adminservice.SecondaryTypeSaleWeight(4,16);

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
