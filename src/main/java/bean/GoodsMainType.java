package bean;

import java.io.Serializable;
import java.util.List;

public class GoodsMainType implements Serializable {
	private int goodsMainTypeID;
	private String goodsMainType;
	private int pictureID;
	private Picture picture;
	private List<Goods> goodsList;
	private List<GoodsSecondaryType> goodsSecondaryTypeList;

	private static final long serialVersionUID = 1L;

	public GoodsMainType() {

	}

	public GoodsMainType(int goodsMainTypeID, String goodsMainType, int pictureID, Picture picture,
			List<Goods> goodsList, List<GoodsSecondaryType> goodsSecondaryTypeList) {
		super();
		this.goodsMainTypeID = goodsMainTypeID;
		this.goodsMainType = goodsMainType;
		this.pictureID = pictureID;
		this.picture = picture;
		this.goodsList = goodsList;
		this.goodsSecondaryTypeList = goodsSecondaryTypeList;
	}

	public List<Goods> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

	public int getGoodsMainTypeID() {
		return goodsMainTypeID;
	}

	public void setGoodsMainTypeID(int goodsMainTypeID) {
		this.goodsMainTypeID = goodsMainTypeID;
	}

	public String getGoodsMainType() {
		return goodsMainType;
	}

	public void setGoodsMainType(String goodsMainType) {
		this.goodsMainType = goodsMainType;
	}

	public List<GoodsSecondaryType> getGoodsSecondaryTypeList() {
		return goodsSecondaryTypeList;
	}

	public void setGoodsSecondaryTypeList(List<GoodsSecondaryType> goodsSecondaryTypeList) {
		this.goodsSecondaryTypeList = goodsSecondaryTypeList;
	}

	public int getPictureID() {
		return pictureID;
	}

	public void setPictureID(int pictureID) {
		this.pictureID = pictureID;
	}

	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "GoodsMainType [goodsMainTypeID=" + goodsMainTypeID + ", goodsMainType=" + goodsMainType
				+ ", goodsSecondaryTypeList=" + goodsSecondaryTypeList + "]";
	}

}
