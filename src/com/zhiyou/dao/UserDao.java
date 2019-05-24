package com.zhiyou.dao;

import java.util.List;

import com.zhiyou.pojo.PageBean;
import com.zhiyou.pojo.User;
import com.zhiyou.pojo.UserPage;

public interface UserDao {
	boolean login(User user);
	List<User> show();
	int add(User user);
	int delete(int id);
	User findById(int id);
	int update(User user);
	int totalRecord();
	List pageList(PageBean pb);
	List userPage(UserPage pb);
	int toalUserPage(User user);
}
