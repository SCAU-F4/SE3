package service.adminservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Mapper.CustomerMapper;
import Mapper.GoodsMainTypeMapper;
import Mapper.GoodsMapper;
import Mapper.GoodsSecondaryTypeMapper;
import Mapper.IndentMapper;
import Mapper.ManagerMapper;
import bean.Goods;
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
			return "商品已经存在";
		int i = goodsMapper.insert(goods);
		if (i > 0)
			return "插入商品成功";
		return "插入失败";
	}

	@Override
	public String DeleteGood(Goods goods) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String UpdatGood(Goods goods) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String ChangeisSellGood(Goods goods, int yesno) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String UpdateCustomerPassword(int customerID, String customerPhone) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String DeleteCustomer(int customerID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String InsertIndent(Indent indent) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String DeleteIndent(Indent indent) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String UpdateIndent(Indent indent) {
		// TODO Auto-generated method stub
		return null;
	}

}
