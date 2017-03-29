package com.sunDelivery.web.dao.mysql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.sunDelivery.web.dao.AdminDao;
import com.sunDelivery.web.entity.Admin;

public class MySQLAdminDao implements AdminDao{

	public Admin get(String id) {
		String sql = "SELECT * FROM ADMIN WHERE ID=?";
		Admin admin = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://211.238.142.84/sun?autoReconnect=true&amp;useSSL=false&characterEncoding=UTF-8";
			Connection con = DriverManager.getConnection(url, "smlab", "0916");
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);

			ResultSet rs = st.executeQuery();

			if (rs.next()) {
				admin=new Admin();
				admin.setId(rs.getString("ID"));
				admin.setPassword(rs.getString("PASSWORD"));
				admin.setEmail(rs.getString("EMAIL"));
			}

			rs.close();
			st.close();
			con.close();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return admin;
	}

}
