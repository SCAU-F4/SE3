package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.Customer;

public interface CustomerDao {

	Customer findById(int customerID);

	
	int insert(Customer customer);

	
	int update(Customer customer);

	
	int delete(Customer customer);
}
