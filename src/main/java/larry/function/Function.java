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

	public static List<GoodsType> getAllGoodsType() {//获取所有商品类型,用于前段制作页面
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
