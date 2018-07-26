package Mapper;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Manager;

public interface ManagerMapper {
	//只有一个管理员无所谓
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	Manager findBymanagerId(int managerID);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	int insert(Manager manager);
    
	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	int update(Manager manager);

	@Transactional(propagation = Propagation.REQUIRED, isolation =Isolation.READ_COMMITTED)
	int delete(Manager manager);

}
