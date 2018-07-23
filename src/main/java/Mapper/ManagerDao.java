package Mapper;

import pojo.Manager;

public interface ManagerDao {
	Manager findById(int managerID);

	int insert(Manager manager);

	int update(Manager manager);

	int delete(Manager manager);

}
