package bean;

import java.io.Serializable;

public class IndentDetail implements Serializable {
	private int indentID;
	private Goods good;
	private int goodsCount;
	private double totalPrice;
	private int evaluated;

	private static final long serialVersionUID = 1L;

	public IndentDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public IndentDetail(int indentID, Goods good, int goodsCount, double totalPrice, int evaluated) {
		super();
		this.indentID = indentID;
		this.good = good;
		this.goodsCount = goodsCount;
		this.totalPrice = totalPrice;
		this.evaluated = evaluated;
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

	public int getEvaluated() {
		return evaluated;
	}

	public void setEvaluated(int evaluated) {
		this.evaluated = evaluated;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "IndentDetail [indentID=" + indentID + ", good=" + good + ", goodsCount=" + goodsCount + ", totalPrice="
				+ totalPrice + ", evaluated=" + evaluated + "]";
	}

	
}
