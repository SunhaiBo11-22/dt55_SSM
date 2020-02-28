package cn.java.mapper;

import java.util.List;

import cn.java.entity.Address;
import cn.java.entity.User;

public interface AddressMapper {

	List<Address> getAllAddressMapper(User user);

	void addAddressInUserMapper(String province, String city, String dist, String street, String userName,
			int userPhone, Integer userid);

	void deleteAddressByIdMapper(String id);

	
}