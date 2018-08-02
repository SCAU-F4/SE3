package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.EvaluatePicture;

public interface EvaluatePictureMapper {
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	EvaluatePicture findByevaluateIDANDpictureID(@Param("evaluateID") int evaluateID,@Param("pictureID") int pictureID);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	List<EvaluatePicture> findEvaluatePictureByevaluateID(@Param("evaluateID") int evaluateID);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.SERIALIZABLE)
	int insert(EvaluatePicture evaluatePicture);

	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.REPEATABLE_READ)
	int delete(EvaluatePicture evaluatePicture);

}
