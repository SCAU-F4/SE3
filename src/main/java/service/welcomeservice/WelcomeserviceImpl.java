package service.welcomeservice;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Mapper.GoodsMainTypeMapper;
import Mapper.GoodsSecondaryTypeMapper;
import bean.Goods;
import bean.GoodsMainType;
import bean.GoodsSecondaryType;
import bean.middle.indexbean;

@Service
public class WelcomeserviceImpl implements Welcomeservice {
    
	@Autowired
	GoodsMainTypeMapper goodsmaintypemapper;
	@Autowired
	GoodsSecondaryTypeMapper goodssecondarytypemapper;
	@Override
	public List<indexbean> initIndex() {
		List<indexbean> result=new ArrayList<>();
		List<GoodsMainType> goodsmaintypes=goodsmaintypemapper.findAllGoodsMainTypes();
		for(GoodsMainType goodsmaintype:goodsmaintypes){
			indexbean bean=new indexbean();
			bean.setMainType(goodsmaintype.getGoodsMainType());
			bean.setMainTypeId(goodsmaintype.getGoodsMainTypeID());
			bean.setMainTypePicture(goodsmaintype.getPicture().getPicturePath());
			List<String> secondaryTypes=new ArrayList<>();
			List<Integer> secondaryTypeIds=new ArrayList<>();
			List<GoodsSecondaryType> goodsSecondaryTypes=goodsmaintype.getGoodsSecondaryTypeList();
			for(GoodsSecondaryType goodssecondarytype:goodsSecondaryTypes){
				String secondaryType=goodssecondarytype.getGoodsSecondaryType();
				secondaryTypes.add(secondaryType);
				Integer secondaryTypeId=goodssecondarytype.getGoodsSecondaryTypeID();
				secondaryTypeIds.add(secondaryTypeId);
			}
			bean.setSecondaryTypes(secondaryTypes);
			bean.setSecondaryTypeIds(secondaryTypeIds);
			List<Goods> goods=goodsmaintype.getGoodsList();
			Goods good[]=new Goods[4];
			Random random=new Random();
			for(int i=0;i<4;i++){
			    int index=random.nextInt(goods.size());
			    good[i]=goods.get(index);
			}
			bean.setGoods(good);
			result.add(bean);
		}
		return result;
	}

}
