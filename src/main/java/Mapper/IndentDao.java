package Mapper;

import pojo.Indent;

public interface IndentDao {
	Indent findById(int orderID);

	int insert(Indent indent);

	int update(Indent indent);

	int delete(Indent indent);
}
