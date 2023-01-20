package com.vedanta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.vedanta.entity.Doctor;

public class UpdateDoctorDao {

	private Connection connection;

	public UpdateDoctorDao(Connection connection) {
		this.connection = connection;
	}

	public boolean updateDoctor(Doctor doctor) {
		boolean isUpdated = false;
		int isDoctorUpdated = 0;
		
		//"update doctor set lastName=?, email=?, phone=?, qualification=?, experience=?, specialist=?, password=? where id=?";

		try {
			PreparedStatement insertSpecialist = connection.prepareStatement(SqlQueries.UPDATEDOCTOR);
			insertSpecialist.setString(1, doctor.getLastName());
			insertSpecialist.setString(2, doctor.getEmail());
			insertSpecialist.setString(3, doctor.getPhone());
			insertSpecialist.setString(4, doctor.getQualification());
			insertSpecialist.setInt(5, doctor.getExperience());
			insertSpecialist.setString(6, doctor.getSpecialist());
			insertSpecialist.setString(7, doctor.getPassword());
			insertSpecialist.setInt(8, doctor.getId());
			isDoctorUpdated = insertSpecialist.executeUpdate();

			if (isDoctorUpdated == 1)
				isUpdated = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return isUpdated;

	}

}
