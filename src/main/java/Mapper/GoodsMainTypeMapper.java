package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.GoodsMainType;



public interface GoodsMainTypeMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	GoodsMainType findByGoodsMainTypeID(@Param("goodsMainTypeID") int goodsMainTypeID);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<GoodsMainType> findAllGoodsMainTypes();

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	int insert(GoodsMainType goodsmaintype);
	
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int update(GoodsMainType goodsmaintype);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int delete(GoodsMainType goodsmaintype);

}
