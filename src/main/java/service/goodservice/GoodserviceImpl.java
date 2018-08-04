package service.goodservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Mapper.CartDetailMapper;
import Mapper.CartMapper;
import Mapper.GoodsMainTypeMapper;
import Mapper.GoodsMapper;
import Mapper.GoodsSecondaryTypeMapper;
import bean.Cart;
import bean.CartDetail;
import bean.Goods;
import bean.GoodsSecondaryType;
import bean.middle.categorybean;

@Service
public class GoodserviceImpl implements Goodservice{
	@Autowired
	GoodsMapper goodsmapper;
	@Autowired
	GoodsMainTypeMapper goodsmainmapper;
	@Autowired
	GoodsSecondaryTypeMapper goodssecondarytypemapper;
	@Autowired
	CartMapper cartmapper;
	@Autowired
	CartDetailMapper cartdetailmapper;
	@Override
	public categorybean getcategory(int categoryID) {
		categorybean result=new categorybean();
		result.setCategoryType(goodsmainmapper.findByGoodsMainTypeID(categoryID).getGoodsMainType());
		result.setGoodssecondarytypelist(goodssecondarytypemapper.findBygoodsMainTypeID(categoryID));
		return result;
	}
	@Override
	public List<Goods> getgood(int goodsID) {
		return goodsmapper.findBygoodsID(goodsID);
	}
	@Override
	public List<Goods> searchItems(String goodsName) {
		return goodsmapper.findBygoodsName(goodsName);
	}
	@Override
	public String add2Cart(int goodsID, String goodsSpecify, int goodsCount, double goodsPrice, int cartID) {
		String result="";
		Goods good=new Goods(goodsID, null, 0, goodsSpecify, null, goodsPrice, 0, 0, null, 0, 0, null, null);
		double totalPrice=goodsCount*goodsPrice;
		CartDetail cartDetail=new CartDetail(cartID, good, goodsCount, totalPrice);
		int num=cartdetailmapper.insert(cartDetail);
		if(num==0){
			result+="加入购物车失败";
			return result;
		}
		totalPrice+=cartmapper.findtotalPriceByCartID(cartID);
		cartmapper.updatetotalPriceBycartID(cartID, totalPrice);
		return result;
	}
}
