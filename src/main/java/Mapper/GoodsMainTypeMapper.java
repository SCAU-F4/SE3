package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.GoodsMainType;

@Repository
public interface GoodsMainTypeMapper {
	GoodsMainType findByGoodsMainTypeID(@Param("goodsMainTypeID") int goodsMainTypeID);

	List<GoodsMainType> findAllGoodsMainTypes();

	int insert(GoodsMainType goodsmaintype);

	int update(GoodsMainType goodsmaintype);

	int delete(GoodsMainType goodsmaintype);

}
