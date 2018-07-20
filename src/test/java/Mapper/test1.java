package Mapper;

import java.io.IOException;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import pojo.Address;
import pojo.Customer;
import pojo.Goods;
import pojo.GoodsType;
import pojo.Manager;
import pojo.Order;
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
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("SpringConf.xml");
		OrderDao orderMapper=ctx.getBean(OrderDao.class);
		System.out.println(orderMapper.findById(1));
//		order.setOrderID(1);
//		order.setCustomerID(1234);
//		order.setTotalPrice(903);
//		order.setOrderTime(new Date(0));
//		order.setAddressID(355);
//		order.setExpressCode(999);
//		orderMapper.insert(order);
		
		
		
	}

}
