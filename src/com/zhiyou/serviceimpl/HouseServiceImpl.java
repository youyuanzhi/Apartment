package com.zhiyou.serviceimpl;

import java.util.List;

import com.zhiyou.dao.HouseDao;
import com.zhiyou.dao.UserDao;
import com.zhiyou.daoimpl.HouseDaoImpl;
import com.zhiyou.daoimpl.UserDaoImpl;
import com.zhiyou.pojo.House;
import com.zhiyou.pojo.PageBean;
import com.zhiyou.service.HouseService;


public class HouseServiceImpl implements HouseService {

	@Override
	public List<House> show() {
		
		HouseDao houseDao = new HouseDaoImpl();
		return houseDao.show();
	}

	@Override
	public int add(House house) {
		HouseDao houseDao = new HouseDaoImpl();
		return houseDao.add(house);
	}

	@Override
	public int delete(int id) {
		HouseDao houseDao = new HouseDaoImpl();
		return houseDao.delete(id);
	}

	@Override
	public House findById(int id) {
		HouseDao houseDao = new HouseDaoImpl();
		return houseDao.findById(id);
	}

	@Override
	public int update(House house) {
		HouseDao houseDao = new HouseDaoImpl();
		return houseDao.update(house);
	}

	@Override
	public PageBean page(PageBean pb) {
		HouseDao houseDao = new HouseDaoImpl();
		int tr = houseDao.totalRecord();
		pb.setTr(tr);
		List list = houseDao.pageList(pb);
		pb.setBeanList(list);
		return pb;
	}

	@Override
	public List<House> selShow(String section1) {
		HouseDao houseDao = new HouseDaoImpl();
		
		return null;
	}


	
		
}
