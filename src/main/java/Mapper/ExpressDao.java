package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.Express;

public interface ExpressDao {
	Express findById(int expressCode);

	
	int insert(Express express);

	
	int update(Express express);

	
	int delete(Express express);
}
