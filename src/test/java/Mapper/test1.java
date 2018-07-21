package Mapper;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

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
//		 Customer customer=new Customer();
//		 Date date=new Date(0);
//		 customer.setCustomerID(2);
//		 customer.setCustomerName("abc");
//		 customer.setCustomerEmail("ranlary@icloud.com");
//		 customer.setCustomerPhone("13802531916");
//		 customer.setCustomerPwd("12345678998746");
//		 customer.setCustomerRegDate(date);
//		  customerMapper.insert(customer);

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

		
		
//		Date date=new Date(117, 11, 26);
//		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
//		GoodsDao goodsMapper = ctx.getBean(GoodsDao.class);
//		Goods goods = new Goods();
//		goods.setGoodsID(137908);
//		goods.setGoodsName("adjolJASIOD");
//		goods.setGoodsPrice(89);
//		goods.setGoodsBrief("fdsaf");
//		goods.setGoodsSpecify("ewrewr");
//		goods.setGoodsTypeID(132134);
//		goods.setGoodsDate(date);
//		goods.setSellCount(115);
//		goods.setIsSell(1);
//		goods.setGoodsCount(325);
//       System.out.println(goods);
//       goodsMapper.insert(goods);
       
		
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
//		indent.setOrderID(2);
//		indent.setCustomerID(16);
//		indent.setTotalPrice(56);
//		indent.setOrderTime(new Date(0));
//		indent.setAddressID(85);
//		indent.setExpressCode(41);
//		System.out.println(indent);
//		indentMapper.delete(indent);

		
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
////		System.out.println(expressMapper.findById(1));
//		Express express=new Express();
//		express.setExpressCode(2);
//		express.setExpressDate(new Date(0).toString());
//		express.setExpressState("fasfjh");
//		expressMapper.delete(express);
		
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		EvaluateDao evaluateMapper=ctx.getBean(EvaluateDao.class);
//		System.out.println(evaluateMapper.findById(1));
		Evaluate evaluate=new Evaluate();
		evaluate.setEvaluateID(2);
		evaluate.setCustomerID(2);
		evaluate.setGoodsID(2);
		evaluate.setEvaluateDate(new Date(0));
		evaluate.setEvaluateGrade(2);
		evaluate.setEvaluateContent("abcjidfisoajdfijdsofjioe");
		evaluate.setEvaluatePictureID(2);
		evaluateMapper.delete(evaluate);
		
//		System.out.println(evaluate);
	
		
		
	}

}
