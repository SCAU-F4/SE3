package bean;

import java.io.Serializable;

public class IndentDetail implements Serializable {
	private int indentID;
	private Goods good;
	private int goodsCount;
	private double totalPrice;

	private static final long serialVersionUID = 1L;

	public IndentDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public IndentDetail(int indentID, Goods good, int goodsCount, double totalPrice) {
		super();
		this.indentID = indentID;
		this.good = good;
		this.goodsCount = goodsCount;
		this.totalPrice = totalPrice;
	}

	public int getIndentID() {
		return indentID;
	}

	public void setIndentID(int indentID) {
		this.indentID = indentID;
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
		return "IndentDetail [indentID=" + indentID + ", good=" + good + ", goodsCount=" + goodsCount + ", totalPrice="
				+ totalPrice + "]";
	}

}
