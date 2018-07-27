package bean;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

public class Indent implements Serializable {
	public int indentID;
	public int customerID;
	public double totalPrice;
	public Timestamp indentTime;
	public int addressID;
	public int expressCode;
	public int indentState;
	public List<IndentDetail> indentDetaillist;// 订单商品表
	public Express express;// 订单

	public Indent() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Indent(int indentID, int customerID, double totalPrice, Timestamp orderTime, int addressID, int expressCode,
			int indentState, List<IndentDetail> indentDetaillist, Express express) {
		super();
		this.indentID = indentID;
		this.customerID = customerID;
		this.totalPrice = totalPrice;
		this.indentTime = indentTime;
		this.addressID = addressID;
		this.expressCode = expressCode;
		this.indentState = indentState;
		this.indentDetaillist = indentDetaillist;
		this.express = express;
	}

	public int getIndentID() {
		return indentID;
	}

	public void setIndentID(int indentID) {
		this.indentID = indentID;
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
		return indentTime;
	}

	public void setOrderTime(Timestamp orderTime) {
		this.indentTime = indentTime;
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

	public int getIndentState() {
		return indentState;
	}

	public void setIndentState(int indentState) {
		this.indentState = indentState;
	}

	public List<IndentDetail> getIndentDetaillist() {
		return indentDetaillist;
	}

	public void setIndentDetaillist(List<IndentDetail> indentDetaillist) {
		this.indentDetaillist = indentDetaillist;
	}

	public Express getExpress() {
		return express;
	}

	public void setExpress(Express express) {
		this.express = express;
	}

	@Override
	public String toString() {
		return "Indent [indentID=" + indentID + ", customerID=" + customerID + ", totalPrice=" + totalPrice
				+ ", orderTime=" + indentTime + ", addressID=" + addressID + ", expressCode=" + expressCode
				+ ", indentState=" + indentState + ", indentDetaillist=" + indentDetaillist + ", express=" + express
				+ "]";
	}

}
