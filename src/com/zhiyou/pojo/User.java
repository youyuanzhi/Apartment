package com.zhiyou.pojo;

import java.util.Date;

public class User {
	private int u_id;
	private String name;
	private String pass;
	private String realname;
	private String u_sex;
	private int role_id;
	private Date u_create_ctime;
	private int u_state;
	
	
	
	public User(String name, int role_id) {
		super();
		this.name = name;
		this.role_id = role_id;
	}
	public User(int u_id, String name, String pass, String realname) {
		super();
		this.u_id = u_id;
		this.name = name;
		this.pass = pass;
		this.realname = realname;
	}
	public User(String name, String pass, String realname, String u_sex) {
		super();
		this.name = name;
		this.pass = pass;
		this.realname = realname;
		this.u_sex = u_sex;
	}
	public User(String name, String pass) {
		super();
		this.name = name;
		this.pass = pass;
	}
	public User(int u_id, String name, String pass, String realname, String u_sex, int role_id, Date u_create_ctime,
			int u_state) {
		super();
		this.u_id = u_id;
		this.name = name;
		this.pass = pass;
		this.realname = realname;
		this.u_sex = u_sex;
		this.role_id = role_id;
		this.u_create_ctime = u_create_ctime;
		this.u_state = u_state;
	}
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getU_id() {
		return u_id;
	}
	public void setU_id(int u_id) {
		this.u_id = u_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getU_sex() {
		return u_sex;
	}
	public void setU_sex(String u_sex) {
		this.u_sex = u_sex;
	}
	public int getRole_id() {
		return role_id;
	}
	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}
	public Date getU_create_ctime() {
		return u_create_ctime;
	}
	public void setU_create_ctime(Date u_create_ctime) {
		this.u_create_ctime = u_create_ctime;
	}
	public int getU_state() {
		return u_state;
	}
	public void setU_state(int u_state) {
		this.u_state = u_state;
	}
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", name=" + name + ", pass=" + pass + ", realname=" + realname + ", u_sex="
				+ u_sex + ", role_id=" + role_id + ", u_create_ctime=" + u_create_ctime + ", u_state=" + u_state + "]";
	}


}
