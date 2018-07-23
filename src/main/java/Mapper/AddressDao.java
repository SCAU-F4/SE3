package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.Address;

public interface AddressDao {
	Address findById(int customerID, int addressID);

	
	int insert(Address address);

	
	int update(Address address);

	
	int delete(Address address);
}
