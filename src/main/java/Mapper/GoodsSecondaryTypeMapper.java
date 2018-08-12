package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.GoodsSecondaryType;

@Repository
public interface GoodsSecondaryTypeMapper {
	GoodsSecondaryType findBygoodsSecondaryTypeID(int goodsSecondaryTypeID);

	List<GoodsSecondaryType> findBygoodsMainTypeID(@Param("goodsMainTypeID") int goodsMainTypeID);

	int insert(GoodsSecondaryType goodsSecondaryType);

	int update(GoodsSecondaryType goodsSecondaryType);

	int delete(GoodsSecondaryType goodsSecondaryType);

}
