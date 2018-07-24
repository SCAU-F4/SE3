package bean;

public class IndentDetail {
	public int indentID;
	public int goodsID;
	public double goodsPrice;
	public int goodsCount;
	public double totalPrice;

	public IndentDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public IndentDetail(int indentID, int goodsID, double goodsPrice, int goodsCount, double totalPrice) {
		super();
		this.indentID = indentID;
		this.goodsID = goodsID;
		this.goodsPrice = goodsPrice;
		this.goodsCount = goodsCount;
		this.totalPrice = totalPrice;
	}

	public int getIndentID() {
		return indentID;
	}

	public void setIndentID(int indentID) {
		this.indentID = indentID;
	}

	public int getGoodsID() {
		return goodsID;
	}

	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}

	public double getGoodsPrice() {
		return goodsPrice;
	}

	public void setGoodsPrice(double goodsPrice) {
		this.goodsPrice = goodsPrice;
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
		return "IndentDetail [indentID=" + indentID + ", goodsID=" + goodsID + ", goodsPrice=" + goodsPrice
				+ ", goodsCount=" + goodsCount + ", totalPrice=" + totalPrice + "]";
	}

}
