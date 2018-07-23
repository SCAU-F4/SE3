package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.Indent;

public interface IndentDao {
	@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
	Indent findById(int orderID);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.SERIALIZABLE)
	int insert(Indent indent);
     
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int update(Indent indent);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.REPEATABLE_READ)
	int delete(Indent indent);
}
