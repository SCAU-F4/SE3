package aspect;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import bean.Customer;

@Aspect
@Component
public class SignupAspect {
	@Pointcut("execution(* service.userservice.Userservice.signup(bean.Customer,String)) && args(customer,repassword)")
	public void signupcheck(Customer customer,String repassword) {
	};

	@Around("signupcheck(customer,repassword)")
	public String around(ProceedingJoinPoint jp, Customer customer,String repassword) {
		try {
			String result=check(customer,repassword);
			if(result==null) jp.proceed();
			else return result;
		} catch (Throwable e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
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
