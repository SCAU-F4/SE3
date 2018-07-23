package bean;

import java.sql.Date;
import java.sql.Timestamp;

public class Evaluate {
	public int evaluateID;
	public int customerID;
	public int goodsID;
	public Timestamp evaluateDate;
	public int evaluateGrade;
	public String evaluateContent;
	public int evaluatePictureID;

	public Evaluate() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Evaluate(int evaluateID, int customerID, int goodsID, Timestamp evaluateDate, int evaluateGrade,
			String evaluateContent, int evaluatePictureID) {
		super();
		this.evaluateID = evaluateID;
		this.customerID = customerID;
		this.goodsID = goodsID;
		this.evaluateDate = evaluateDate;
		this.evaluateGrade = evaluateGrade;
		this.evaluateContent = evaluateContent;
		this.evaluatePictureID = evaluatePictureID;
	}

	public int getEvaluateID() {
		return evaluateID;
	}

	public void setEvaluateID(int evaluateID) {
		this.evaluateID = evaluateID;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public int getGoodsID() {
		return goodsID;
	}

	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}

	public Timestamp getEvaluateDate() {
		return evaluateDate;
	}

	public void setEvaluateDate(Timestamp evaluateDate) {
		this.evaluateDate = evaluateDate;
	}

	public int getEvaluateGrade() {
		return evaluateGrade;
	}

	public void setEvaluateGrade(int evaluateGrade) {
		this.evaluateGrade = evaluateGrade;
	}

	public String getEvaluateContent() {
		return evaluateContent;
	}

	public void setEvaluateContent(String evaluateContent) {
		this.evaluateContent = evaluateContent;
	}

	public int getEvaluatePictureID() {
		return evaluatePictureID;
	}

	public void setEvaluatePictureID(int evaluatePictureID) {
		this.evaluatePictureID = evaluatePictureID;
	}

	@Override
	public String toString() {
		return "Evaluate [evaluateID=" + evaluateID + ", customerID=" + customerID + ", goodsID=" + goodsID
				+ ", evaluateDate=" + evaluateDate + ", evaluateGrade=" + evaluateGrade + ", evaluateContent="
				+ evaluateContent + ", evaluatePictureID=" + evaluatePictureID + "]";
	}

}
