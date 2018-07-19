package Mapper;

import java.io.IOException;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pojo.Manager;

public class test1 {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		ApplicationContext ctx=new ClassPathXmlApplicationContext("SpringConf.xml");
		ManagerDao managerMapper=ctx.getBean(ManagerDao.class);
		Manager manager=new Manager();
		manager.setManagerId(5);
		manager.setManagerName("DickMing");
		manager.setManagerPwd("12345678");
		managerMapper.insert(manager);
		int id=manager.getManagerId();
		System.out.println(managerMapper.findById(id));
	}

}
