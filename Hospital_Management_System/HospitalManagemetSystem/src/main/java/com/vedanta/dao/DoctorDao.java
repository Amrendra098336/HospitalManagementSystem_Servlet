package com.vedanta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import com.vedanta.entity.Doctor;

public class DoctorDao {

	private Connection connection;

	public DoctorDao(Connection connection) {
		this.connection = connection;
	}

	public boolean addDoctor(Doctor doctor) {
		boolean isInserted = false;
		int isDoctorInserted = 0;

		try {
			PreparedStatement insertSpecialist = connection.prepareStatement(SqlQueries.DOCTORREGISTER);
			insertSpecialist.setString(1, doctor.getFirstName());
			insertSpecialist.setString(2, doctor.getLastName());
			insertSpecialist.setString(3, doctor.getEmail());
			insertSpecialist.setString(4, doctor.getPhone());
			insertSpecialist.setString(5, doctor.getDob());
			insertSpecialist.setString(6, doctor.getQualification());
			insertSpecialist.setInt(7, doctor.getExperience());
			insertSpecialist.setString(8, doctor.getSpecialist());
			insertSpecialist.setString(9, doctor.getPassword());
			isDoctorInserted = insertSpecialist.executeUpdate();

			if (isDoctorInserted == 1)
				isInserted = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return isInserted;

	}

}
