package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Address;

public interface AddressMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	Address findBycustomerIDAndaddressID(@Param("customerID") int customerID,@Param("addressID") int addressID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	 List<Address> getAddressByCustomoerID(@Param("customerID")int customerID);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.SERIALIZABLE)
	int insert(Address address);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int update(Address address);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int delete(Address address);
}
