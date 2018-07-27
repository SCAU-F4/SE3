package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Goods;

public interface GoodsMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	Goods findBygoodsID(int goodsID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	List<Goods> getGoodsBygoodsTypeID(@Param("goodsTypeID")int goodsTypeID);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.SERIALIZABLE)
	int insert(Goods goods);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int update(Goods goods);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int delete(Goods goods);
}
