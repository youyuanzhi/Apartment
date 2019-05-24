package com.zhiyou.service;

import java.util.List;

import com.zhiyou.pojo.House;
import com.zhiyou.pojo.PageBean;

public interface HouseService {
	List<House> show();
	int add(House house);
	int delete(int id);
	House findById(int id);
	int update(House house);
	PageBean page(PageBean pb);
	
	List<House> selShow(String section1);
	
}
