package Mapper;

import java.util.List;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.GoodsType;

public interface GoodsTypeDao {
	GoodsType findById(int goodsTypeID, String goodsMainType, String goodsDetailType);

	List<GoodsType> selectAllGoodsTypes();

	
	int insert(GoodsType goodstype);

}
