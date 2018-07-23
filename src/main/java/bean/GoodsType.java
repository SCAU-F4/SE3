package pojo;

public class GoodsType {
	public int goodsTypeID;
	public String goodsMainType;
	public String goodsDetailType;

	public GoodsType() {
		super();
		// TODO Auto-generated constructor stub
	}

	public GoodsType(int goodsTypeID, String goodsMainType, String goodsDetailType) {
		super();
		this.goodsTypeID = goodsTypeID;
		this.goodsMainType = goodsMainType;
		this.goodsDetailType = goodsDetailType;
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

	@Override
	public String toString() {
		return "GoodsType [goodsTypeID=" + goodsTypeID + ", goodsMainType=" + goodsMainType + ", goodsDetailType="
				+ goodsDetailType + "]";
	}

}
