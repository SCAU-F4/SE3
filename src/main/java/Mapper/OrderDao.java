package Mapper;

import pojo.Order;

public interface OrderDao {
	Order findById(int orderID);

	int insert(Order order);

	int update(Order order);

	int delete(Order order);
}
