package Mapper;

import java.util.List;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.GoodsType;
import bean.IndentDetail;

public interface IndentDetailMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	IndentDetail find(int indentID, int goodsID);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<IndentDetail> getAllDetailbyOrderID(int indentID);//找到该用户ID所有的订单信息

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	int insert(IndentDetail indentdetail);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int update(IndentDetail indentdetail);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int delete(IndentDetail indentdetail);
}
