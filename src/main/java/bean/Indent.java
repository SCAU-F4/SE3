package bean;

import java.sql.Date;
import java.sql.Timestamp;

public class Indent {
	public int orderID;
	public int customerID;
	public double totalPrice;
	public Timestamp orderTime;
	public int addressID;
	public int expressCode;

	public Indent() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Indent(int orderID, int customerID, double totalPrice, Timestamp orderTime, int addressID, int expressCode) {
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

	public Timestamp getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(Timestamp orderTime) {
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
		return "Indent [orderID=" + orderID + ", customerID=" + customerID + ", totalPrice=" + totalPrice
				+ ", orderTime=" + orderTime + ", addressID=" + addressID + ", expressCode=" + expressCode + "]";
	}

}
