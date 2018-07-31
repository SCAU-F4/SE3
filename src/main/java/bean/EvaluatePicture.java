package bean;

import java.io.Serializable;

public class EvaluatePicture implements Serializable {
	public int evaluateID;
	public int pictureID;

	public EvaluatePicture() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EvaluatePicture(int evaluateID, int pictureID) {
		super();
		this.evaluateID = evaluateID;
		this.pictureID = pictureID;
	}

	public int getEvaluateID() {
		return evaluateID;
	}

	public void setEvaluateID(int evaluateID) {
		this.evaluateID = evaluateID;
	}

	public int getPictureID() {
		return pictureID;
	}

	public void setPictureID(int pictureID) {
		this.pictureID = pictureID;
	}

	@Override
	public String toString() {
		return "EvaluatePicture [evaluateID=" + evaluateID + ", pictureID=" + pictureID + "]";
	}

}
