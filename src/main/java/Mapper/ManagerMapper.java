package Mapper;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import bean.Manager;

@Repository
public interface ManagerMapper {
	// 只有一个管理员无所谓
	Manager findBymanagerId(int managerID);

	Manager findBymanagerName(String managerName);

	int insert(Manager manager);

	int update(Manager manager);

	int delete(Manager manager);

}
