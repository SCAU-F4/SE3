package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.GoodsType;

public interface GoodsTypeMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	GoodsType find(@Param("goodsTypeID")int goodsTypeID, @Param("goodsMainType")String goodsMainType, @Param("goodsDetailType")String goodsDetailType);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<GoodsType> selectAllGoodsTypes();

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	int insert(GoodsType goodstype);

}
