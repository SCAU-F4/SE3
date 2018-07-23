package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.Goods;

public interface GoodsDao {
	Goods findById(int goodsID);

	
	int insert(Goods goods);

	
	int update(Goods goods);

	
	int delete(Goods goods);
}
