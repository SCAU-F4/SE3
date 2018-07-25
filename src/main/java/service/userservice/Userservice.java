package service.userservice;

import bean.Customer;

public interface Userservice {
    public boolean signincheck();
    public String signup(Customer customer,String repassword);
}
