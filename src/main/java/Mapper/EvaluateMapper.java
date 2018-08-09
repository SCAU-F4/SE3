package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Evaluate;

public interface EvaluateMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	Evaluate findByevaluateID(int expressID);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<Evaluate> findEvaluateByGoodsIDAndgoodsSpecify(@Param("goodsID")int gooodsID,@Param("goodsSpecify") String goodsSpecify);

	
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<Evaluate> findEvaluateBycustomerID(@Param("customerID") int customerID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	int insert(Evaluate evaluate);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int updateByevaluateID(Evaluate evaluate);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int deleteByevaluateID(Evaluate evaluate);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int deleteByGoodsID(@Param("goodsID")int goodsID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int deleteBycustomerID(@Param("customerID") int customerID);
	
	
}
