package service.userservice;

import java.sql.Timestamp;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Mapper.CustomerMapper;
import bean.Customer;

@Service
public class UserserviceImpl implements Userservice{
	@Autowired
    CustomerMapper customermapper;
	@Override
	public boolean signincheck() {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public String signup(Customer customer,String repassword) {
		// TODO Auto-generated method stub
		String result=check(customer,repassword);
		if(result!=null) return result;
		customer.setCustomerRegDate(new Timestamp(System.currentTimeMillis()));
		
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
}
