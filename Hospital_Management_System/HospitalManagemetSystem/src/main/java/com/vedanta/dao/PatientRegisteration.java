package com.vedanta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.vedanta.entity.Patient;

import lombok.AllArgsConstructor;

@AllArgsConstructor
public class PatientRegisteration {
	
	private Connection connection;
	
	public boolean UserRegistration(Patient patient) {
		boolean isRegistered = false;
		
		try {
			
			PreparedStatement patientInsert = connection.prepareStatement(SqlQueries.PATIENTREGISTER);
			patientInsert.setString(1, patient.getFirstName());
			patientInsert.setString(2, patient.getLastName());
			patientInsert.setString(3, patient.getEmail());
			patientInsert.setString(4, patient.getPassword());

			int i = patientInsert.executeUpdate();
			isRegistered = (i==1) ? true : false;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return isRegistered;
	}
	

}
