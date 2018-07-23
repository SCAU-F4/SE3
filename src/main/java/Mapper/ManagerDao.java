package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import pojo.Manager;

public interface ManagerDao {
	
	
	Manager findById(int managerID);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	int insert(Manager manager);
    
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	int update(Manager manager);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	int delete(Manager manager);

}
