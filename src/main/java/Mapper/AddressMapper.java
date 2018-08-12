package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Address;

@Repository
public interface AddressMapper {
	Address findBycustomerIDAndaddressID(@Param("customerID") int customerID, @Param("addressID") int addressID);

	List<Address> findAddressByCustomoerID(@Param("customerID") int customerID);

	int insert(Address address);

	int update(Address address);

	int delete(Address address);

	int deleteBycustomerIDAndaddressID(@Param("customerID") int customerID, @Param("addressID") int addressID);

	int deleteBycustomerID(@Param("customerID") int customerID);
}
