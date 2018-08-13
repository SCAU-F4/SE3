package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.EvaluatePicture;

@Repository
public interface EvaluatePictureMapper {
	EvaluatePicture findByevaluateIDANDpictureID(@Param("evaluateID") int evaluateID,
			@Param("pictureID") int pictureID);

	List<EvaluatePicture> findEvaluatePictureByevaluateID(@Param("evaluateID") int evaluateID);

	int insert(EvaluatePicture evaluatePicture);

	int delete(EvaluatePicture evaluatePicture);

}
