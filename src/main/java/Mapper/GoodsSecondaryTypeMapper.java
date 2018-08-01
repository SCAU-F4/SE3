package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.GoodsSecondaryType;

public interface GoodsSecondaryTypeMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	GoodsSecondaryType findBygoodsSecondaryTypeID(int goodsSecondaryTypeID);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<GoodsSecondaryType> findBygoodsMainTypeID(@Param("goodsMainTypeID") int goodsMainTypeID);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	int insert(GoodsSecondaryType goodsSecondaryType);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int update(GoodsSecondaryType goodsSecondaryType);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int delete(GoodsSecondaryType goodsSecondaryType);

}
