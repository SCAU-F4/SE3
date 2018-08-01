package bean;

import java.io.Serializable;
import java.sql.Timestamp;

public class Express implements Serializable{
	private int expressCode;
	private Timestamp expressDate;
	private String expressState;

	public Express() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Express(int expressCode, Timestamp expressDate, String expressState) {
		super();
		this.expressCode = expressCode;
		this.expressDate = expressDate;
		this.expressState = expressState;
	}

	public int getExpressCode() {
		return expressCode;
	}

	public void setExpressCode(int expressCode) {
		this.expressCode = expressCode;
	}

	public Timestamp getExpressDate() {
		return expressDate;
	}

	public void setExpressDate(Timestamp expressDate) {
		this.expressDate = expressDate;
	}

	public String getExpressState() {
		return expressState;
	}

	public void setExpressState(String expressState) {
		this.expressState = expressState;
	}

	@Override
	public String toString() {
		return "Express [expressCode=" + expressCode + ", expressDate=" + expressDate + ", expressState=" + expressState
				+ "]";
	}

}
