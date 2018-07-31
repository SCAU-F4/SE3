package bean;

import java.io.Serializable;

public class CartDetail implements Serializable{
	public int cartID;
	public int goodsID;
	public int goodsCount;
	public double totalPrice;

	public CartDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartDetail(int cartID, int goodsID, int goodsCount, double totalPrice) {
		super();
		this.cartID = cartID;
		this.goodsID = goodsID;
		this.goodsCount = goodsCount;
		this.totalPrice = totalPrice;
	}

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

	public int getGoodsID() {
		return goodsID;
	}

	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}

	public int getGoodsCount() {
		return goodsCount;
	}

	public void setGoodsCount(int goodsCount) {
		this.goodsCount = goodsCount;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return "CartDetail [cartID=" + cartID + ", goodsID=" + goodsID + ", goodsCount=" + goodsCount + ", totalPrice="
				+ totalPrice + "]";
	}

}
