package com.zhiyou.util;

import java.sql.Connection;
import java.sql.SQLException;

import com.mchange.v2.c3p0.ComboPooledDataSource;

public class JDBCUtils {
	static Connection connection;
	
	public static Connection getConnection() {
		ComboPooledDataSource cd = new ComboPooledDataSource();
		try {
			String jdbc = "com.mysql.jdbc.Driver";
			connection = cd.getConnection();
			return connection; 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
