package service.userservice;

import java.util.HashMap;
import java.util.List;

import bean.Address;
import bean.Customer;

public interface Userservice {
    public Customer signincheck(Customer customer);
    public String signup(Customer customer,String repassword);
    public List<HashMap<String,String>> getAllIndent(int customerID);
    public List<Address> getAllAddress(int customerID);
    public String changeName(int customerID,String customerName);
    public String changePassword(int customerID,String oldPassword,String newPassword,String rePassword);
    public String addressService(int customerID,int addressID,String addressDetail,String addressPostcode,String addressPhone,String addressName);
}
