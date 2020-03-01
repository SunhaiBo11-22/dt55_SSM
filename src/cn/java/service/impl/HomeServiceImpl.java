package cn.java.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.java.entity.Commodity;
import cn.java.mapper.HomeMapper;
import cn.java.service.HomeService;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	private HomeMapper mapper;
	
	@Override
	public List<Commodity> getCommdityByType(String type) {
		return mapper.getCommdityByType(type);
	}

	@Override
	public Commodity getCommdityById(String id) {
		
		return mapper.getCommdityById(id);
	}
	
}
