package com.zhiyou.pojo;

import java.util.Date;

public class Lessee {
	private int lId;
	private String lName;
	private String lTel;
	private String lSex;
	private String lNativePlace;
	private String lIdCard;
	private Date lCreateTime;
	public Lessee(int lId, String lName, String lTel, String lSex, String lNativePlace, String lIdCard,
			Date lCreateTime) {
		super();
		this.lId = lId;
		this.lName = lName;
		this.lTel = lTel;
		this.lSex = lSex;
		this.lNativePlace = lNativePlace;
		this.lIdCard = lIdCard;
		this.lCreateTime = lCreateTime;
	}
	public Lessee() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getlId() {
		return lId;
	}
	public void setlId(int lId) {
		this.lId = lId;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getlTel() {
		return lTel;
	}
	public void setlTel(String lTel) {
		this.lTel = lTel;
	}
	public String getlSex() {
		return lSex;
	}
	public void setlSex(String lSex) {
		this.lSex = lSex;
	}
	public String getlNativePlace() {
		return lNativePlace;
	}
	public void setlNativePlace(String lNativePlace) {
		this.lNativePlace = lNativePlace;
	}
	public String getlIdCard() {
		return lIdCard;
	}
	public void setlIdCard(String lIdCard) {
		this.lIdCard = lIdCard;
	}
	public Date getlCreateTime() {
		return lCreateTime;
	}
	public void setlCreateTime(Date lCreateTime) {
		this.lCreateTime = lCreateTime;
	}
	@Override
	public String toString() {
		return "Lessee [lId=" + lId + ", lName=" + lName + ", lTel=" + lTel + ", lSex=" + lSex + ", lNativePlace="
				+ lNativePlace + ", lIdCard=" + lIdCard + ", lCreateTime=" + lCreateTime + "]";
	}
	
}
