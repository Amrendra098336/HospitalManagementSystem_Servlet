package com.vedanta.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class DBConnect {
	public static Connection connection;

	//public static void main(String[] args) {
	//	System.out.println(getDbConnection());
	//}

	public static Connection getDbConnection() {

		if (connection == null) {
			ResourceBundle readDbProperties = ResourceBundle.getBundle("com/vedanta/db/dbConfig");
			String driverClass=readDbProperties.getString("driverClass");
			String url = readDbProperties.getString("url");
			String userId = readDbProperties.getString("userName");
			String password = readDbProperties.getString("password");
			try {
				Class.forName(driverClass);
				return DriverManager.getConnection(url, userId, password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		System.out.println(connection);
		return null;
	}

}
