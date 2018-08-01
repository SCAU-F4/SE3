package bean;

import java.io.Serializable;
import java.util.List;

public class GoodsMainType implements Serializable {
	public int goodsMainTypeID;
	public String goodsMainType;
	public List<GoodsSecondaryType> goodsSecondaryTypeList;

	public GoodsMainType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GoodsMainType(int goodsMainTypeID, String goodsMainType, List<GoodsSecondaryType> goodsSecondaryTypeList) {
		super();
		this.goodsMainTypeID = goodsMainTypeID;
		this.goodsMainType = goodsMainType;
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

	@Override
	public String toString() {
		return "GoodsMainType [goodsMainTypeID=" + goodsMainTypeID + ", goodsMainType=" + goodsMainType
				+ ", goodsSecondaryTypeList=" + goodsSecondaryTypeList + "]";
	}

}
