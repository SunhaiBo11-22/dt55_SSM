package cn.java.service;

import java.util.List;

import cn.java.entity.Commodity;

public interface HomeService {

	List<Commodity> getCommdityByType(String type);

	Commodity getCommdityById(String id);

}