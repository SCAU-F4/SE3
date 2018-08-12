package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;


import bean.IndentDetail;

public interface IndentDetailMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	IndentDetail find(@Param("indentID") int indentID,@Param("goodsID") int goodsID,@Param("goodsSpecify") String goodsSpecify);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<IndentDetail> findAllDetailByindentID(int indentID);//找到该用户ID所有的订单信息
	
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<IndentDetail> getAllDetailbyindentID(int indentID);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	int insert(IndentDetail indentdetail);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int update(IndentDetail indentdetail);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int updateevaluated(@Param("goodsSpecify")String goodsSpecify,@Param("goodsID")int goodsID,@Param("indentID")int indentID,@Param("evaluated") int evaluated);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int delete(IndentDetail indentdetail);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int deleteByindentID(int indentID);
}
