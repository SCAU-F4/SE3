package service.adminservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Mapper.AddressMapper;
import Mapper.CartDetailMapper;
import Mapper.CartMapper;
import Mapper.CustomerMapper;
import Mapper.EvaluateMapper;
import Mapper.EvaluatePictureMapper;
import Mapper.GoodsMainTypeMapper;
import Mapper.GoodsMapper;
import Mapper.GoodsSecondaryTypeMapper;
import Mapper.IndentDetailMapper;
import Mapper.IndentMapper;
import Mapper.ManagerMapper;
import Mapper.PictureMapper;
import bean.Address;
import bean.Cart;
import bean.CartDetail;
import bean.Customer;
import bean.CustomerAndPrice;
import bean.Evaluate;
import bean.EvaluatePicture;
import bean.Goods;
import bean.GoodsMainType;
import bean.GoodsSecondaryType;
import bean.Indent;
import bean.IndentDetail;
import bean.Manager;

@Service
public class AdminserviceImpl implements Adminservice {
	@Autowired
	ManagerMapper managerMapper;
	@Autowired
	GoodsMapper goodsMapper;
	@Autowired
	CustomerMapper customerMapper;
	@Autowired
	IndentMapper indentMapper;
	@Autowired
	IndentDetailMapper indentDetailMapper;
	@Autowired
	GoodsMainTypeMapper goodsMainTypeMapper;
	@Autowired
	GoodsSecondaryTypeMapper goodsSecondaryTypeMapper;
	@Autowired
	PictureMapper pictureMapper;
	@Autowired
	EvaluateMapper evaluateMapper;
	@Autowired
	AddressMapper addressMapper;
	@Autowired
	CartMapper cartMapper;
	@Autowired
	CartDetailMapper cartDetailMapper;
	@Autowired
	EvaluatePictureMapper evaluatePictureMapper;

