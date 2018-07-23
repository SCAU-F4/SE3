package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.Picture;

public interface PictureDao {
	
	Picture findById(int goodsID,int pictureID);
	
	
	int insert(Picture picture);

	
	int update(Picture picture);

	
	int delete(Picture picture);

}
