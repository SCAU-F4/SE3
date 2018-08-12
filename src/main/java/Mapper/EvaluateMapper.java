package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Evaluate;

@Repository
public interface EvaluateMapper {
	Evaluate findByevaluateID(int expressID);

	List<Evaluate> findEvaluateByGoodsIDAndgoodsSpecify(@Param("goodsID") int gooodsID,
			@Param("goodsSpecify") String goodsSpecify);

	List<Evaluate> findEvaluateBycustomerID(@Param("customerID") int customerID);

	int insert(Evaluate evaluate);

	int updateByevaluateID(Evaluate evaluate);

	int deleteByevaluateID(Evaluate evaluate);

	int deleteByGoodsID(@Param("goodsID") int goodsID);

	int deleteBycustomerID(@Param("customerID") int customerID);

}
