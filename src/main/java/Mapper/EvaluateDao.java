package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.Evaluate;

public interface EvaluateDao {
	Evaluate findById(int expressID);

	
	int insert(Evaluate evaluate);

	
	int update(Evaluate evaluate);

	
	int delete(Evaluate evaluate);
}
