package service.goodservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Mapper.GoodsMainTypeMapper;
import Mapper.GoodsMapper;
import Mapper.GoodsSecondaryTypeMapper;
import bean.Goods;
import bean.GoodsSecondaryType;
import bean.middle.categorybean;

@Service
public class GoodserviceImpl implements Goodservice{
	@Autowired
	GoodsMapper goodsmapper;
	@Autowired
	GoodsMainTypeMapper goodsmainmapper;
	@Autowired
	GoodsSecondaryTypeMapper goodssecondarytypemapper;
	@Override
	public categorybean getcategory(int categoryID) {
		categorybean result=new categorybean();
		result.setCategoryType(goodsmainmapper.findByGoodsMainTypeID(categoryID).getGoodsMainType());
		result.setGoodssecondarytypelist(goodssecondarytypemapper.findBygoodsMainTypeID(categoryID));
		return result;
	}
}
