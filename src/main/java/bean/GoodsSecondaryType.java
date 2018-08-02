package bean;

import java.util.List;

public class GoodsSecondaryType {
	private int goodsSecondaryTypeID;
	private int goodsMainTypeID;
	private String goodsSecondaryType;
	private String goodsSecondaryTypeExplain;
	private int pictureID;
	private List<Goods> goodsList;
	private Picture picture;

	public GoodsSecondaryType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GoodsSecondaryType(int goodsSecondaryTypeID, int goodsMainTypeID, String goodsSecondaryType,
			String goodsSecondaryTypeExplain, int pictureID, List<Goods> goodsList, Picture picture) {
		super();
		this.goodsSecondaryTypeID = goodsSecondaryTypeID;
		this.goodsMainTypeID = goodsMainTypeID;
		this.goodsSecondaryType = goodsSecondaryType;
		this.goodsSecondaryTypeExplain = goodsSecondaryTypeExplain;
		this.pictureID = pictureID;
		this.goodsList = goodsList;
		this.picture = picture;
	}

	public int getGoodsSecondaryTypeID() {
		return goodsSecondaryTypeID;
	}

	public void setGoodsSecondaryTypeID(int goodsSecondaryTypeID) {
		this.goodsSecondaryTypeID = goodsSecondaryTypeID;
	}

	public int getGoodsMainTypeID() {
		return goodsMainTypeID;
	}

	public void setGoodsMainTypeID(int goodsMainTypeID) {
		this.goodsMainTypeID = goodsMainTypeID;
	}

	public String getGoodsSecondaryType() {
		return goodsSecondaryType;
	}

	public void setGoodsSecondaryType(String goodsSecondaryType) {
		this.goodsSecondaryType = goodsSecondaryType;
	}

	public String getGoodsSecondaryTypeExplain() {
		return goodsSecondaryTypeExplain;
	}

	public void setGoodsSecondaryTypeExplain(String goodsSecondaryTypeExplain) {
		this.goodsSecondaryTypeExplain = goodsSecondaryTypeExplain;
	}

	public int getPictureID() {
		return pictureID;
	}

	public void setPictureID(int pictureID) {
		this.pictureID = pictureID;
	}

	public List<Goods> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "GoodsSecondaryType [goodsSecondaryTypeID=" + goodsSecondaryTypeID + ", goodsMainTypeID="
				+ goodsMainTypeID + ", goodsSecondaryType=" + goodsSecondaryType + ", goodsSecondaryTypeExplain="
				+ goodsSecondaryTypeExplain + ", pictureID=" + pictureID + ", goodsList=" + goodsList + ", picture="
				+ picture + "]";
	}

}
