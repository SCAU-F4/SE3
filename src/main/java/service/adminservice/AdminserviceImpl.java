package service.adminservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Mapper.CustomerMapper;
import Mapper.GoodsMainTypeMapper;
import Mapper.GoodsMapper;
import Mapper.GoodsSecondaryTypeMapper;
import Mapper.IndentMapper;
import Mapper.ManagerMapper;
import bean.Customer;
import bean.CustomerAndPrice;
import bean.Goods;
import bean.GoodsMainType;
import bean.GoodsSecondaryType;
import bean.Indent;
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
	GoodsMainTypeMapper goodsMainTypeMapper;
	@Autowired
	GoodsSecondaryTypeMapper goodsSecondaryTypeMapper;

	@Override
	public String signin(Manager manager) {
		// TODO Auto-generated method stub
		if (manager != null) {
			Manager realManager = managerMapper.findBymanagerId(manager.getManagerId());
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
		if (i > 0)
			return "ok";
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
			return "商品主分类和商品次分类出问题了";
		} else {
			int i = goodsMapper.update(goods);
			if (i > 0)
				return "ok";
			return "数据库更新失败";
		}
	}

	@Override
	public String ChangeisSellGood(Goods goods, int yesno) {
		// TODO Auto-generated method stub
		goods.setIsSell(yesno);
		UpdateGood(goods);
		return null;
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
				return true;
		}

		return false;
	}

	@Override
	public double MainTypeSaleWeight(int goodsMainTypeID) {
		// TODO Auto-generated method stub
		double i = goodsMapper.getsellCountByMainTypeID(goodsMainTypeID);
		double j = goodsMapper.getAllsellCount();
		return i / j;
	}

	@Override
	public double SecondaryTypeSaleWeight(int goodsMainTypeID, int goodsSecondaryTypeID) {
		// TODO Auto-generated method stub
		double i = goodsMapper.getsellCountByMainTypeID(goodsMainTypeID);
		double j = goodsMapper.getsellCountByMainTypeIDAndSecondaryTypeID(goodsMainTypeID, goodsSecondaryTypeID);
		return j / i;
	}

	@Override
	public Goods getHistoryHighestGood() {
		// TODO Auto-generated method stub
		return goodsMapper.getGoodsByMaxSellCount();
	}

	@Override
	public CustomerAndPrice getHighestCustomer() {// 获取消费最高的用户名字和消费总额
		// TODO Auto-generated method stub
		return customerMapper.getHighestCustomer();
	}

	@Override
	public double getHighestSalePerDay() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getHighestSaleCountPerDay() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public GoodsSecondaryType getMostPopularSecondaryType() {
		// TODO Auto-generated method stub
       
		return null;
	}

}
