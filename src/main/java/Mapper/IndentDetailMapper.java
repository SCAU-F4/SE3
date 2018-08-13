package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.IndentDetail;

@Repository
public interface IndentDetailMapper {

	IndentDetail find(@Param("indentID") int indentID, @Param("goodsID") int goodsID,
			@Param("goodsSpecify") String goodsSpecify);

	List<IndentDetail> findAllDetailByindentID(int indentID);// 找到该用户ID所有的订单信息

	List<IndentDetail> getAllDetailbyindentID(int indentID);

	int insert(IndentDetail indentdetail);

	int update(IndentDetail indentdetail);

	int updateevaluated(@Param("goodsSpecify") String goodsSpecify, @Param("goodsID") int goodsID,
			@Param("indentID") int indentID, @Param("evaluated") int evaluated);

	int delete(IndentDetail indentdetail);

	int deleteByindentID(int indentID);
}
