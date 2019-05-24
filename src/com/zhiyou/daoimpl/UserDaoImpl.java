package com.zhiyou.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.zhiyou.dao.UserDao;
import com.zhiyou.pojo.PageBean;
import com.zhiyou.pojo.User;
import com.zhiyou.pojo.UserPage;
import com.zhiyou.util.DButils;

public class UserDaoImpl implements UserDao {

	public boolean login(User user) {
		String sql = "select * from user where u_name =? and u_pass=?";
		Object obj[] = { user.getName(), user.getPass() };
//		System.out.println("dao");
		ResultSet rSet = DButils.sqlDQL(sql, obj);
//		System.out.println(rSet);
		try {
			if (rSet.next()) {
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public List<User> show() {
		String sql = "select * from user";
		Object obj[] = {};
		ResultSet rSet = DButils.sqlDQL(sql, obj);
		List<User> list = new ArrayList<>();

		try {
			while (rSet.next()) {
				Integer id = rSet.getInt(1);
				String username = rSet.getString(2);
				String password = rSet.getString(3);
				String realname = rSet.getString(4);
				String sex = rSet.getString(5);
				Integer role_id = rSet.getInt(6);
				Date ctime = rSet.getDate(7);
				Integer status = rSet.getInt(8);
				User user = new User(id, username, password, realname, sex, role_id, ctime, status);
				list.add(user);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return null;
	}

	@Override
	public int add(User user) {
		String sql = "insert into user values (null , ? ,? , ? , ? , 1, now(),1) ";
		Object obj[] = { user.getName(), user.getPass(), user.getRealname(), user.getU_sex() };
		return DButils.sqlDML(sql, obj);
	}

	@Override
	public int delete(int id) {
		String sql = "delete from user where u_id = ?";
		Object obj[] = { id };
		return DButils.sqlDML(sql, obj);
	}

	@Override
	public User findById(int id) {
		String sql = "select *from user where u_id=?";
		Object obj[] = { id };
		ResultSet rs = DButils.sqlDQL(sql, obj);
		try {
			if (rs.next()) {
				Integer uid = rs.getInt(1);
				String username = rs.getString(2);
				String password = rs.getString(3);
				String realname = rs.getString(4);
				String sex = rs.getString(5);
				Integer role_id = rs.getInt(6);
				Date ctime = rs.getDate(7);
				Integer status = rs.getInt(8);
				User user = new User(uid, username, password, realname, sex, role_id, ctime, status);
				return user;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}

		return null;
	}

	@Override
	public int update(User user) {
		String sql = "update user set u_name=?,u_pass=?,u_realname=? where u_id=?";
		Object obj[] = { user.getName(), user.getPass(), user.getRealname(), user.getU_id() };
		return DButils.sqlDML(sql, obj);
	}

	@Override
	public List pageList(PageBean pb) {
		String sql = "select * from user limit ?,?";
		Object obj[] = { (pb.getPc() - 1) * pb.getRecord(), pb.getRecord() };
		ResultSet rSet = DButils.sqlDQL(sql, obj);
		List<User> list = new ArrayList<>();
		try {
			while (rSet.next()) {
				Integer uid = rSet.getInt(1);
				String username = rSet.getString(2);
				String password = rSet.getString(3);
				String realname = rSet.getString(4);
				String sex = rSet.getString(5);
				Integer role_id = rSet.getInt(6);
				Date ctime = rSet.getDate(7);
				Integer status = rSet.getInt(8);
				User user = new User(uid, username, password, realname, sex, role_id, ctime, status);
				list.add(user);

			}
			return list;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int totalRecord() {
		String sql = "select count(*) from user";
		Object obj[] = {};
		ResultSet rs = DButils.sqlDQL(sql, obj);

		try {
			if (rs.next()) {
				int num = rs.getInt(1);
				return num;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	@Override
	public List userPage(UserPage pb) {
		String sql = "select * from user where 1=1";
		List list = new ArrayList<>();
		if(pb.getUser().getName() !=null && pb.getUser().getName().trim()!=null) {
			sql = sql +" and u_name like ?";
			list.add("%"+pb.getUser().getName()+"%");
		}
		if(pb.getUser().getRole_id() != -1) {
			sql =sql +" and role_id = ?";
			list.add(pb.getUser().getRole_id());
		}
		sql =sql +" limit ?,?";
		list.add((pb.getPc()-1)*pb.getRecord());
		list.add(pb.getRecord());
		Object obj []= list.toArray();
		ResultSet rs = DButils.sqlDQL(sql, obj);
		List<User> list2 = new ArrayList<>();
		try {
			while (rs.next()) {
				Integer uid = rs.getInt(1);
				String username = rs.getString(2);
				String password = rs.getString(3);
				String realname = rs.getString(4);
				String sex = rs.getString(5);
				Integer role_id = rs.getInt(6);
				Date ctime = rs.getDate(7);
				Integer status = rs.getInt(8);
				User user = new User(uid, username, password, realname, sex, role_id, ctime, status);
				list2.add(user);

			}
			return list2;
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int toalUserPage(User user) {
	String sql = "select count(*) from user where 1 = 1 ";
	List list = new ArrayList<>();
	if(user.getName() !=null && user.getName().trim() !=null) {
		sql = sql+" and u_name like ?";
		list.add("%" + user.getName() +"%");
	}
	if(user.getRole_id() != -1) {
		sql = sql +" and role_id  = ?";
		list.add(user.getRole_id());
	}
	Object obj[] = list.toArray();
	ResultSet rs = DButils.sqlDQL(sql, obj);
	
	try {
		if(rs.next()) {
			int sum = rs.getInt(1);
			return sum;
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return 0 ;
	}

	
	

	
	
	
	
	
	
	
	
	
	
	
	
}
