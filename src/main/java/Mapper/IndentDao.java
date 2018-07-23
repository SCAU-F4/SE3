package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.Indent;

public interface IndentDao {
	Indent findById(int orderID);

	
	int insert(Indent indent);
     
	
	int update(Indent indent);

	
	int delete(Indent indent);
}
