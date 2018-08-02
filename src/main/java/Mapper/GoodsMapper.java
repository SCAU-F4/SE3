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
	List<Goods> findBygoodsMainTypeID(int goodsMainTypeID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	List<Goods> findGoodsBygoodsMainTypeIDandgoodsSecondaryTypeID(@Param("goodsMainTypeID")int goodsMainTypeID,@Param("goodsSecondaryTypeID")int goodsSecondaryTypeID);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.SERIALIZABLE)
	int insert(Goods goods);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int update(Goods goods);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int delete(Goods goods);
}
