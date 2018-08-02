package bean.middle;

import java.util.Arrays;
import java.util.List;

import bean.Goods;
import bean.GoodsSecondaryType;

public class indexbean {
	private String mainType;
	private String mainTypePicture;
	private List<GoodsSecondaryType> secondaryTypes;
	private int mainTypeId;
	private Goods[] goods = new Goods[4];

	public indexbean() {

	}

	public indexbean(String mainType, String mainTypePicture, List<GoodsSecondaryType> secondaryTypes, int mainTypeId,
			Goods[] goods) {
		super();
		this.mainType = mainType;
		this.mainTypePicture = mainTypePicture;
		this.secondaryTypes = secondaryTypes;
		this.mainTypeId = mainTypeId;
		this.goods = goods;
	}

	public String getMainType() {
		return mainType;
	}

	public void setMainType(String mainType) {
		this.mainType = mainType;
	}

	public String getMainTypePicture() {
		return mainTypePicture;
	}

	public void setMainTypePicture(String mainTypePicture) {
		this.mainTypePicture = mainTypePicture;
	}

	public List<GoodsSecondaryType> getSecondaryTypes() {
		return secondaryTypes;
	}

	public void setSecondaryTypes(List<GoodsSecondaryType> secondaryTypes) {
		this.secondaryTypes = secondaryTypes;
	}

	public int getMainTypeId() {
		return mainTypeId;
	}

	public void setMainTypeId(int mainTypeId) {
		this.mainTypeId = mainTypeId;
	}

	public Goods[] getGoods() {
		return goods;
	}

	public void setGoods(Goods[] goods) {
		this.goods = goods;
	}

	@Override
	public String toString() {
		return "indexbean [mainType=" + mainType + ", mainTypePicture=" + mainTypePicture + ", secondaryTypes="
				+ secondaryTypes + ", mainTypeId=" + mainTypeId + ", goods=" + Arrays.toString(goods) + "]";
	}

}
