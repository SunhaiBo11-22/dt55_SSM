package cn.java.mapper;

import java.util.List;

import cn.java.entity.Address;
import cn.java.entity.User;

public interface AddressMapper {

	List<Address> getAllAddressMapper(User user);

	
}