package service.userservice;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Mapper.AddressMapper;
import Mapper.CartMapper;
import Mapper.CustomerMapper;
import Mapper.ExpressMapper;
import Mapper.GoodsMapper;
import Mapper.IndentDetailMapper;
import Mapper.IndentMapper;
import bean.Address;
import bean.Cart;
import bean.Customer;
import bean.Goods;
import bean.Indent;
import bean.IndentDetail;
import bean.Picture;

@Service
public class UserserviceImpl implements Userservice{
	@Autowired
    CustomerMapper customermapper;
	@Autowired
	IndentMapper indentmapper;
	@Autowired
    GoodsMapper goodsmapper;	
	@Autowired
	IndentDetailMapper indentdetailmapper;
	@Autowired
	AddressMapper addressmapper;
	@Autowired
	ExpressMapper expressmapper;
	@Autowired
	CartMapper cartmapper;
	@Override
	public Customer signincheck(Customer customer) {
		// TODO Auto-generated method stub
	    customer=customermapper.findBycustomerNameAndcustomerPwd(customer.getCustomerName(), customer.getCustomerPwd());
		return customer;
	}

	@Override
	public String signup(Customer customer,String repassword) {
		// TODO Auto-generated method stub
		String result=check(customer,repassword);
		if(result!=null) return result;
		//检验完成，没问题，result必为空
		customer.setCustomerRegDate(new Timestamp(System.currentTimeMillis()));
		try {
			customermapper.IsCustomerNameExist(customer.getCustomerName());//判断用户是否重名,不重名则抛出异常，重名则返回用户重名
				result="用户重名";
				return result;
		} catch (Exception e) {
			if(customermapper.insert(customer)!=0) {
				cartmapper.insert(new Cart(customer.getCustomerID(),customer.getCustomerID(),0,null));
				return null;
			}
			else {
				result ="插入失败";
			}
		}
			return result;
	}	
	
	
	public String check(Customer customer,String repassword){
    	String name=customer.getCustomerName();
    	String password=customer.getCustomerPwd();
    	String phonenum=customer.getCustomerPhone();
    	String email=customer.getCustomerEmail();
    	String error="";
    	Pattern p=Pattern.compile("^[\u4E00-\u9FA5A-Za-z0-9_]{5,20}$");
    	Matcher m=p.matcher(name);
    	if(m.matches()==false) {
    		error+="名字字数必须在5到20之间且不有特殊符号";
    		return error;
    	}
    	p=Pattern.compile("^[A-Za-z0-9]{6,20}$");
    	m=p.matcher(password);
    	if(m.matches()==false){
    		error+="密码字数必须在6到20之间";
    		return error;
    	}
    	if(!password.equals(repassword)){
    		error+="两次密码不一致";
    		return error;
    	}
    	p=Pattern.compile("^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$");
    	m=p.matcher(phonenum);
    	if(m.matches()==false){
    		error+="手机号格式不对";
    		return error;
    	}
    	p=Pattern.compile("^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.com$");
    	m=p.matcher(email);
    	if(m.matches()==false){
    		error+="邮箱格式不对";
    		return error;
    	}
    	return null;
    }

	@Override
	public List<Indent> getAllIndent(int customerID) {
		List<Indent> indents=indentmapper.findBycustomerID(customerID);//即使查询结果为空，也不会抛出异常，只有基本类型会抛出异常
		return indents;
	}
	
	@Override
	public String changeName(int customerID,String customerName) {
		String result="";
    	Pattern p=Pattern.compile("^[\u4E00-\u9FA5A-Za-z0-9_]{5,20}$");
    	Matcher m=p.matcher(customerName);
    	if(m.matches()==false) {
    		result+="名字字数必须在5到20之间且不有特殊符号";
    		return result;
    	}
    	try{
    		customermapper.IsCustomerNameExist(customerName);
    		result+="用户重名";
    		return result;
    	}catch (Exception e) {
    		int sum=customermapper.updatecustomerNameBycustomerID(customerID, customerName);
        	if(sum!=0) return result;
        	else {
        		result+="更新失败";
        		return result;
        	}
		}
	}

	@Override
	public String changePassword(int customerID, String oldPassword, String newPassword, String rePassword) {
		String result="";
		Customer customer=customermapper.findBycustomerID(customerID);
		if(!oldPassword.equals(customer.getCustomerPwd())){
			result+="密码错误";
			return result;
		}
		Pattern p=Pattern.compile("^[A-Za-z0-9]{6,20}$");
    	Matcher m=p.matcher(newPassword);
    	if(m.matches()==false){
    		result+="密码字数必须在6到20之间";
    		return result;
    	}
    	if(!newPassword.equals(rePassword)){
    		result+="两次密码不一致";
    		return result;
    	}
    	int sum=customermapper.updatecustomerPasswordBycustomerID(customerID, newPassword);
    	if(sum==0) result+="更新失败";
		return result;
	}
   /*当addressID=-1时，用户使用地址添加功能，不为-1时，用户在修改地址*/
	@Override
	public String addressService(Address address) {
		String result="";
		if(address.getAddressDetail()=="") {
			result+="地址不能为空";
			return result;
		}
		Pattern p=Pattern.compile("^[0-9]{6}$");
    	Matcher m=p.matcher(address.getAddressPostcode());
    	if(m.matches()==false) {
    		result+="邮政编码格式不对";
    		return result;
    	}
		p=Pattern.compile("^[\u4E00-\u9FA5A-Za-z0-9_]{2,8}$");
    	m=p.matcher(address.getAddressName());
    	if(m.matches()==false) {
    		result+="名字字数必须在2到8之间且不有特殊符号";
    		return result;
    	}
    	p=Pattern.compile("^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\\d{8}$");
    	m=p.matcher(address.getAddressPhone());
    	if(m.matches()==false){
    		result+="手机号格式不对";
    		return result;
    	}
    	if(address.getAddressID()==-1){
    		int sum=addressmapper.insert(address);
    		if(sum==0){
    			result+="插入失败";
    		}
    	}
    	else {
    		int sum =indentmapper.isIndentexitByaddressID(address.getAddressID());
    		if(sum!=0){
    			result+="该地址已被下单，不能更改";
    			return result;
    		}
    		sum=addressmapper.update(address);
    		if(sum==0){
    			result+="更新失败";
    		}
    	}
		return result;
	}

	@Override
	public String deleteAddress(int customerID, int addressID) {
		String result="";
		int sum =indentmapper.isIndentexitByaddressID(addressID);
		if(sum!=0){
			result+="该地址已被下单，不能删除";
			return result;
		}
		sum=addressmapper.deleteBycustomerIDAndaddressID(customerID, addressID);
		if(sum==0){
			result+="删除失败";
		}
		
		return result;
	}

	@Override
	public String deleteIndent(int indentID) {
		String result="";
		int state=indentmapper.findindentStateByindentID(indentID);
		if(state<=2){
			result+="该订单尚未完成，不能删除";
		}
		else {
			int expressCode=indentmapper.findexpressCodeByindentID(indentID);
			int sum =indentmapper.deleteByindentID(indentID);//做成事务好点
			if(sum==0){
				result+="删除失败";
				return result;
			}
			indentdetailmapper.deleteByindentID(indentID);
			expressmapper.deleteByexpressCode(expressCode);
		}
		return result;
	}

}
