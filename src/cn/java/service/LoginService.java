package cn.java.service;

import java.util.List;

import cn.java.entity.Producttype;
import cn.java.entity.User;

public interface LoginService {

	User isLogin(User user);
	
	void registerService(User user);
	
	boolean isUsernameExistence(User user);
	
	boolean isUserphoneExistence(User user);
	
	List<Producttype> getHomeAllProduct();
	
}