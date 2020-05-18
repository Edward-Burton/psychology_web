package cn.xhu.softwareengineering.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Map;

import cn.xhu.softwareengineering.bean.Area;
import cn.xhu.softwareengineering.bean.City;
import cn.xhu.softwareengineering.bean.Province;

public class DBaseUtil {

	public static Connection getConn(Map<String, Object> paramMap) {
		// JDBC 驱动名及数据库 URL
		String JDBC_DRIVER = (String) paramMap.get("driver");
		String DB_URL = (String) paramMap.get("url");

		// 数据库的用户名与密码，需要根据自己的设置
		String USER = (String) paramMap.get("user");
		String PASS = (String) paramMap.get("password");
		Connection conn = null;
		try {
			// 注册 JDBC 驱动
			Class.forName(JDBC_DRIVER);
			// 打开链接
			System.out.println("连接数据库...");
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			System.out.println("link success.");
		} catch (SQLException se) {
			// 处理 JDBC 错误
			se.printStackTrace();
		} catch (Exception e) {
			// 处理 Class.forName 错误
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * 插入数据库
	 * 
	 * @param params
	 * @param movieList
	 * @param c
	 */
	public static void deleteData(Connection c) {
		String sql = "delete * from area";
		PreparedStatement pstmt;
		try {
			pstmt = c.prepareStatement(sql);
			pstmt.executeLargeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public static void insertDate(List<Province> provinceList, Connection c) {
		try {
			for (int i = 0; i < provinceList.size(); i++) {
				String sql = "insert into area(area_code,area_name,area_level) values(?,?,?)";
				PreparedStatement pstmt = c.prepareStatement(sql);
				pstmt.setString(1, provinceList.get(i).getCode());
				pstmt.setString(2, provinceList.get(i).getName());
				pstmt.setInt(3, 1);
				pstmt.executeLargeUpdate();
				
				if(provinceList.get(i).getCityList()!=null&&provinceList.get(i).getCityList().size()!=0) {
					List<City> cityList = provinceList.get(i).getCityList();
					for(int j=0;j<cityList.size();j++) {
						sql ="insert into area(area_code,area_name,area_level,area_parent_code) values(?,?,?,?)";
						pstmt = c.prepareStatement(sql);
						pstmt.setString(1, cityList.get(j).getCode());
						pstmt.setString(2, cityList.get(j).getName());
						pstmt.setInt(3, 2);
						pstmt.setString(4, provinceList.get(i).getCode());
						pstmt.executeLargeUpdate();
						
						if(cityList.get(j).getAreaList()!=null&&cityList.get(j).getAreaList().size()!=0) {
							List<Area> areaList = cityList.get(j).getAreaList();
							for(int k=0;k<areaList.size();k++) {
								/*
								 * sql="insert into area(area_code,area_name,area_level,area_parent_code) values(?,?,?,?)"
								 * ;
								 * pstmt = c.prepareStatement(sql);
								 */
								
								pstmt.setString(1, areaList.get(k).getCode());
								pstmt.setString(2, areaList.get(k).getName());
								pstmt.setInt(3, 3);
								pstmt.setString(4, cityList.get(j).getCode());
								pstmt.executeLargeUpdate();
								
								
							}
						}
					}
				}
				
			}
			System.out.println("成功插入所有数据。");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/**
	 * 打印数据
	 * 
	 * @param c
	 */
	public static void printDate(Connection c) {
		Statement stmt = null;
		try {
			stmt = c.createStatement();
			String query = "select * from area";
			ResultSet resultSet = stmt.executeQuery(query);
			System.out.println("Code   Name   Level");

			// 打印数据
			while (resultSet.next()) {
				String code = resultSet.getString("area_code");
				String name = resultSet.getString("area_name");
				String level = resultSet.getString("area_level");

				System.out.println(code + "   " + name + "    " + level);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
