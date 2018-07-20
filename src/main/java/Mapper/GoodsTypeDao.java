package Mapper;

import pojo.GoodsType;

public interface GoodsTypeDao {
	GoodsType findById(int goodsTypeID,String goodsMainType,String goodsDetailType);

	int insert(GoodsType goodstype);

}
