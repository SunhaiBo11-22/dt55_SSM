package cn.java.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

import cn.java.entity.User;
import cn.java.mapper.UserMapper;
import cn.java.service.LoginService;

@Service
@Scope("prototype")
public class LoginServiceImpl implements LoginService {
	@Autowired
	private UserMapper mapper;
	
	@Override
	public boolean isLogin(User user) {
		List<User> list = mapper.getUserByUser(user);
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}

	@Override
	public void registerService(User user) {
		mapper.registerMapper(user);
	}

	@Override
	public boolean isUsernameExistence(User user) {
		List<User> list = mapper.getUserByUsername(user);
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}

	@Override
	public boolean isUserphoneExistence(User user) {
		List<User> list =mapper.getUserByUserphone(user);
		if (list != null && !list.isEmpty()) {
			return true;
		}
		return false;
	}

}
