package bean;

import java.io.Serializable;

public class CustomerAndPrice implements Serializable {
	private String customerName;
	private double finaltotalPrice;

	public CustomerAndPrice() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CustomerAndPrice(String customerName, double finaltotalPrice) {
		super();
		this.customerName = customerName;
		this.finaltotalPrice = finaltotalPrice;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public double getFinaltotalPrice() {
		return finaltotalPrice;
	}

	public void setFinaltotalPrice(double finaltotalPrice) {
		this.finaltotalPrice = finaltotalPrice;
	}

	@Override
	public String toString() {
		return "CustomerAndPrice [customerName=" + customerName + ", finaltotalPrice=" + finaltotalPrice + "]";
	}

}
