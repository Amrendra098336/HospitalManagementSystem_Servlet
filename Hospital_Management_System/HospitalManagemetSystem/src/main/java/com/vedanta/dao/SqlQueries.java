package com.vedanta.dao;

public class SqlQueries {
	
	public static final String PATIENTREGISTER = "insert into Patient_Details(firstName, lastName, email, password) values(?,?,?,?)";
	public static final String PATIENTLOGIN = "select * from Patient_Details where email=? and password=? ";

}
