package service.userservice;

import java.util.HashMap;
import java.util.List;

import bean.Customer;

public interface Userservice {
    public Customer signincheck(Customer customer);
    public String signup(Customer customer,String repassword);
    public List<HashMap<String,String>> getAllIndent(int customerID);
}
