package cn.java.service;

import cn.java.entity.User;

public interface LoginService {

	boolean isLogin(User user);
	
	void registerService(User user);
	
	boolean isUsernameExistence(User user);
	
	boolean isUserphoneExistence(User user);
	
}