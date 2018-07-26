package bean;

import java.io.Serializable;
import java.util.List;

public class GoodsType implements Serializable {
	public int goodsTypeID;
	public String goodsMainType;
	public String goodsDetailType;
	public List<Goods> goodsList;

	public GoodsType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GoodsType(int goodsTypeID, String goodsMainType, String goodsDetailType, List<Goods> goodsList) {
		super();
		this.goodsTypeID = goodsTypeID;
		this.goodsMainType = goodsMainType;
		this.goodsDetailType = goodsDetailType;
		this.goodsList = goodsList;
	}

	public int getGoodsTypeID() {
		return goodsTypeID;
	}

	public void setGoodsTypeID(int goodsTypeID) {
		this.goodsTypeID = goodsTypeID;
	}

	public String getGoodsMainType() {
		return goodsMainType;
	}

	public void setGoodsMainType(String goodsMainType) {
		this.goodsMainType = goodsMainType;
	}

	public String getGoodsDetailType() {
		return goodsDetailType;
	}

	public void setGoodsDetailType(String goodsDetailType) {
		this.goodsDetailType = goodsDetailType;
	}

	public List<Goods> getGoodsList() {
		return goodsList;
	}

	public void setGoodsList(List<Goods> goodsList) {
		this.goodsList = goodsList;
	}

	@Override
	public String toString() {
		return "GoodsType [goodsTypeID=" + goodsTypeID + ", goodsMainType=" + goodsMainType + ", goodsDetailType="
				+ goodsDetailType + ", goodsList=" + goodsList + "]";
	}

}
