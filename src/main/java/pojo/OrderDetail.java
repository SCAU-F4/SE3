package pojo;

public class OrderDetail {
	public int orderID;
	public int goodsID;
	public double goodsPrice;
	public int goodsCount;
	public double totalPrice;

	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	public OrderDetail(int orderID, int goodsID, double goodsPrice, int goodsCount, double totalPrice) {
		super();
		this.orderID = orderID;
		this.goodsID = goodsID;
		this.goodsPrice = goodsPrice;
		this.goodsCount = goodsCount;
		this.totalPrice = totalPrice;
	}

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
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
		return "OrderDetail [orderID=" + orderID + ", goodsID=" + goodsID + ", goodsPrice=" + goodsPrice
				+ ", goodsCount=" + goodsCount + ", totalPrice=" + totalPrice + "]";
	}

}