	@Override
	public String signin(Manager manager) {
		// TODO Auto-generated method stub
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

	@Override
	public String changeManagerName(int managerID, String managerName) {
		// TODO Auto-generated method stub
		Manager manager = managerMapper.findBymanagerId(managerID);
		if (manager == null)
			return "manager is null";
		manager.setManagerName(managerName);
		int i = managerMapper.update(manager);
		if (i > 0)
			return "ok";
		return "fail";
	}

	@Override
	public String changeManagerPassword(int managerID, String newPassword) {
		// TODO Auto-generated method stub
		Manager manager = managerMapper.findBymanagerId(managerID);
		if (manager != null) {
			manager.setManagerPwd(newPassword);
			int i = managerMapper.update(manager);
			if (i > 0)
				return "ok";
			return "fail";
		}
		return "the manager is null";
	}

	@Override
	public String createAdmin(Manager manager) {
		// TODO Auto-generated method stub
		if (manager == null) {
			return "manager为空";
		}
		Manager managerExist = managerMapper.findBymanagerName(manager.getManagerName());
		if (managerExist != null) {
			return "名字已存在";
		}
		int i = managerMapper.insert(manager);
		if (i > 0)
			return "ok";
		return "更新失败";
	}

	@Override
	public String InsertGood(Goods goods) {
		// TODO Auto-generated method stub
		Goods mygood = goodsMapper.findBygoodsIDAndgoodsSpecify(goods.getGoodsID(), goods.getGoodsSpecify());
		if (mygood != null)
			return "商品已经存在,无法插入";
		GoodsSecondaryType gddGoodsSecondaryType = goodsSecondaryTypeMapper
				.findBygoodsSecondaryTypeID(goods.getGoodsSecondaryTypeID());
		GoodsMainType gddMainType = goodsMainTypeMapper.findByGoodsMainTypeID(goods.getGoodsMainTypeID());
		if (gddGoodsSecondaryType == null)
			return "没有这个商品次分类，插入失败";
		else if (gddMainType == null)
			return "没有这个商品主分类，插入失败";
		else {
			int i = goodsMapper.insert(goods);
			if (i > 0)
				return "ok";
			return "数据库插入失败";
		}
	}

	@Override
	public String DeleteGood(Goods goods) {
		// TODO Auto-generated method stub
		int i = goodsMapper.delete(goods);
		if (i > 0) {
			pictureMapper.deleteByGoodsID(goods.getGoodsID());
			evaluateMapper.deleteByGoodsID(goods.getGoodsID());
			return "ok";
		}
		return "fail";
	}

	@Override
	public String UpdateGood(Goods goods) {
		// TODO Auto-generated method stub
		Goods mygoods = goodsMapper.findBygoodsIDAndgoodsSpecify(goods.getGoodsID(), goods.getGoodsSpecify());
		if (mygoods == null)
			return "商品不存在，无法update";
		GoodsSecondaryType gddGoodsSecondaryType = goodsSecondaryTypeMapper
				.findBygoodsSecondaryTypeID(goods.getGoodsSecondaryTypeID());
		GoodsMainType gddMainType = goodsMainTypeMapper.findByGoodsMainTypeID(goods.getGoodsMainTypeID());
		if (gddGoodsSecondaryType == null)
			return "没有这个商品次分类，更新失败";
		else if (gddMainType == null)
			return "没有这个商品主分类，更新失败";
		else if (!checkgddMainTypeandSecondType(gddMainType, gddGoodsSecondaryType)) {
			System.out.println("abc");
			return "商品主分类和商品次分类出问题了";
		} else {
			int i = goodsMapper.update(goods);
			if (i > 0)
				return "ok";
			return "数据库更新失败";
		}
	}

	@Override
	public String ChangeisSellGood(int goodsID, String goodsSpecify, int yesno) {
		// TODO Auto-generated method stub
		Goods goods = goodsMapper.findBygoodsIDAndgoodsSpecify(goodsID, goodsSpecify);
		goods.setIsSell(yesno);
		int result = goodsMapper.update(goods);
		if (result > 0)
			return "ok";
		return "数据库更新失败";
	}

	@Override
	public List<Goods> getAllGoods() {
		// TODO Auto-generated method stub
		return goodsMapper.getAllgoods();
	}

	@Override
	public List<Goods> getgoodsByMaintypeIDAndSecondTypeID(int mid, int sid) {
		// TODO Auto-generated method stub
		return goodsMapper.getGoodsByMainTypeIDAndSecondaryTypeID(mid, sid);
	}

	public static boolean checkgddMainTypeandSecondType(GoodsMainType goodsMainType,
			GoodsSecondaryType goodsSecondaryType) {
		List<GoodsSecondaryType> list = goodsMainType.getGoodsSecondaryTypeList();
		for (GoodsSecondaryType gdst : list) {
			if (gdst.getGoodsSecondaryTypeID() == goodsSecondaryType.getGoodsSecondaryTypeID())
				System.out.println("good");
			return true;
		}
		System.out.println("fuck");
		return false;
	}

	@Override
	public double MainTypeSaleWeight(int goodsMainTypeID) {
		// TODO Auto-generated method stub
		double i = goodsMapper.getsellCountByMainTypeID(goodsMainTypeID);
		double j = goodsMapper.getAllsellCount();
		if (j != 0)
			return (i / j) * 100;
		return 0;
	}

	@Override
	public double SecondaryTypeSaleWeight(int goodsMainTypeID, int goodsSecondaryTypeID) {
		// TODO Auto-generated method stub
		double i = goodsMapper.getsellCountByMainTypeID(goodsMainTypeID);
		double j = goodsMapper.getsellCountByMainTypeIDAndSecondaryTypeID(goodsMainTypeID, goodsSecondaryTypeID);
		if (i != 0)
			return (j / i) * 100;
		return 0;
	}

	@Override
	public Goods getHistoryHighestGood() {
		// TODO Auto-generated method stub
		return goodsMapper.getGoodsByMaxSellCount().get(0);
	}

	@Override
	public CustomerAndPrice getHighestCustomer() {// 获取消费最高的用户名字和消费总额
		// TODO Auto-generated method stub
		return customerMapper.getHighestCustomer().get(0);
	}

	@Override
	public double getHighestSalePerDay() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Integer getHighestSaleCountPerDay() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public GoodsSecondaryType getMostPopularSecondaryType() {
		// TODO Auto-generated method stub

		return null;
	}

	@Override
	public List<Indent> getAllIndent() {
		// TODO Auto-generated method stub
		return indentMapper.getAllIndent();
	}

	@Override
	public String InsertIndent(Indent indent) {
		// TODO Auto-generated method stub
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

	@Override
	public String DeleteIndent(Indent indent) {
		// TODO Auto-generated method stub
		int result = indentMapper.delete(indent);
		if (result > 0) {
			indentDetailMapper.deleteByindentID(indent.getIndentID());
			return "ok";
		}
		return "fail";
	}

	@Override
	public String UpdateIndent(Indent indent) {
		// TODO Auto-generated method stub
		int customerID = indent.getCustomerID();
		Customer customer = customerMapper.findBycustomerID(customerID);
		if (customer == null) {
			return "订单更新失败，没有该用户信息";
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
			return "该用户没有这个地址，更新失败";
		int result = indentMapper.update(indent);
		if (result > 0) {
			return "ok";
		}
		return "不关你的事，数据库更新失败了";
	}

	@Override
	public String UpdateCustomerName(int customerID, String customerName) {
		// TODO Auto-generated method stub
		Customer customer = customerMapper.findBycustomerID(customerID);
		if (customerMapper.IsCustomerNameExist(customerName) != 0)
			return "失败了，这个用户名已存在";
		customer.setCustomerName(customerName);
		int result = customerMapper.update(customer);
		if (result > 0)
			return "ok";
		return "不关你的事，数据库更新失败了";
	}

	@Override
	public String UpdateCustomerPassword(int customerID, String customerPwd) {
		// TODO Auto-generated method stub
		Customer customer = customerMapper.findBycustomerID(customerID);
		customer.setCustomerPwd(customerPwd);
		int result = customerMapper.update(customer);
		if (result > 0)
			return "ok";
		return "不关你的事，数据库更新失败了";
	}

	@Override
	public String UpdateCustomerPhone(int customerID, String customerPhone) {
		// TODO Auto-generated method stub
		Customer customer = customerMapper.findBycustomerID(customerID);
		customer.setCustomerPhone(customerPhone);
		int result = customerMapper.update(customer);
		if (result > 0)
			return "ok";
		return "不关你的事，数据库更新失败了";
	}

	@Override
	public String UpdateCustomerEmail(int customerID, String CustomerEmail) {
		// TODO Auto-generated method stub
		Customer customer = customerMapper.findBycustomerID(customerID);
		customer.setCustomerEmail(CustomerEmail);
		int result = customerMapper.update(customer);
		if (result > 0)
			return "ok";
		return "不关你的事，数据库更新失败了";
	}

	@Override
	public String InsertCustomer(Customer customer) {
		// TODO Auto-generated method stub
		int result = customerMapper.insert(customer);
		if (result > 0)
			return "ok";
		return "不关你的事，数据库更新失败了";
	}

	@Override
	public String DeleteCustomer(int customerID) {
		// TODO Auto-generated method stub
		Customer customer = new Customer();
		customer.setCustomerID(customerID);
		int result = customerMapper.delete(customer);
		if (result > 0) {
			Cart cart = cartMapper.findBycustomerID(customerID);
			List<CartDetail> cartDetailList = cart.getCartDetailList();
			for (int i = 0; i < cartDetailList.size(); i++) {
				cartDetailMapper.delete(cartDetailList.get(i));
			}
			List<Indent> indentList = indentMapper.findBycustomerID(customerID);
			for (Indent indent : indentList) {
				for (IndentDetail indentDetail : indent.getIndentDetaillist()) {
					indentDetailMapper.delete(indentDetail);
				}
			}
			List<Evaluate> evaluateList = evaluateMapper.findEvaluateBycustomerID(customerID);
			for (Evaluate evaluate : evaluateList) {
				for (EvaluatePicture evaluatePicture : evaluate.getEvaluatePictureList()) {
					evaluatePictureMapper.delete(evaluatePicture);
				}
			}
			evaluateMapper.deleteBycustomerID(customerID);
			addressMapper.deleteBycustomerID(customerID);
			cartMapper.deleteByCustomerID(customerID);
			indentMapper.deleteBycustomerID(customerID);
			return "ok";
		}
		return "不关你的事，数据库删除失败了";
	}

	@Override
	public List<Customer> getAllCustomer() {
		// TODO Auto-generated method stub
		return customerMapper.getAllCustomer();
	}

}
