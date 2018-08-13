package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Customer;
import bean.CustomerAndPrice;

@Repository
public interface CustomerMapper {

	Customer findBycustomerID(int customerID);

	Customer findBycustomerNameAndcustomerPwd(@Param("customerName") String customerName,
			@Param("customerPwd") String customerPwd);

	List<CustomerAndPrice> getHighestCustomer();

	int IsCustomerNameExist(String customerName);// 找到返回一个用户的ID,找不到抛出异常

	int insert(Customer customer);

	int update(Customer customer);

	int updatecustomerNameBycustomerID(@Param("customerID") int customerID, @Param("customerName") String customerName);

	int updatecustomerPasswordBycustomerID(@Param("customerID") int customerID,
			@Param("customerPassword") String customerPassword);

	int delete(Customer customer);

	List<Customer> getAllCustomer();
}
