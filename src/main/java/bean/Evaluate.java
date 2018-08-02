package bean;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

public class Evaluate implements Serializable {
	private int evaluateID;
	private int goodsID;
	private Timestamp evaluateDate;
	private int evaluateGrade;
	private String evaluateContent;
	private Customer customer;
	private List<EvaluatePicture> evaluatePictureList;

	public Evaluate() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Evaluate(int evaluateID, int goodsID, Timestamp evaluateDate, int evaluateGrade, String evaluateContent,
			Customer customer, List<EvaluatePicture> evaluatePictureList) {
		super();
		this.evaluateID = evaluateID;
		this.goodsID = goodsID;
		this.evaluateDate = evaluateDate;
		this.evaluateGrade = evaluateGrade;
		this.evaluateContent = evaluateContent;
		this.customer = customer;
		this.evaluatePictureList = evaluatePictureList;
	}

	public int getEvaluateID() {
		return evaluateID;
	}

	public void setEvaluateID(int evaluateID) {
		this.evaluateID = evaluateID;
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

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<EvaluatePicture> getEvaluatePictureList() {
		return evaluatePictureList;
	}

	public void setEvaluatePictureList(List<EvaluatePicture> evaluatePictureList) {
		this.evaluatePictureList = evaluatePictureList;
	}

	@Override
	public String toString() {
		return "Evaluate [evaluateID=" + evaluateID + ", goodsID=" + goodsID + ", evaluateDate=" + evaluateDate
				+ ", evaluateGrade=" + evaluateGrade + ", evaluateContent=" + evaluateContent + ", customer=" + customer
				+ ", evaluatePictureList=" + evaluatePictureList + "]";
	}

}
