package com.zhiyou.pojo;

import java.util.Date;

public class House {
	private int hId;
	private String hArea;
	private String hEstate;
	private String hUnitNumber;
	private int hFloor;
	private String hRoomNo;
	private String hAcreage;
	private String hDirection;
	private String hFitment;
	private String hIsDoubleAir;
	private int hLimit;
	private String hFacility;
	private double hPrice;
	private int hStatus;
	private String hImg;
	private String hAddress;
	private Date hAddTime;
	private Date hUpdateTime;
	public House(int hId, String hArea, String hEstate, String hUnitNumber, int hFloor, String hRoomNo, String hAcreage,
			String hDirection, String hFitment, String hIsDoubleAir, int hLimit, String hFacility, double hPrice,
			int hStatus, String hImg, String hAddress, Date hAddTime, Date hUpdateTime) {
		super();
		this.hId = hId;
		this.hArea = hArea;
		this.hEstate = hEstate;
		this.hUnitNumber = hUnitNumber;
		this.hFloor = hFloor;
		this.hRoomNo = hRoomNo;
		this.hAcreage = hAcreage;
		this.hDirection = hDirection;
		this.hFitment = hFitment;
		this.hIsDoubleAir = hIsDoubleAir;
		this.hLimit = hLimit;
		this.hFacility = hFacility;
		this.hPrice = hPrice;
		this.hStatus = hStatus;
		this.hImg = hImg;
		this.hAddress = hAddress;
		this.hAddTime = hAddTime;
		this.hUpdateTime = hUpdateTime;
	}
	public House() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int gethId() {
		return hId;
	}
	public void sethId(int hId) {
		this.hId = hId;
	}
	public String gethArea() {
		return hArea;
	}
	public void sethArea(String hArea) {
		this.hArea = hArea;
	}
	public String gethEstate() {
		return hEstate;
	}
	public void sethEstate(String hEstate) {
		this.hEstate = hEstate;
	}
	public String gethUnitNumber() {
		return hUnitNumber;
	}
	public void sethUnitNumber(String hUnitNumber) {
		this.hUnitNumber = hUnitNumber;
	}
	public int gethFloor() {
		return hFloor;
	}
	public void sethFloor(int hFloor) {
		this.hFloor = hFloor;
	}
	public String gethRoomNo() {
		return hRoomNo;
	}
	public void sethRoomNo(String hRoomNo) {
		this.hRoomNo = hRoomNo;
	}
	public String gethAcreage() {
		return hAcreage;
	}
	public void sethAcreage(String hAcreage) {
		this.hAcreage = hAcreage;
	}
	public String gethDirection() {
		return hDirection;
	}
	public void sethDirection(String hDirection) {
		this.hDirection = hDirection;
	}
	public String gethFitment() {
		return hFitment;
	}
	public void sethFitment(String hFitment) {
		this.hFitment = hFitment;
	}
	public String gethIsDoubleAir() {
		return hIsDoubleAir;
	}
	public void sethIsDoubleAir(String hIsDoubleAir) {
		this.hIsDoubleAir = hIsDoubleAir;
	}
	public int gethLimit() {
		return hLimit;
	}
	public void sethLimit(int hLimit) {
		this.hLimit = hLimit;
	}
	public String gethFacility() {
		return hFacility;
	}
	public void sethFacility(String hFacility) {
		this.hFacility = hFacility;
	}
	public double gethPrice() {
		return hPrice;
	}
	public void sethPrice(double hPrice) {
		this.hPrice = hPrice;
	}
	public int gethStatus() {
		return hStatus;
	}
	public void sethStatus(int hStatus) {
		this.hStatus = hStatus;
	}
	public String gethImg() {
		return hImg;
	}
	public void sethImg(String hImg) {
		this.hImg = hImg;
	}
	public String gethAddress() {
		return hAddress;
	}
	public void sethAddress(String hAddress) {
		this.hAddress = hAddress;
	}
	public Date gethAddTime() {
		return hAddTime;
	}
	public void sethAddTime(Date hAddTime) {
		this.hAddTime = hAddTime;
	}
	public Date gethUpdateTime() {
		return hUpdateTime;
	}
	public void sethUpdateTime(Date hUpdateTime) {
		this.hUpdateTime = hUpdateTime;
	}
	@Override
	public String toString() {
		return "House [hId=" + hId + ", hArea=" + hArea + ", hEstate=" + hEstate + ", hUnitNumber=" + hUnitNumber
				+ ", hFloor=" + hFloor + ", hRoomNo=" + hRoomNo + ", hAcreage=" + hAcreage + ", hDirection="
				+ hDirection + ", hFitment=" + hFitment + ", hIsDoubleAir=" + hIsDoubleAir + ", hLimit=" + hLimit
				+ ", hFacility=" + hFacility + ", hPrice=" + hPrice + ", hStatus=" + hStatus + ", hImg=" + hImg
				+ ", hAddress=" + hAddress + ", hAddTime=" + hAddTime + ", hUpdateTime=" + hUpdateTime + "]";
	}
	public House(String hArea, String hEstate, String hUnitNumber, int hFloor, String hRoomNo, String hAcreage,
			String hDirection, String hFitment, String hIsDoubleAir, int hLimit, String hFacility, double hPrice,
			String hImg, String hAddress) {
		super();
		this.hArea = hArea;
		this.hEstate = hEstate;
		this.hUnitNumber = hUnitNumber;
		this.hFloor = hFloor;
		this.hRoomNo = hRoomNo;
		this.hAcreage = hAcreage;
		this.hDirection = hDirection;
		this.hFitment = hFitment;
		this.hIsDoubleAir = hIsDoubleAir;
		this.hLimit = hLimit;
		this.hFacility = hFacility;
		this.hPrice = hPrice;
		this.hImg = hImg;
		this.hAddress = hAddress;
	}
	public House(int hId, String hArea, String hEstate, String hUnitNumber, int hFloor, String hRoomNo, String hAcreage,
			String hDirection, String hFitment, String hIsDoubleAir, int hLimit, String hFacility, double hPrice,
			String hImg, String hAddress) {
		super();
		this.hId = hId;
		this.hArea = hArea;
		this.hEstate = hEstate;
		this.hUnitNumber = hUnitNumber;
		this.hFloor = hFloor;
		this.hRoomNo = hRoomNo;
		this.hAcreage = hAcreage;
		this.hDirection = hDirection;
		this.hFitment = hFitment;
		this.hIsDoubleAir = hIsDoubleAir;
		this.hLimit = hLimit;
		this.hFacility = hFacility;
		this.hPrice = hPrice;
		this.hImg = hImg;
		this.hAddress = hAddress;
	}
	
	
	
}
