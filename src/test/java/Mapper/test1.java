package Mapper;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import larry.function.Function;
import pojo.Address;
import pojo.Customer;
import pojo.Evaluate;
import pojo.Express;
import pojo.Goods;
import pojo.GoodsType;
import pojo.Manager;
import pojo.OrderDetail;
import pojo.Indent;
import pojo.Picture;

public class test1 {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
		// ApplicationContext ctx=new
		// ClassPathXmlApplicationContext("SpringConf.xml");
		// ManagerDao managerMapper=ctx.getBean(ManagerDao.class);
		// Manager manager=new Manager();
		// manager.setManagerId(5);
		// manager.setManagerName("DickMing");
		// manager.setManagerPwd("12345678");
		// managerMapper.insert(manager);
		// int id=manager.getManagerId();
		// System.out.println(managerMapper.findById(id));

//		 ApplicationContext ctx=new ClassPathXmlApplicationContext("SpringConf.xml");
//		 CustomerDao customerMapper=ctx.getBean(CustomerDao.class);
//		System.out.println(customerMapper.findById(1));

		// ApplicationContext ctx = new
		// ClassPathXmlApplicationContext("SpringConf.xml");
		// AddressDao addressMapper = ctx.getBean(AddressDao.class);
		// Address address = new Address();
		// address.setCustomerID(3);
		// address.setAddressID(3);
		// address.setAddressDetail("DongGuan");
		// address.setAddressPostcode("510800");
		// address.setAddressPhone("13631376693");
		// address.setAddressName("HuiWen");
		//// addressMapper.insert(address);
		//// System.out.println(addressMapper.findById(3,3));
		// addressMapper.delete(address);

		
		

//		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
//		GoodsDao goodsMapper = ctx.getBean(GoodsDao.class);
//		Goods goods = new Goods();
//		goods.setGoodsID(1456);
//		goods.setGoodsName("Larry");
//		goods.setGoodsPrice(69);
//		goods.setGoodsBrief("saf");
//		goods.setGoodsSpecify("eewr");
//		goods.setGoodsTypeID(132134);
//		goods.setGoodsDate(new Timestamp(0));
//		goods.setSellCount(115);
//		goods.setIsSell(1);
//		goods.setGoodsCount(325);
//        System.out.println(goodsMapper.findById(23));

       
		
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
//		PictureDao pictureMapper = ctx.getBean(PictureDao.class);
//		Picture picture=new Picture();
//		picture.setGoodsID(6);
//		picture.setPictureID(3);
//		picture.setPicturePath("dfjiweoijdkfsdkhfjkdshjkfhdskjfjkdsfjkdshfkjdskiihewiufhuewy");
//		pictureMapper.delete(picture);
		
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
//		GoodsTypeDao gdMapper=ctx.getBean(GoodsTypeDao.class);
//		GoodsType goodsType=new GoodsType();
//		goodsType.setGoodsTypeID(78);
//		goodsType.setGoodsMainType("dsfjiwoeewhncxjkh");
//		goodsType.setGoodsDetailType("ewrhuisdfhuisyg");
//		System.out.println(gdMapper.findById(goodsType.getGoodsTypeID(), goodsType.getGoodsMainType(),goodsType.getGoodsDetailType()));
		
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
//		IndentDao indentMapper=ctx.getBean(IndentDao.class);
//		Indent indent=new Indent();
//		indent.setOrderID(894);
//		indent.setCustomerID(16);
//		indent.setTotalPrice(56);
//		indent.setOrderTime(new Timestamp(9));
//		indent.setAddressID(85);
//		indent.setExpressCode(41);
//		indentMapper.insert(indent);
//		System.out.println(indentMapper.findById(1));

		
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
//		OrderDetailDao oddddd=ctx.getBean(OrderDetailDao.class);
//		OrderDetail orderDetail=new OrderDetail();
//		orderDetail.setOrderID(10);
//		orderDetail.setGoodsID(20);
//		orderDetail.setGoodsPrice(98);
//		orderDetail.setGoodsCount(5);
//		orderDetail.setTotalPrice(44);
//		System.out.println(orderDetail);
//		oddddd.insert(orderDetail);
//		System.out.println(oddddd.delete(orderDetail));
		
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
//		ExpressDao expressMapper=ctx.getBean(ExpressDao.class);
//		System.out.println(expressMapper.findById(1));
//		Express express=new Express();
//		express.setExpressCode(8);
//		express.setExpressDate(new Timestamp(3));
//		express.setExpressState("ryeyeysfjh");
//		expressMapper.insert(express);
		
		
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
//		EvaluateDao evaluateMapper=ctx.getBean(EvaluateDao.class);
//		System.out.println(evaluateMapper.findById(1));
//		
//		
//		Evaluate evaluate=new Evaluate();
//		evaluate.setEvaluateID(2);
//		evaluate.setCustomerID(2);
//		evaluate.setGoodsID(2);
//		evaluate.setEvaluateDate(new Timestamp(1));
//		evaluate.setEvaluateGrade(2);
//		evaluate.setEvaluateContent("larryRan");
//		evaluate.setEvaluatePictureID(2);
//		evaluateMapper.insert(evaluate);
		
//		System.out.println(evaluate);
	
	System.out.println(Function.loginJudege(3, "12356"));
		
		
	}

}
