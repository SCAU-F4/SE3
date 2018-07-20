package pojo;

import java.sql.Date;

public class Order {
	public int orderID;
	public int customerID;
	public double totalPrice;
	public Date orderTime;
	public int addressID;
	public int expressCode;

	public Order() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Order(int orderID, int customerID, double totalPrice, Date orderTime, int addressID, int expressCode) {
		super();
		this.orderID = orderID;
		this.customerID = customerID;
		this.totalPrice = totalPrice;
		this.orderTime = orderTime;
		this.addressID = addressID;
		this.expressCode = expressCode;
	}

	public int getOrderID() {
		return orderID;
	}

	public void setOrderID(int orderID) {
		this.orderID = orderID;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public Date getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Date orderTime) {
		this.orderTime = orderTime;
	}

	public int getAddressID() {
		return addressID;
	}

	public void setAddressID(int addressID) {
		this.addressID = addressID;
	}

	public int getExpressCode() {
		return expressCode;
	}

	public void setExpressCode(int expressCode) {
		this.expressCode = expressCode;
	}

	@Override
	public String toString() {
		return "Order [orderID=" + orderID + ", customerID=" + customerID + ", totalPrice=" + totalPrice
				+ ", orderTime=" + orderTime + ", addressID=" + addressID + ", expressCode=" + expressCode + "]";
	}

}
