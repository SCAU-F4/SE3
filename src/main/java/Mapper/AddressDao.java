package Mapper;

import pojo.Address;

public interface AddressDao {
	Address findById(int customerID,int addressID);

	int insert(Address address);

	int update(Address address);

	int delete(Address address);
}
