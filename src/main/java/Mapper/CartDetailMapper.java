package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.CartDetail;

@Repository
public interface CartDetailMapper {
	CartDetail findBycartIDAndgoodsIDAndgoodsSpecify(@Param("cartID") int cartID, @Param("goodsID") int goodsID,
			@Param("goodsSpecify") String goodsSpecify);

	int isCartDetailExist(CartDetail cartDetail);

	List<CartDetail> getAllDetailbycartID(@Param("cartID") int cartID);

	int insert(CartDetail cartDetail);

	int update(CartDetail cartDetail);

	int delete(CartDetail cartDetail);

}
