package Mapper;

import pojo.Goods;

public interface GoodsDao {
	Goods findById(int goodsID);

	int insert(Goods goods);

	int update(Goods goods);

	int delete(Goods goods);
}
