package Mapper;



import java.util.List;

import pojo.GoodsType;

public interface GoodsTypeDao {
	GoodsType findById(int goodsTypeID,String goodsMainType,String goodsDetailType);
	List<GoodsType> selectAllGoodsTypes();
    int insert(GoodsType goodstype);

}
