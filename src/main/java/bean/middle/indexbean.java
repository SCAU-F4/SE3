package bean.middle;

import java.util.Arrays;
import java.util.List;

import bean.Goods;

public class indexbean {
	public String mainType;
	public String mainTypePicture;
	public List<String> secondaryTypes;
	public int mainTypeId;
	public List<Integer> secondaryTypeIds;
	public Goods[] goods = new Goods[4];


	public indexbean() {

	}

	public indexbean(String mainType, String mainTypePicture, List<String> secondaryTypes, int mainTypeId,
			List<Integer> secondaryTypeIds, Goods[] goods) {
		super();
		this.mainType = mainType;
		this.mainTypePicture = mainTypePicture;
		this.secondaryTypes = secondaryTypes;
		this.mainTypeId = mainTypeId;
		this.secondaryTypeIds = secondaryTypeIds;
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

	public List<String> getSecondaryTypes() {
		return secondaryTypes;
	}

	public void setSecondaryTypes(List<String> secondaryTypes) {
		this.secondaryTypes = secondaryTypes;
	}

	public int getMainTypeId() {
		return mainTypeId;
	}

	public void setMainTypeId(int mainTypeId) {
		this.mainTypeId = mainTypeId;
	}

	public List<Integer> getSecondaryTypeIds() {
		return secondaryTypeIds;
	}

	public void setSecondaryTypeIds(List<Integer> secondaryTypeIds) {
		this.secondaryTypeIds = secondaryTypeIds;
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
				+ secondaryTypes + ", mainTypeId=" + mainTypeId + ", secondaryTypeIds=" + secondaryTypeIds + ", goods="
				+ Arrays.toString(goods) + "]";
	}
}
