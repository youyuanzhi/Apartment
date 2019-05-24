package com.zhiyou.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.zhiyou.dao.HouseDao;
import com.zhiyou.pojo.House;
import com.zhiyou.pojo.PageBean;
import com.zhiyou.pojo.User;
import com.zhiyou.util.DButils;

public class HouseDaoImpl implements HouseDao {

	@Override
	public List<House> show() {
		String sql = "select * from house";
		Object obj[] = {};
		ResultSet rSet = DButils.sqlDQL(sql, obj);
		List<House> list = new ArrayList<>();
		try {
			while (rSet.next()) {
				Integer hId = rSet.getInt(1);
				String hArea = rSet.getString(2);
				String hEstate = rSet.getString(3);
				String hUnitNumber = rSet.getString(4);
				Integer hFloor = rSet.getInt(5);
				String hRoomNo = rSet.getString(6);
				String hAcreage = rSet.getString(7);
				String hDirection = rSet.getString(8);
				String hFitment = rSet.getString(9);
				String hIsDoubleAir = rSet.getString(10);
				Integer hLimit = rSet.getInt(11);
				String hFacility = rSet.getString(12);
				Double hPrice = rSet.getDouble(13);
				Integer hStatus = rSet.getInt(14);
				String hImg = rSet.getString(15);
				String hAddress = rSet.getString(16);
				Date hAddTime = rSet.getDate(17);
				Date hUpdateTime = rSet.getDate(18);
				House house = new House(hId, hArea, hEstate, hUnitNumber, hFloor, hRoomNo, hAcreage, hDirection,
						hFitment, hIsDoubleAir, hLimit, hFacility, hPrice, hStatus, hImg, hAddress, hAddTime,
						hUpdateTime);
				list.add(house);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return null;
	}

	@Override
	public int add(House house) {
		String sql = "insert into house values (null , ? ,? , ? , ? , ?, ?, ?, ?, ?, ?, ?, ?, 1, ?, ?, now(), now()) ";
		Object obj[] = { house.gethArea(), house.gethEstate(), house.gethUnitNumber(), house.gethFloor(),
				house.gethRoomNo(), house.gethAcreage(), house.gethDirection(), house.gethFitment(),
				house.gethIsDoubleAir(), house.gethLimit(), house.gethFacility(), house.gethPrice(), house.gethImg(),
				house.gethAddress() };
		return DButils.sqlDML(sql, obj);
	}

	@Override
	public int delete(int id) {
		String sql = "delete from house where h_id = ?";
		Object obj[] = { id };
		return DButils.sqlDML(sql, obj);
	}

	@Override
	public House findById(int id) {
		String sql = "select * from house where h_id=?";
		Object obj[] = { id };
		ResultSet rs = DButils.sqlDQL(sql, obj);
		try {
			if (rs.next()) {
				Integer hId = rs.getInt(1);
				String hArea = rs.getString(2);
				String hEstate = rs.getString(3);
				String hUnitNumber = rs.getString(4);
				Integer hFloor = rs.getInt(5);
				String hRoomNo = rs.getString(6);
				String hAcreage = rs.getString(7);
				String hDirection = rs.getString(8);
				String hFitment = rs.getString(9);
				String hIsDoubleAir = rs.getString(10);
				Integer hLimit = rs.getInt(11);
				String hFacility = rs.getString(12);
				Double hPrice = rs.getDouble(13);
				Integer hStatus = rs.getInt(14);
				String hImg = rs.getString(15);
				String hAddress = rs.getString(16);
				Date hAddTime = rs.getDate(17);
				Date hUpdateTime = rs.getDate(18);
				House house = new House(hId, hArea, hEstate, hUnitNumber, hFloor, hRoomNo, hAcreage, hDirection,
						hFitment, hIsDoubleAir, hLimit, hFacility, hPrice, hStatus, hImg, hAddress, hAddTime,
						hUpdateTime);

				return house;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int update(House house) {
		String sql = "update house set h_area=?,h_estate=?,h_unitNumber=?, h_floor=?,h_roomNo=?,h_acreage=?,h_direction=?,h_fitment=?,h_isDoubleAir=?,h_limit=?,h_facility=?,h_price=?,h_img=?,h_address=? where h_id=?";
		Object obj[] = { house.gethArea(), house.gethEstate(), house.gethUnitNumber(), house.gethFloor(),
				house.gethRoomNo(), house.gethAcreage(), house.gethDirection(), house.gethFitment(),
				house.gethIsDoubleAir(), house.gethLimit(), house.gethFacility(), house.gethPrice(), house.gethImg(),
				house.gethAddress(), house.gethId() };
		return DButils.sqlDML(sql, obj);
	}

	@Override
	public int totalRecord() {
		String sql = "select count(*) from house";
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
	public List pageList(PageBean pb) {
		String sql = "select * from house limit ?,?";
		Object obj[] = { (pb.getPc() - 1) * pb.getRecord(), pb.getRecord() };
		ResultSet rSet = DButils.sqlDQL(sql, obj);
		List<House> list = new ArrayList<>();
		try {
			while (rSet.next()) {
				Integer hId = rSet.getInt(1);
				String hArea = rSet.getString(2);
				String hEstate = rSet.getString(3);
				String hUnitNumber = rSet.getString(4);
				Integer hFloor = rSet.getInt(5);
				String hRoomNo = rSet.getString(6);
				String hAcreage = rSet.getString(7);
				String hDirection = rSet.getString(8);
				String hFitment = rSet.getString(9);
				String hIsDoubleAir = rSet.getString(10);
				Integer hLimit = rSet.getInt(11);
				String hFacility = rSet.getString(12);
				Double hPrice = rSet.getDouble(13);
				Integer hStatus = rSet.getInt(14);
				String hImg = rSet.getString(15);
				String hAddress = rSet.getString(16);
				Date hAddTime = rSet.getDate(17);
				Date hUpdateTime = rSet.getDate(18);
				House house = new House(hId, hArea, hEstate, hUnitNumber, hFloor, hRoomNo, hAcreage, hDirection,
						hFitment, hIsDoubleAir, hLimit, hFacility, hPrice, hStatus, hImg, hAddress, hAddTime,
						hUpdateTime);
				list.add(house);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return null;
	}

	@Override
	public List<House> selShow(String section1) {
		String sql = "select * from house where h_estate like ? ";
		section1 = "%" + section1 + "%";
		Object obj[] = { section1 };
		ResultSet rSet = DButils.sqlDQL(sql, obj);
		List<House> list = new ArrayList<>();
		try {
			while (rSet.next()) {
				Integer hId = rSet.getInt(1);
				String hArea = rSet.getString(2);
				String hEstate = rSet.getString(3);
				String hUnitNumber = rSet.getString(4);
				Integer hFloor = rSet.getInt(5);
				String hRoomNo = rSet.getString(6);
				String hAcreage = rSet.getString(7);
				String hDirection = rSet.getString(8);
				String hFitment = rSet.getString(9);
				String hIsDoubleAir = rSet.getString(10);
				Integer hLimit = rSet.getInt(11);
				String hFacility = rSet.getString(12);
				Double hPrice = rSet.getDouble(13);
				Integer hStatus = rSet.getInt(14);
				String hImg = rSet.getString(15);
				String hAddress = rSet.getString(16);
				Date hAddTime = rSet.getDate(17);
				Date hUpdateTime = rSet.getDate(18);
				House house = new House(hId, hArea, hEstate, hUnitNumber, hFloor, hRoomNo, hAcreage, hDirection,
						hFitment, hIsDoubleAir, hLimit, hFacility, hPrice, hStatus, hImg, hAddress, hAddTime,
						hUpdateTime);
				list.add(house);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();

		}
		return null;

	}
}
