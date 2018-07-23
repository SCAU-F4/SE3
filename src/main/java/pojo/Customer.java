package pojo;

import java.sql.Date;
import java.sql.Timestamp;

public class Customer {
	public int customerID;
	public String customerName;
	public String customerPwd;
	public String customerPhone;
	public String customerEmail;
	public Timestamp customerRegDate;

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer(int customerID, String customerName, String customerPwd, String customerPhone, String customerEmail,
			Timestamp customerRegDate) {
		super();
		this.customerID = customerID;
		this.customerName = customerName;
		this.customerPwd = customerPwd;
		this.customerPhone = customerPhone;
		this.customerEmail = customerEmail;
		this.customerRegDate = customerRegDate;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getCustomerPwd() {
		return customerPwd;
	}

	public void setCustomerPwd(String customerPwd) {
		this.customerPwd = customerPwd;
	}

	public String getCustomerPhone() {
		return customerPhone;
	}

	public void setCustomerPhone(String customerPhone) {
		this.customerPhone = customerPhone;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public Timestamp getCustomerRegDate() {
		return customerRegDate;
	}

	public void setCustomerRegDate(Timestamp customerRegDate) {
		this.customerRegDate = customerRegDate;
	}

	@Override
	public String toString() {
		return "Customer [customerID=" + customerID + ", customerName=" + customerName + ", customerPwd=" + customerPwd
				+ ", customerPhone=" + customerPhone + ", customerEmail=" + customerEmail + ", customerRegDate="
				+ customerRegDate + "]";
	}

}
