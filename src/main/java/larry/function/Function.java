package larry.function;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import Mapper.EvaluateDao;
import Mapper.ExpressDao;
import Mapper.GoodsTypeDao;
import Mapper.ManagerDao;
import pojo.Evaluate;
import pojo.Express;
import pojo.GoodsType;
import pojo.Manager;

public class Function {
	public static Boolean ManagerloginJudege(int managerID, String managerPwd)// 管理员登录判断(输入ID，输入密码)
	{
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		ManagerDao managerMapper = ctx.getBean(ManagerDao.class);
		Manager manager = managerMapper.findById(managerID);
		if (manager != null) {
			if (manager.getManagerPwd().equals(managerPwd)) {
				return true;
			}
		}
		return false;
	}

	public static Boolean ChangeManagerPwd(int managerID, String OldPwd, String NewPwd)// 修改管理员密码,管理员ID，旧密码，新密码
	{
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		ManagerDao managerMapper = ctx.getBean(ManagerDao.class);
		Manager manager = managerMapper.findById(managerID);
		if (manager != null) {
			if (manager.getManagerPwd().equals(OldPwd)) {
				manager.setManagerPwd(NewPwd);
				int result = managerMapper.update(manager);
				if (result > 0)
					return true;
				System.out.println("数据库更新失败，不关你的事");
				return false;
			}
			System.out.println("输入密码不正确");
			return false;
		}
		System.out.println("没有该管理员");
		return false;

	}
	
	public static Boolean deleteManager(int managerID,String pwd)// 删除管理员(输入ID，输入密码)
	{
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		ManagerDao managerMapper = ctx.getBean(ManagerDao.class);
		Manager manager = managerMapper.findById(managerID);
		if(manager!=null)
		{
			if(manager.getManagerPwd().equals(pwd))
			{
				int result=managerMapper.delete(manager);
				if(result>0) return true;
				System.out.println("数据库删除失败，不关你的事");
				return false;
			}
			System.out.println("密码输入错误");
			return false;
			
		}
		System.out.println("无该管理员");
		return false;
		
	}

	public static List<GoodsType> getAllGoodsType() {// 获取所有商品类型
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		GoodsTypeDao gdMapper = ctx.getBean(GoodsTypeDao.class);
		List<GoodsType> list = gdMapper.selectAllGoodsTypes();
		return list;

	}

	public static Express getExpressByID(int expressCode) {// 通过快递单号查询快递状态
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		ExpressDao expressMapper = ctx.getBean(ExpressDao.class);
		Express express = expressMapper.findById(expressCode);
		if (express == null)
			return null;
		return express;

	}

	public static Evaluate getEvaluateByID(int evaluateID) // 通过评价ID查询评价的信息
	{
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		EvaluateDao evaluateMapper = ctx.getBean(EvaluateDao.class);
		Evaluate evaluate = evaluateMapper.findById(evaluateID);
		if (evaluate == null)
			return null;
		return evaluate;

	}

}
