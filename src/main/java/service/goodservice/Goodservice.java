package service.goodservice;

import java.util.List;

import bean.Customer;
import bean.Goods;
import bean.middle.categorybean;

public interface Goodservice {
	public categorybean getcategory(int categoryID);
	public List<Goods> getgood(int goodsID);
	public List<Goods> searchItems(String goodsName);
	public String add2Cart(int goodsID,String goodsSpecify,int goodsCount,Customer customer);
	public String removefromCart(int goodsID,String goodsSpecify,int goodsCount,Customer customer);

}
