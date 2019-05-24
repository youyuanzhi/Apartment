package com.zhiyou.serviceimpl;

import java.util.List;

import com.zhiyou.dao.UserDao;
import com.zhiyou.daoimpl.UserDaoImpl;
import com.zhiyou.pojo.PageBean;
import com.zhiyou.pojo.User;
import com.zhiyou.pojo.UserPage;
import com.zhiyou.service.UserService;

public class UserServiceImpl implements UserService {

	@Override
	public boolean login(User user) {
		// TODO Auto-generated method stub
		UserDao userDao = new UserDaoImpl();
		return userDao.login(user);
	}

	@Override
	public List<User> show() {
		// TODO Auto-generated method stub
		UserDao userDao=new UserDaoImpl();
		return userDao.show();
	}

	@Override
	public int add(User user) {

		UserDao userDao = new UserDaoImpl();
		return userDao.add(user);
	}

	@Override
	public int delete(int id) {
		UserDao userDao = new UserDaoImpl();
		return userDao.delete(id);
	}

	@Override
	public User findById(int id) {
		UserDao userDao = new UserDaoImpl();
		
		return userDao.findById(id);
	}

	@Override
	public int update(User user) {
		UserDao userDao = new UserDaoImpl();
		return userDao.update(user);
	}

	@Override
	public PageBean page(PageBean pb) {
		UserDao userDao = new UserDaoImpl();
		int tr = userDao.totalRecord();
		pb.setTr(tr);
		List list = userDao.pageList(pb);
		pb.setBeanList(list);
		return pb;
	}

	@Override
	public UserPage sel(UserPage pb) {
		UserDao userDao = new UserDaoImpl();
		List list = userDao.userPage(pb);
		pb.setBeanList(list);
		int tr = userDao.toalUserPage(pb.getUser());
		pb.setTr(tr);
		return pb;
	}
	

	
}
