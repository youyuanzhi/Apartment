package com.zhiyou.pojo;

import java.util.Date;

public class Role {
	private int roId;
	private String roName;
	private String roDesc;
	private Date roCreateTime;
	public Role(int roId, String roName, String roDesc, Date roCreateTime) {
		super();
		this.roId = roId;
		this.roName = roName;
		this.roDesc = roDesc;
		this.roCreateTime = roCreateTime;
	}
	public Role() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getRoId() {
		return roId;
	}
	public void setRoId(int roId) {
		this.roId = roId;
	}
	public String getRoName() {
		return roName;
	}
	public void setRoName(String roName) {
		this.roName = roName;
	}
	public String getRoDesc() {
		return roDesc;
	}
	public void setRoDesc(String roDesc) {
		this.roDesc = roDesc;
	}
	public Date getRoCreateTime() {
		return roCreateTime;
	}
	public void setRoCreateTime(Date roCreateTime) {
		this.roCreateTime = roCreateTime;
	}
	@Override
	public String toString() {
		return "Role [roId=" + roId + ", roName=" + roName + ", roDesc=" + roDesc + ", roCreateTime=" + roCreateTime
				+ "]";
	}

}

