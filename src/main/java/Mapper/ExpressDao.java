package Mapper;

import pojo.Express;

public interface ExpressDao {
	Express findById(int expressCode);

	int insert(Express express);

	int update(Express express);

	int delete(Express express);
}
