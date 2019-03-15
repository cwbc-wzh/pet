package com.lq.pet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB{
	public Connection getConn(){
		String driver = "com.mysql.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/pet";
		String user = "root";
		String password = "123456789";
		try {
			Class.forName(driver);
			return DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
