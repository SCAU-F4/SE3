package pojo;

public class Picture {
	public int goodsID;
	public int pictureID;
	public String picturePath;

	public Picture() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Picture(int goodsID, int pictureID, String picturePath) {
		super();
		this.goodsID = goodsID;
		this.pictureID = pictureID;
		this.picturePath = picturePath;
	}

	public int getGoodsID() {
		return goodsID;
	}

	public void setGoodsID(int goodsID) {
		this.goodsID = goodsID;
	}

	public int getPictureID() {
		return pictureID;
	}

	public void setPictureID(int pictureID) {
		this.pictureID = pictureID;
	}

	public String getPicturePath() {
		return picturePath;
	}

	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}

	@Override
	public String toString() {
		return "Picture [goodsID=" + goodsID + ", pictureID=" + pictureID + ", picturePath=" + picturePath + "]";
	}

}
