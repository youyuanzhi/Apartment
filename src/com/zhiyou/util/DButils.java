package com.zhiyou.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DButils {
	static Connection con = JDBCUtils.getConnection();
	static PreparedStatement pst;
	static ResultSet rs;
/*
 *用來实现DQL查询功能
 * @param sql  sql模板
 * 
 * 
 */

	public static ResultSet sqlDQL(String sql,Object obj[]) {
		System.out.println("aa");
		 try {
			pst=con.prepareStatement(sql);
			System.out.println(con);
			for (int i = 0; i < obj.length; i++) {
				pst.setObject(i + 1, obj[i]);
				}
			rs=pst.executeQuery();
			return rs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	
	public static int sqlDML(String sql ,Object obj[] ){
		try {
			pst = con.prepareStatement(sql);
			for(int i = 0 ; i < obj.length ; i++){
				pst.setObject(i+1, obj[i]);
			}
			int num = pst.executeUpdate();
			return num;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
			return 0 ;
	}
	
	public static void closeAll(){
		try {
			if(rs != null){
				rs.close();
			}if (pst != null) {
				pst.close();
			}if (con != null) {
				con.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	
}
//	public static int sqlDML(String sql, Object obj[]) {
//		try {
//			pst = con.prepareStatement(sql);
//			for (int i = 0; i < obj.length; i++) {
//				pst.setObject(i + 1, obj[i]);
//			}
//			pst.executeBatch();
//			return pst.executeUpdate();
//		} catch (SQLException e) {
//
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		
//		return 0;
//	}
//
//
//	public static ResultSet sqlDQL(String sql, Object[] obj) {
//		try {
//			pst = con.prepareStatement(sql);
//			for (int i = 0; i < obj.length; i++) {
//				pst.setObject(i + 1, obj[i]);
//			}
//
//			return pst.executeQuery();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} finally {
////			close();
//		}
//		return null;
//	}
//
//
//	public static void close() {
//
//		try {
//			if (rs != null)
//				rs.close();
//			if (pst != null)
//				pst.close();
//			if (con != null)
//				con.close();
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//	}
// public static int[] batch() {
//	 try {
//		Statement pst = con.createStatement();
//			for (int i = 0; i < 10; i++) {
//				String name="name_"+i;
//				String password="pass_"+i;
//				String sql="insert into user values(null,'"+name+"','"+password+"')";
//				pst.addBatch(sql);
//			}
//			int i[] = pst.executeBatch();
//			return i ;
//		} catch (SQLException e) {
//
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		
//		return null;
//	
// }
//	
//	
//	
//	
//}
