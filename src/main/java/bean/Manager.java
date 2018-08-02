package bean;

import java.io.Serializable;

public class Manager implements Serializable{
	private int managerID;
	private String managerName;
	private String managerPwd;

	public Manager() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Manager(int managerId, String managerName, String managerPwd) {
		super();
		this.managerID = managerId;
		this.managerName = managerName;
		this.managerPwd = managerPwd;
	}

	public int getManagerId() {
		return managerID;
	}

	public void setManagerId(int managerId) {
		this.managerID = managerId;
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

	@Override
	public String toString() {
		return "Manager [managerID=" + managerID + ", managerName=" + managerName + ", managerPwd=" + managerPwd + "]";
	}

}
