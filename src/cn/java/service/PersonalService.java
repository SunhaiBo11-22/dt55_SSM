package cn.java.service;

import java.util.List;

import cn.java.entity.Address;
import cn.java.entity.User;

public interface PersonalService {

	List<Address> getAllAddressByUser(User user);

	void addAddressInUser(String province, String city, String dist, String street, String userName, int parseInt,
			Integer id);

	void deleteAddressById(String id);
}