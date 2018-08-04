package service.goodservice;

import java.util.List;

import bean.Goods;
import bean.GoodsSecondaryType;
import bean.middle.categorybean;

public interface Goodservice {
	public categorybean getcategory(int categoryID);
	public List<Goods> getgood(int goodsID);
	public List<Goods> searchItems(String goodsName);
	public String add2Cart(int goodsID,String goodsSpecify,int goodsCount,double goodsPrice,int cartID);
}
