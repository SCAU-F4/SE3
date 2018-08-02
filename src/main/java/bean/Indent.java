package bean;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

public class Indent implements Serializable {
	private int indentID;
	private int customerID;
	private double totalPrice;
	private Timestamp indentTime;
	private int addressID;
	private int expressCode;
	private int indentState;
	private List<IndentDetail> indentDetaillist;// 订单商品表
	private Express express;// 快递

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

	public Timestamp getIndentTime() {
		return indentTime;
	}

	public void setIndentTime(Timestamp indentTime) {
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
