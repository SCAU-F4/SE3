package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.OrderDetail;

public interface OrderDetailDao {
	OrderDetail findById(int orderID,int goodsID);

	
	int insert(OrderDetail orderdetail);
     
	
	int update(OrderDetail orderdetail);

	
	int delete(OrderDetail orderdetail);
}
