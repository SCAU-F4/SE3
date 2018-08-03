package bean;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

public class Goods implements Serializable {
	private int goodsID;
	private String goodsName;
	private int goodsMainTypeID;
	private String goodsSpecify;
	private String goodsBrief;
	private double goodsPrice;
	private int goodsCount;
	private int sellCount;
	private Timestamp goodsDate;
	private int isSell;
	private int goodsSecondaryTypeID;
	private List<Picture> pictureList;
	private List<Evaluate> evaluateList;
	public Goods() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Goods(int goodsID, String goodsName, int goodsMainTypeID, String goodsSpecify, String goodsBrief,
			double goodsPrice, int goodsCount, int sellCount, Timestamp goodsDate, int isSell, int goodsSecondaryTypeID,
			List<Picture> pictureList, List<Evaluate> evaluateList) {
		super();
		this.goodsID = goodsID;
		this.goodsName = goodsName;
		this.goodsMainTypeID = goodsMainTypeID;
		this.goodsSpecify = goodsSpecify;
		this.goodsBrief = goodsBrief;
		this.goodsPrice = goodsPrice;
		this.goodsCount = goodsCount;
		this.sellCount = sellCount;
		this.goodsDate = goodsDate;
		this.isSell = isSell;
		this.goodsSecondaryTypeID = goodsSecondaryTypeID;
		this.pictureList = pictureList;
		this.evaluateList = evaluateList;
	}
	public int getGoodsID() {
		return goodsID;
	}
	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public int getGoodsMainTypeID() {
		return goodsMainTypeID;
	}
	public void setGoodsMainTypeID(int goodsMainTypeID) {
		this.goodsMainTypeID = goodsMainTypeID;
	}
	public String getGoodsSpecify() {
		return goodsSpecify;
	}
	public void setGoodsSpecify(String goodsSpecify) {
		this.goodsSpecify = goodsSpecify;
	}
	public String getGoodsBrief() {
		return goodsBrief;
	}
	public void setGoodsBrief(String goodsBrief) {
		this.goodsBrief = goodsBrief;
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
	public int getSellCount() {
		return sellCount;
	}
	public void setSellCount(int sellCount) {
		this.sellCount = sellCount;
	}
	public Timestamp getGoodsDate() {
		return goodsDate;
	}
	public void setGoodsDate(Timestamp goodsDate) {
		this.goodsDate = goodsDate;
	}
	public int getIsSell() {
		return isSell;
	}
	public void setIsSell(int isSell) {
		this.isSell = isSell;
	}
	public int getGoodsSecondaryTypeID() {
		return goodsSecondaryTypeID;
	}
	public void setGoodsSecondaryTypeID(int goodsSecondaryTypeID) {
		this.goodsSecondaryTypeID = goodsSecondaryTypeID;
	}
	public List<Picture> getPictureList() {
		return pictureList;
	}
	public void setPictureList(List<Picture> pictureList) {
		this.pictureList = pictureList;
	}
	public List<Evaluate> getEvaluateList() {
		return evaluateList;
	}
	public void setEvaluateList(List<Evaluate> evaluateList) {
		this.evaluateList = evaluateList;
	}
	@Override
	public String toString() {
		return "Goods [goodsID=" + goodsID + ", goodsName=" + goodsName + ", goodsMainTypeID=" + goodsMainTypeID
				+ ", goodsSpecify=" + goodsSpecify + ", goodsBrief=" + goodsBrief + ", goodsPrice=" + goodsPrice
				+ ", goodsCount=" + goodsCount + ", sellCount=" + sellCount + ", goodsDate=" + goodsDate + ", isSell="
				+ isSell + ", goodsSecondaryTypeID=" + goodsSecondaryTypeID + ", pictureList=" + pictureList
				+ ", evaluateList=" + evaluateList + "]";
	}
	
	



}
