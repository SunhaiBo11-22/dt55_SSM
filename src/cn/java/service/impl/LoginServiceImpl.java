package cn.java.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import cn.java.entity.Producttype;
import cn.java.entity.User;
import cn.java.mapper.UserMapper;
import cn.java.service.LoginService;

@Service
@Scope("prototype")
public class LoginServiceImpl implements LoginService {
	@Autowired
	private UserMapper mapper;
	
	@Override
	/**
	 *	登录功能的方法
	 */
	public User isLogin(User user) {
		User list = mapper.getUserByUser(user);
		return list;
	}
	
	//注册的方法将用户写入数据库之中
	@Override
	public void registerService(User user) {
		mapper.registerMapper(user);
	}
	
	//查询用户名是否使用过
	@Override
	public boolean isUsernameExistence(User user) {
		List<User> list = mapper.getUserByUsername(user);
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}

	//查询电话号是否注册过
	@Override
	public boolean isUserphoneExistence(User user) {
		List<User> list =mapper.getUserByUserphone(user);
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}

	//将分类的列表返回
	@Override
	public List<Producttype> getHomeAllProduct() {
		return mapper.getProducttypeList();
	}

}
