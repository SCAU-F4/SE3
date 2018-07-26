package service.userservice;

import bean.Customer;

public interface Userservice {
    public Customer signincheck(Customer customer);
    public String signup(Customer customer,String repassword);
//    public 
}
