package service.userservice;

import java.io.IOException;
import java.util.List;

import bean.Address;
import bean.Customer;
import bean.Evaluate;
import bean.Indent;

public interface Userservice {
    public Customer signincheck(Customer customer);
    public String signup(Customer customer,String repassword);
    public List<Indent> getAllIndent(int customerID);
    public String changeName(int customerID,String customerName);
    public String changePassword(int customerID,String oldPassword,String newPassword,String rePassword);
    public String addressService(Address address);
    public String deleteAddress(int customerID,int addressID);
    public String deleteIndent(int indentID);
    public Indent auction(int goodsID,String goodsSpecify,int goodsCount,Customer customer);
    public boolean pay(int addressID,Indent indent,Customer customer);
	public String comment(int indentID,int goodsID,String goodsSpecify,int indentState,Evaluate evaluate, String path) throws IllegalStateException, IOException;
    public boolean payment(int indentID);
    public Indent payfromcenter(int indentID);
}
