package Mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Cart;

@Repository
public interface CartMapper {
	Cart findByCartID(@Param("cartID") int cartID);

	Cart findBycustomerID(@Param("customerID") int customerID);

	double findtotalPriceByCartID(@Param("cartID") int cartID);

	int insert(Cart cart);

	int update(Cart cart);

	int updatetotalPriceBycartID(@Param("cartID") int cartID, @Param("totalPrice") double totalPrice);

	int delete(Cart cart);

	int deleteByCustomerID(@Param("customerID") int customerID);
}
