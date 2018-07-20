package pojo;

public class Express {
	public int expressCode;
	public String expressDate;
	public String expressState;

	public Express() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Express(int expressCode, String expressDate, String expressState) {
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

	public String getExpressDate() {
		return expressDate;
	}

	public void setExpressDate(String expressDate) {
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
