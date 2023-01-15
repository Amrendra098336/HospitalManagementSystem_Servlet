package com.vedanta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.vedanta.entity.Doctor;

public class GetAllDoctor {
	
	private Connection connection;

	public GetAllDoctor(Connection connection) {
		this.connection = connection;
	}
	
	public List<Doctor> doctorList(){
		List<Doctor> list = new ArrayList<Doctor>();
		try {
			PreparedStatement getDoctor = connection.prepareStatement(SqlQueries.GETDOCTOR);
			Doctor doctor = null;
			ResultSet doctorResultSet = getDoctor.executeQuery();
			
			while (doctorResultSet.next()) {
				doctor = new Doctor();
				doctor.setId(doctorResultSet.getInt(1));
				doctor.setFirstName(doctorResultSet.getString(2));
				doctor.setLastName(doctorResultSet.getString(3));
				doctor.setEmail(doctorResultSet.getString(4));
				doctor.setPhone(doctorResultSet.getString(5));
				doctor.setDob(doctorResultSet.getString(6));
				doctor.setQualification(doctorResultSet.getString(7));
				doctor.setExperience(doctorResultSet.getInt(8));
				doctor.setSpecialist(doctorResultSet.getString(9));
				list.add(doctor);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		return list;
	}
	
	

}
