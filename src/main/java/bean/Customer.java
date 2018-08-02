package bean;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

public class Customer implements Serializable {
	private int customerID;
	private String customerName;
	private String customerPwd;
	private String customerPhone;
	private String customerEmail;
	private Timestamp customerRegDate;
	private List<Address> addressList;
	private Cart cart;// 购物车

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer(int customerID, String customerName, String customerPwd, String customerPhone, String customerEmail,
			Timestamp customerRegDate, List<Address> addressList, Cart cart) {
		super();
		this.customerID = customerID;
		this.customerName = customerName;
		this.customerPwd = customerPwd;
		this.customerPhone = customerPhone;
		this.customerEmail = customerEmail;
		this.customerRegDate = customerRegDate;
		this.addressList = addressList;
		this.cart = cart;
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

	public List<Address> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	@Override
	public String toString() {
		return "Customer [customerID=" + customerID + ", customerName=" + customerName + ", customerPwd=" + customerPwd
				+ ", customerPhone=" + customerPhone + ", customerEmail=" + customerEmail + ", customerRegDate="
				+ customerRegDate + ", addressList=" + addressList + ", cart=" + cart + "]";
	}

}
