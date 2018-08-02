package bean.middle;

import java.util.List;

import bean.Goods;
import bean.GoodsSecondaryType;

public class categorybean {
	private String categoryType;
	private List<GoodsSecondaryType> goodssecondarytypelist;

	public categorybean() {

	}

	public categorybean(String categoryType, List<GoodsSecondaryType> goodssecondarytypelist) {
		super();
		this.categoryType = categoryType;
		this.goodssecondarytypelist = goodssecondarytypelist;
	}

	public String getCategoryType() {
		return categoryType;
	}

	public void setCategoryType(String categoryType) {
		this.categoryType = categoryType;
	}

	public List<GoodsSecondaryType> getGoodssecondarytypelist() {
		return goodssecondarytypelist;
	}

	public void setGoodssecondarytypelist(List<GoodsSecondaryType> goodssecondarytypelist) {
		this.goodssecondarytypelist = goodssecondarytypelist;
	}
}
