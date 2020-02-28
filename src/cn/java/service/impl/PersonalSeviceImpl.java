package cn.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.Address;
import cn.java.entity.User;
import cn.java.mapper.AddressMapper;
import cn.java.service.PersonalService;

@Service
public class PersonalSeviceImpl implements PersonalService {
	
	@Autowired
	private AddressMapper mapper;

	@Override
	public List<Address> getAllAddressByUser(User user) {
		return mapper.getAllAddressMapper(user);
	}

	@Override
	public void addAddressInUser(String province, String city, String dist, String street, String userName,
			int userPhone, Integer userid) {
		mapper.addAddressInUserMapper(province, city, dist , street, userName,userPhone, userid);
	}

	@Override
	public void deleteAddressById(String id) {
		mapper.deleteAddressByIdMapper(id);
	}

	
	
}
