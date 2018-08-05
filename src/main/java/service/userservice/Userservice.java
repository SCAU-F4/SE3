package service.userservice;

import java.util.List;

import bean.Address;
import bean.Customer;
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
    public String auction(Customer customer);
    public String purchase(int goodsID,String goodsSpecify,int goodsCount,Customer customer);
    public boolean pay(int addressID,int indentID,Customer customer);
//    public String comment();
}
