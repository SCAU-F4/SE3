package Mapper;

import pojo.OrderDetail;

public interface OrderDetailDao {
	OrderDetail findById(int orderID,int goodsID);

	int insert(OrderDetail orderdetail);

	int update(OrderDetail orderdetail);

	int delete(OrderDetail orderdetail);
}
