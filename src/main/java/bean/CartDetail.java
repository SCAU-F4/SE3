package bean;

import java.io.Serializable;

public class CartDetail implements Serializable {
	private int cartID;
	private Goods good;
	private int goodsCount;
	private double totalPrice;

	private static final long serialVersionUID = 1L;

	public CartDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CartDetail(int cartID, Goods good, int goodsCount, double totalPrice) {
		super();
		this.cartID = cartID;
		this.good = good;
		this.goodsCount = goodsCount;
		this.totalPrice = totalPrice;
	}

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

	public Goods getGood() {
		return good;
	}

	public void setGood(Goods good) {
		this.good = good;
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
		return "CartDetail [cartID=" + cartID + ", good=" + good + ", goodsCount=" + goodsCount + ", totalPrice="
				+ totalPrice + "]";
	}
}
