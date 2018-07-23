package Mapper;

import pojo.Customer;

public interface CustomerDao {
	
	Customer findById(int customerID);

	int insert(Customer customer);

	int update(Customer customer);

	int delete(Customer customer);
}
