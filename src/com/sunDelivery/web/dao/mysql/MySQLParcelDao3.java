package com.sunDelivery.web.dao.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sunDelivery.web.dao.ParcelDao;
import com.sunDelivery.web.dao.ParcelDao2;
import com.sunDelivery.web.entity.Parcel;

public class MySQLParcelDao3 implements ParcelDao2{

	public List<Parcel> getList(String company, String visit) {
		String sql="";
		if(visit.equals("visit")&&company.equals("우체국")){

			sql = "SELECT * FROM PARCEL WHERE COMPANY=\"우체국\"AND COMDETAIL=\"우체국방문\" "+"order by BOX_WEIGHT";
		}
		else if(company.equals("우체국")){
		
			sql = "SELECT * FROM PARCEL WHERE COMPANY=\"우체국\"AND COMDETAIL=\"우체국일반\" "+"order by BOX_WEIGHT";
		}
		else {
			sql = "SELECT * FROM PARCEL WHERE COMPANY="+"\""+company+"\""+"order by BOX_WEIGHT";
			}
		List<Parcel> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/sun?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "smlab", "0916");
			PreparedStatement st = con.prepareStatement(sql);
		
			ResultSet rs = st.executeQuery();

			Parcel parcel = null;

			while (rs.next()) {
				parcel = new Parcel();
				parcel.setCompany(rs.getString("COMPANY"));
				parcel.setComdetail(rs.getString("COMDETAIL"));
				parcel.setPriceCode(rs.getString("PRICE_CODE"));
				parcel.setBoxSize(rs.getInt("BOX_SIZE"));
				parcel.setBoxWeigtht(rs.getInt("BOX_WEIGHT"));
				parcel.setSameCity(rs.getInt("SAME_CITY"));
				parcel.setOtherCity(rs.getInt("OTHER_CITY"));
				
				list.add(parcel);
			}

			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Parcel> getList(int page, String field, String query) {
		//String sql = "SELECT * FROM PARCEL where binary " + field + " LIKE ? order by cast(PRICE_CODE as unsigned) LIMIT ?,10";
		String sql = "SELECT * FROM PARCEL WHERE COMPANY=\"우체국\"AND COMDETAIL=\"우체국방문\" ";
		List<Parcel> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/sun?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "smlab", "0916");
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setString(1, "%" + query + "%");
			st.setInt(2, 10 * (page - 1));

			ResultSet rs = st.executeQuery();

			Parcel parcel = null;

			while (rs.next()) {
				parcel = new Parcel();
				//parcel.setCode(rs.getString("CODE"));
				parcel.setCompany(rs.getString("COMPANY"));
				parcel.setComdetail(rs.getString("COMDETAIL"));
				parcel.setPriceCode(rs.getString("PRICE_CODE"));
				parcel.setBoxSize(rs.getInt("BOX_SIZE"));
				parcel.setBoxWeigtht(rs.getInt("BOX_WEIGHT"));
				parcel.setSameCity(rs.getInt("SAME_CITY"));
				parcel.setOtherCity(rs.getInt("OTHER_CITY"));
				
				list.add(parcel);
			}

			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Parcel> getcompany() {

		String sql = "select distinct(company) FROM PARCEL group by COMPANY";
		List<Parcel> list = new ArrayList<>();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/sun?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "smlab", "0916");
			PreparedStatement st = con.prepareStatement(sql);
			ResultSet rs = st.executeQuery();

			Parcel parcel = null;

			while (rs.next()) {
				parcel = new Parcel();
				parcel.setCompany(rs.getString("COMPANY"));

				list.add(parcel);
			}

			rs.close();
			st.close();
			con.close();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	
}
