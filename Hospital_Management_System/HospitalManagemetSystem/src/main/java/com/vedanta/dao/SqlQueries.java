package com.vedanta.dao;

public class SqlQueries {

	public static final String PATIENTREGISTER = "insert into Patient_Details(firstName, lastName, email, password) values(?,?,?,?)";
	public static final String PATIENTLOGIN = "select * from Patient_Details where email=? and password=? ";
	public static final String ADDSPECIALIST = "insert into specialsit(specialistType) values(?)";
	public static final String GETSPECIALIST = "select * from specialsit";
	public static final String DOCTORREGISTER = "insert into doctor(firstName, lastName, email, phone, dob, qualification, experience, specialist, password) values(?,?,?,?,?,?,?,?,?)";
	public static final String GETDOCTOR = "select * from doctor order by id desc";
	public static final String GETSPECIFICDOCTOR = "select * from doctor where id =?";
	public static final String UPDATEDOCTOR = "update doctor set lastName=?, email=?, phone=?, qualification=?, experience=?, specialist=?, password=? where id=?";
	
}
