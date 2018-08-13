package service.welcomeservice;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import Mapper.GoodsMainTypeMapper;
import Mapper.GoodsMapper;
import Mapper.GoodsSecondaryTypeMapper;
import bean.Goods;
import bean.GoodsMainType;
import bean.middle.indexbean;

@Service
@Transactional(propagation = Propagation.REQUIRED, isolation = Isolation.READ_COMMITTED)
public class WelcomeserviceImpl implements Welcomeservice {

	@Autowired
	GoodsMapper goodsmapper;
	@Autowired
	GoodsMainTypeMapper goodsmaintypemapper;
	@Autowired
	GoodsSecondaryTypeMapper goodssecondarytypemapper;

	@Override
	public List<indexbean> initIndex() {
		List<indexbean> result = new ArrayList<>();
		List<GoodsMainType> goodsmaintypes = goodsmaintypemapper.findAllGoodsMainTypes();
		for (GoodsMainType goodsmaintype : goodsmaintypes) {
			indexbean bean = new indexbean();
			bean.setMainType(goodsmaintype.getGoodsMainType());
			bean.setMainTypeId(goodsmaintype.getGoodsMainTypeID());
			bean.setMainTypePicture(goodsmaintype.getPicture().getPicturePath());
			bean.setSecondaryTypes(goodsmaintype.getGoodsSecondaryTypeList());
			List<Goods> goods = goodsmapper.findBygoodsMainTypeIDGroupBygoodsID(goodsmaintype.getGoodsMainTypeID());
			Goods good[] = new Goods[4];
			Random random = new Random();
			HashSet<Integer> pool = new HashSet<>();
			int index;
			for (int i = 0; i < 4; i++) {
				do {
					index = random.nextInt(goods.size());
				} while (!pool.add(index));
				good[i] = goods.get(index);
			}
			bean.setGoods(good);
			result.add(bean);
		}
		return result;
	}

}
