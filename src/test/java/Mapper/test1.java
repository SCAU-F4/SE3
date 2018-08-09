package Mapper;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.List;
import java.util.Random;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;

import bean.Address;
import bean.Customer;
import bean.Goods;
import bean.Indent;
import bean.Manager;
import service.adminservice.Adminservice;
import service.adminservice.AdminserviceImpl;

public class test1 {

	public static String signin(Manager manager) {

		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		ManagerMapper managerMapper = ctx.getBean(ManagerMapper.class);
		if (manager != null) {
			Manager realManager = managerMapper.findBymanagerId(manager.getManagerID());
			if ((realManager != null)) {
				if (manager.getManagerPwd().equals(realManager.getManagerPwd())) {
					return "ok";
				}
				return "密码不正确";
			}
			return "数据库没有该管理员";

		}
		return "该管理员账户为空";
	}

	public static double MainTypeSaleWeight(int goodsMainTypeID) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		GoodsMapper goodsMapper = ctx.getBean(GoodsMapper.class);
		// TODO Auto-generated method stub
		double i = goodsMapper.getsellCountByMainTypeID(goodsMainTypeID);
		double j = goodsMapper.getAllsellCount();
		if (j != 0)
			return (i / j) * 100;
		return 0;
	}

	public static double SecondaryTypeSaleWeight(int goodsMainTypeID, int goodsSecondaryTypeID) {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		GoodsMapper goodsMapper = ctx.getBean(GoodsMapper.class);
		double i = goodsMapper.getsellCountByMainTypeID(goodsMainTypeID);
		double j = goodsMapper.getsellCountByMainTypeIDAndSecondaryTypeID(goodsMainTypeID, goodsSecondaryTypeID);
		if (i != 0)
			return (j / i) * 100;
		return 0;
	}

	public static String InsertIndent(Indent indent) {
		// TODO Auto-generated method stub
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		CustomerMapper customerMapper = ctx.getBean(CustomerMapper.class);
		IndentMapper indentMapper = ctx.getBean(IndentMapper.class);
		int customerID = indent.getCustomerID();
		Customer customer = customerMapper.findBycustomerID(customerID);
		if (customer == null) {
			return "订单插入失败，没有该用户信息";
		}
		List<Address> list = customer.getAddressList();
		int length = list.size();
		int flag = 0;
		for (int i = 0; i < length; i++) {
			if (indent.getAddressID() == list.get(i).getAddressID()) {
				flag = 1;
				break;
			}
		}
		if (flag == 0)
			return "该用户没有这个地址，插入失败";
		int result = indentMapper.insert(indent);
		if (result > 0) {
			return "ok";
		}
		return "不关你的事，数据库插入失败了";
	}

	public static void main(String[] args) throws IOException {
//		Goods goods=new Goods();
//		goods.setGoodsID(80);
//		goods.setGoodsName("dsf");
//		goods.setGoodsMainTypeID(5);
//		goods.setGoodsSecondaryTypeID(17);
//		goods.setGoodsSpecify("ddd");
//		goods.setGoodsBrief("dsfsd");
//		goods.setGoodsPrice(4523);
//		goods.setGoodsCount(325);
//		goods.setGoodsDate(new Timestamp(0));
//		goods.setSellCount(1);
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		CustomerMapper customerMapper=ctx.getBean(CustomerMapper.class);
		List list=customerMapper.getAllCustomer();
		for(int i=0;i<list.size();i++)
		{
			System.out.println(list.get(i));
		}
		
		

		// public static String signin(Manager manager) {
		//
		// // TODO Auto-generated method stub
		// ApplicationContext ctx=new
		// ClassPathXmlApplicationContext("SpringConf.xml");
		// ManagerMapper managerMapper=ctx.getBean(ManagerMapper.class);
		// if (manager != null) {
		// Manager realManager =
		// managerMapper.findBymanagerId(manager.getManagerID());
		// if ((realManager != null)) {
		// if (manager.getManagerPwd().equals(realManager.getManagerPwd())) {
		// return "ok";
		// }
		// return "密码不正确";
		// }
		// return "数据库没有该管理员";
		//
		// }
		// return "该管理员账户为空";
		// }
		//
		//
		// public static double MainTypeSaleWeight(int goodsMainTypeID) {
		// ApplicationContext ctx=new
		// ClassPathXmlApplicationContext("SpringConf.xml");
		// GoodsMapper goodsMapper=ctx.getBean(GoodsMapper.class);
		// // TODO Auto-generated method stub
		// double i = goodsMapper.getsellCountByMainTypeID(goodsMainTypeID);
		// double j = goodsMapper.getAllsellCount();
		// if(j!=0) return (i / j)*100;
		// return 0;
		// }
		//
		// public static double SecondaryTypeSaleWeight(int goodsMainTypeID, int
		// goodsSecondaryTypeID) {
		// // TODO Auto-generated method stub
		// ApplicationContext ctx=new
		// ClassPathXmlApplicationContext("SpringConf.xml");
		// GoodsMapper goodsMapper=ctx.getBean(GoodsMapper.class);
		// double i = goodsMapper.getsellCountByMainTypeID(goodsMainTypeID);
		// double j =
		// goodsMapper.getsellCountByMainTypeIDAndSecondaryTypeID(goodsMainTypeID,
		// goodsSecondaryTypeID);
		// if(i!=0) return (j / i)*100;
		// return 0;
		// }
	}
}
