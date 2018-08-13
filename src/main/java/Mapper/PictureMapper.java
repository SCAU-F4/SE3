package Mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Picture;

@Repository
public interface PictureMapper {
	Picture findBygoodsIDAndpictureID(@Param("goodsID") int goodsID, @Param("pictureID") int pictureID);

	Picture findBypictureID(@Param("pictureID") int pictureID);

	List<Picture> findGoodsAllPictures(@Param("goodsID") int goodsID);

	int insert(Picture picture);

	int update(Picture picture);

	int delete(Picture picture);

	int deleteByGoodsID(@Param("goodsID") int goodsID);

}
