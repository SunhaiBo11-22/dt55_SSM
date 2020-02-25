package cn.java.mapper;

import java.util.List;

import cn.java.entity.User;

public interface UserMapper {
	
	List<User> getUserByUser(User user);
	
	int registerMapper(User user);
	
	List<User> getUserByUsername(User user);
	
	List<User> getUserByUserphone(User user);
}
