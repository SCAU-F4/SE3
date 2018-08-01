package bean.middle;

import java.util.List;

import bean.Goods;

public class indexbean {
	public String mainType;
	public String mainTypePicture;
	public List<String> secondaryType;
	public int mainTypeId;
	public int secondaryTypeId;
	public List<Goods> goods;

	public indexbean(String mainType, String mainTypePicture, List<String> secondaryType, int mainTypeId,
			int secondaryTypeId, List<Goods> goods) {
		super();
		this.mainType = mainType;
		this.mainTypePicture = mainTypePicture;
		this.secondaryType = secondaryType;
		this.mainTypeId = mainTypeId;
		this.secondaryTypeId = secondaryTypeId;
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

	public List<String> getSecondaryType() {
		return secondaryType;
	}

	public void setSecondaryType(List<String> secondaryType) {
		this.secondaryType = secondaryType;
	}

	public int getMainTypeId() {
		return mainTypeId;
	}

	public void setMainTypeId(int mainTypeId) {
		this.mainTypeId = mainTypeId;
	}

	public int getSecondaryTypeId() {
		return secondaryTypeId;
	}

	public void setSecondaryTypeId(int secondaryTypeId) {
		this.secondaryTypeId = secondaryTypeId;
	}

	public List<Goods> getGoods() {
		return goods;
	}

	public void setGoods(List<Goods> goods) {
		this.goods = goods;
	}

}
