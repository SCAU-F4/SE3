package bean;

import java.io.Serializable;
import java.util.List;

public class Cart implements Serializable{
	private int cartID;
	private int customerID;
	private double totalPrice;
	private List<CartDetail> cartDetailList;

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(int cartID, int customerID, double totalPrice, List<CartDetail> cartDetailList) {
		super();
		this.cartID = cartID;
		this.customerID = customerID;
		this.totalPrice = totalPrice;
		this.cartDetailList = cartDetailList;
	}

	public int getCartID() {
		return cartID;
	}

	public void setCartID(int cartID) {
		this.cartID = cartID;
	}

	public int getCustomerID() {
		return customerID;
	}

	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	public List<CartDetail> getCartDetailList() {
		return cartDetailList;
	}

	public void setCartDetailList(List<CartDetail> cartDetailList) {
		this.cartDetailList = cartDetailList;
	}

	@Override
	public String toString() {
		return "Cart [cartID=" + cartID + ", customerID=" + customerID + ", totalPrice=" + totalPrice
				+ ", cartDetailList=" + cartDetailList + "]";
	}

}
