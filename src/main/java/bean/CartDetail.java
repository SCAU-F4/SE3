package bean;

import java.io.Serializable;

public class CartDetail implements Serializable {
	private int cartID;
	private int goodsID;
	private String goodsSpecify;
	private int goodsCount;
	private double totalPrice;

	public CartDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartDetail(int cartID, int goodsID, String goodsSpecify, int goodsCount, double totalPrice) {
		super();
		this.cartID = cartID;
		this.goodsID = goodsID;
		this.goodsSpecify = goodsSpecify;
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

	public String getGoodsSpecify() {
		return goodsSpecify;
	}

	public void setGoodsSpecify(String goodsSpecify) {
		this.goodsSpecify = goodsSpecify;
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
		return "CartDetail [cartID=" + cartID + ", goodsID=" + goodsID + ", goodsSpecify=" + goodsSpecify
				+ ", goodsCount=" + goodsCount + ", totalPrice=" + totalPrice + "]";
	}

}
