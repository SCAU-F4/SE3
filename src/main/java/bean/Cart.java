package bean;

import java.io.Serializable;
import java.util.List;

public class Cart implements Serializable{
	public int cartID;
	public int customerID;
	public double totalPrice;
	public List<CartDetail> CartDetailList;

	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Cart(int cartID, int customerID, double totalPrice, List<CartDetail> cartDetailList) {
		super();
		this.cartID = cartID;
		this.customerID = customerID;
		this.totalPrice = totalPrice;
		CartDetailList = cartDetailList;
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
		return CartDetailList;
	}

	public void setCartDetailList(List<CartDetail> cartDetailList) {
		CartDetailList = cartDetailList;
	}

	@Override
	public String toString() {
		return "Cart [cartID=" + cartID + ", customerID=" + customerID + ", totalPrice=" + totalPrice
				+ ", CartDetailList=" + CartDetailList + "]";
	}

}
