package bean;

import java.io.Serializable;
import java.util.List;

public class GoodsMainType implements Serializable {
	public int goodsMainTypeID;
	public String goodsMainType;
	public int pictureID;
	public Picture picture;
	public List<GoodsSecondaryType> goodsSecondaryTypeList;
	
	public GoodsMainType(){
		
	}

	public GoodsMainType(int goodsMainTypeID, String goodsMainType, int pictureID, Picture picture,
			List<GoodsSecondaryType> goodsSecondaryTypeList) {
		this.goodsMainTypeID = goodsMainTypeID;
		this.goodsMainType = goodsMainType;
		this.pictureID = pictureID;
		this.picture = picture;
		this.goodsSecondaryTypeList = goodsSecondaryTypeList;
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
