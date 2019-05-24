package com.zhiyou.service;

import java.util.List;

import com.zhiyou.pojo.PageBean;
import com.zhiyou.pojo.User;
import com.zhiyou.pojo.UserPage;

public interface UserService {
	boolean login(User user);
	List<User> show();
	int add(User user);
	int delete(int id);
	User findById(int id);
	int update(User user);
	PageBean page(PageBean pb);
	UserPage sel(UserPage pb);
	
	
}
