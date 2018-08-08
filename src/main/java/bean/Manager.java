package bean;

import java.io.Serializable;

public class Manager implements Serializable{
	private int managerID;
	private String managerName;
	private String managerPwd;

	private static final long serialVersionUID = 1L;

	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Manager(int managerID, String managerName, String managerPwd) {
		super();
		this.managerID = managerID;
		this.managerName = managerName;
		this.managerPwd = managerPwd;
	}

	public int getManagerID() {
		return managerID;
	}

	public void setManagerID(int managerID) {
		this.managerID = managerID;
	}

	public String getManagerName() {
		return managerName;
	}

	public void setManagerName(String managerName) {
		this.managerName = managerName;
	}

	public String getManagerPwd() {
		return managerPwd;
	}

	public void setManagerPwd(String managerPwd) {
		this.managerPwd = managerPwd;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Manager [managerID=" + managerID + ", managerName=" + managerName + ", managerPwd=" + managerPwd + "]";
	}

	
}
