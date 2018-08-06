package bean;

import java.io.Serializable;

public class EvaluatePicture implements Serializable {
	private int evaluateID;
	private Picture picture;

	private static final long serialVersionUID = 1L;

	public EvaluatePicture() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EvaluatePicture(int evaluateID, Picture picture) {
		super();
		this.evaluateID = evaluateID;
		this.picture = picture;
	}

	public int getEvaluateID() {
		return evaluateID;
	}

	public void setEvaluateID(int evaluateID) {
		this.evaluateID = evaluateID;
	}

	public Picture getPicture() {
		return picture;
	}

	public void setPicture(Picture picture) {
		this.picture = picture;
	}

	@Override
	public String toString() {
		return "EvaluatePicture [evaluateID=" + evaluateID + ", picture=" + picture + "]";
	}

}
