package cn.java.mapper;

import java.util.List;

import cn.java.entity.Commodity;

public interface HomeMapper {

	List<Commodity> getCommdityByType(String type);

	Commodity getCommdityById(String id);

}
