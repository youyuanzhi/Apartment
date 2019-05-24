package com.zhiyou.dao;

import java.util.List;

import com.zhiyou.pojo.House;
import com.zhiyou.pojo.PageBean;

public interface HouseDao {
	List<House> show();
	int add(House house);
	int delete(int id);
	House findById(int id);
	int update(House house);
	int totalRecord();
	List pageList(PageBean pb);
	
	List<House> selShow(String section1);
}
