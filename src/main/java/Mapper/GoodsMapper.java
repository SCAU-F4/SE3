package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Goods;

public interface GoodsMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	List<Goods> findBygoodsID(int goodsID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	List<Goods> getAllgoods();
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	List<Goods> findBygoodsName(String goodsName);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	Goods findBygoodsIDAndgoodsSpecify(@Param("goodsID")int goodsID,@Param("goodsSpecify")String goodsSpecify);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	List<Goods> findBygoodsMainTypeID(int goodsMainTypeID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	List<Goods> findBygoodsMainTypeIDGroupBygoodsID(int goodsMainTypeID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	List<Goods> findGoodsBygoodsSecondaryTypeID(@Param("goodsSecondaryTypeID")int goodsSecondaryTypeID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
    Integer getAllsellCount();
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	Integer getsellCountByMainTypeID(@Param("goodsMainTypeID")int goodsMainTypeID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	Integer getsellCountByMainTypeIDAndSecondaryTypeID(@Param("goodsMainTypeID")int goodsMainTypeID,@Param("goodsSecondaryTypeID")int goodsSecondaryTypeID);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	List<Goods> getGoodsByMainTypeIDAndSecondaryTypeID(@Param("goodsMainTypeID")int goodsMainTypeID,@Param("goodsSecondaryTypeID")int goodsSecondaryTypeID);
    
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	List<Goods> getGoodsByMaxSellCount();
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.SERIALIZABLE)
	int insert(Goods goods);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int update(Goods goods);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int delete(Goods goods);
}
