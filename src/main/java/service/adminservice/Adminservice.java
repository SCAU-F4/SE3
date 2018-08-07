package service.adminservice;


import bean.Customer;
import bean.Goods;
import bean.GoodsSecondaryType;
import bean.Indent;
import bean.Manager;

public interface Adminservice {
	//管理员账户密码管理
	public String signin(Manager manager);
    public String changeManagerName(int managerID,String managerName);
    public String changeManagerPassword(int managerID,String newPassword);
    public String createAdmin(Manager manager);//创建新的管理员
    //商品管理
    public String InsertGood(Goods goods);
    public String DeleteGood(Goods goods);
    public String UpdateGood(Goods goods);
    public String ChangeisSellGood(Goods goods,int yesno);//商品上下架
    //统计
    public double MainTypeSaleWeight(int goodsMainTypeID);//主分类销售比重
    public double SecondaryTypeSaleWeight(int goodsMainTypeID,int goodsSecondaryTypeID);//次分类占主分类销售比重
    public Goods getHistoryHighestGood();
    public Customer getHighestCustomer();
    public double getHighestSalePerDay();
    public int getHighestSaleCountPerDay();
    public GoodsSecondaryType getMostPopularSecondaryType();
//    //用户管理
//    public String UpdateCustomerPassword(int customerID,String customerPhone);
//    public String DeleteCustomer(int customerID);
//    //订单管理
//    public String InsertIndent(Indent indent);
//    public String DeleteIndent(Indent indent);
//    public String UpdateIndent(Indent indent);
    //
    
}
