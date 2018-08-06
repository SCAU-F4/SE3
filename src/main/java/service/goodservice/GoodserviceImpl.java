package service.goodservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Mapper.CartDetailMapper;
import Mapper.CartMapper;
import Mapper.GoodsMainTypeMapper;
import Mapper.GoodsMapper;
import Mapper.GoodsSecondaryTypeMapper;
import bean.CartDetail;
import bean.Customer;
import bean.Goods;
import bean.middle.categorybean;

@Service
public class GoodserviceImpl implements Goodservice {
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
		categorybean result = new categorybean();
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
	public String add2Cart(int goodsID, String goodsSpecify, int goodsCount, Customer customer) {
		String result = "";
		Goods good = goodsmapper.findBygoodsIDAndgoodsSpecify(goodsID, goodsSpecify);
		double totalPrice = goodsCount * good.getGoodsPrice();
		CartDetail cartDetail = new CartDetail(customer.getCart().getCartID(), good, goodsCount, totalPrice);// new
		int sum = cartdetailmapper.isCartDetailExist(cartDetail);
		double tprice = customer.getCart().getTotalPrice();
		tprice += totalPrice;// 购物车总价
		if (sum == 0) {
			sum = cartdetailmapper.insert(cartDetail);
			if (sum == 0) {
				result += "加入购物车失败";
				return result;
			}
			customer.getCart().getCartDetailList().add(cartDetail);
		} else {
			cartDetail = cartdetailmapper.findBycartIDAndgoodsIDAndgoodsSpecify(customer.getCart().getCartID(), goodsID,
					goodsSpecify);// 旧的
			cartDetail.setGoodsCount(goodsCount + cartDetail.getGoodsCount());
			cartDetail.setTotalPrice(totalPrice + cartDetail.getTotalPrice());
			sum = cartdetailmapper.update(cartDetail);
			if (sum == 0) {
				result += "加入购物车失败";
				return result;
			}
			for (CartDetail detail : customer.getCart().getCartDetailList()) {
				if (detail.getGood().getGoodsID() == cartDetail.getGood().getGoodsID()
						&& detail.getGood().getGoodsSpecify().equals(cartDetail.getGood().getGoodsSpecify())) {
					customer.getCart().getCartDetailList().remove(detail);
					customer.getCart().getCartDetailList().add(cartDetail);
					break;
				}
			}
		}
		customer.getCart().setTotalPrice(tprice);
		cartmapper.updatetotalPriceBycartID(customer.getCart().getCartID(), tprice);
		return result;
	}

	@Override
	public String removefromCart(int goodsID, String goodsSpecify, int goodsCount, Customer customer) {
		String result = "";
		Goods good = goodsmapper.findBygoodsIDAndgoodsSpecify(goodsID, goodsSpecify);
		double totalPrice = goodsCount * good.getGoodsPrice();
		CartDetail cartDetail = cartdetailmapper.findBycartIDAndgoodsIDAndgoodsSpecify(customer.getCart().getCartID(),
				goodsID, goodsSpecify);
		int currentCount = cartDetail.getGoodsCount();
		currentCount += goodsCount;
		if (currentCount != 0) {
			cartDetail.setGoodsCount(currentCount);
			cartDetail.setTotalPrice(cartDetail.getTotalPrice() + totalPrice);
			int sum = cartdetailmapper.update(cartDetail);
			if (sum == 0) {
				result = "移除失败";
				return result;
			}
			cartmapper.updatetotalPriceBycartID(customer.getCart().getCartID(),
					customer.getCart().getTotalPrice() + totalPrice);
			for (CartDetail detail : customer.getCart().getCartDetailList()) {
				if (detail.getGood().getGoodsID() == cartDetail.getGood().getGoodsID()
						&& detail.getGood().getGoodsSpecify().equals(cartDetail.getGood().getGoodsSpecify())) {
					detail.setGoodsCount(cartDetail.getGoodsCount());
					detail.setTotalPrice(cartDetail.getTotalPrice());
					break;
				}
			}
			customer.getCart().setTotalPrice(customer.getCart().getTotalPrice() + totalPrice);
		} else {
			int sum = cartdetailmapper.delete(cartDetail);
			if (sum == 0) {
				result = "移除失败";
				return result;
			}
			cartmapper.updatetotalPriceBycartID(customer.getCart().getCartID(),
					customer.getCart().getTotalPrice() + totalPrice);
			for (CartDetail detail : customer.getCart().getCartDetailList()) {
				if (detail.getGood().getGoodsID() == cartDetail.getGood().getGoodsID()
						&& detail.getGood().getGoodsSpecify().equals(cartDetail.getGood().getGoodsSpecify())) {
					customer.getCart().getCartDetailList().remove(detail);
					break;
				}
			}
			customer.getCart().setTotalPrice(customer.getCart().getTotalPrice() + totalPrice);
		}
		return result;
	}
}
