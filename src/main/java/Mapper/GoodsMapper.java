package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Goods;

@Repository
public interface GoodsMapper {
	List<Goods> findBygoodsID(int goodsID);

	List<Goods> getAllgoods();

	List<Goods> findBygoodsName(String goodsName);

	Goods findBygoodsIDAndgoodsSpecify(@Param("goodsID") int goodsID, @Param("goodsSpecify") String goodsSpecify);

	List<Goods> findBygoodsMainTypeID(int goodsMainTypeID);

	List<Goods> findBygoodsMainTypeIDGroupBygoodsID(int goodsMainTypeID);

	List<Goods> findGoodsBygoodsSecondaryTypeID(@Param("goodsSecondaryTypeID") int goodsSecondaryTypeID);

	Integer getAllsellCount();

	Integer getsellCountByMainTypeID(@Param("goodsMainTypeID") int goodsMainTypeID);

	Integer getsellCountByMainTypeIDAndSecondaryTypeID(@Param("goodsMainTypeID") int goodsMainTypeID,
			@Param("goodsSecondaryTypeID") int goodsSecondaryTypeID);

	List<Goods> getGoodsByMainTypeIDAndSecondaryTypeID(@Param("goodsMainTypeID") int goodsMainTypeID,
			@Param("goodsSecondaryTypeID") int goodsSecondaryTypeID);

	List<Goods> getGoodsByMaxSellCount();

	int insert(Goods goods);

	int update(Goods goods);

	int delete(Goods goods);
}
