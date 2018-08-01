package service.goodservice;

import java.util.List;

import bean.Goods;

public interface Goodservice {
   public List<Goods> listGoods(int categoryID,int subcategoryID);
}
