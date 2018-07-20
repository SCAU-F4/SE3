package Mapper;

import pojo.Picture;

public interface PictureDao {
	
	Picture findById(int goodsID,int pictureID);

	int insert(Picture picture);

	int update(Picture picture);

	int delete(Picture picture);

}
