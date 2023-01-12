package com.vedanta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.vedanta.entity.Patient;

public class PatientLoginVerification {

	private Connection connection;

	public PatientLoginVerification(Connection connection) {
		this.connection = connection;
	}
	
	public Patient patientLogin(String email, String password) {
		Patient patient = null;
		try {
			PreparedStatement patientCredentialVerification = connection.prepareStatement(SqlQueries.PATIENTLOGIN);
			patientCredentialVerification.setString(1, email);
			patientCredentialVerification.setString(2, password);
			
			ResultSet patientDetails = patientCredentialVerification.executeQuery();
			 while(patientDetails.next()) {
				  patient = new Patient();
				  patient.setId(patientDetails.getInt("id"));
				  patient.setFirstName(patientDetails.getString("firstName"));
				  patient.setLastName(patientDetails.getString("lastName"));
				  patient.setEmail(patientDetails.getString("email"));
				  patient.setPassword(patientDetails.getString("password"));
			 }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return patient;
	}

}
