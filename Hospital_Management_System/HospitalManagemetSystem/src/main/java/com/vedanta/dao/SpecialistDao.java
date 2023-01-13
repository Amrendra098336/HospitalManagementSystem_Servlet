package com.vedanta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.vedanta.entity.Specialist;

public class SpecialistDao {
	
	private Connection connection;

	public SpecialistDao(Connection connection) {
		this.connection = connection;
	}
	
	public boolean addSpecialist(Specialist specialist) {
		boolean isInserted = false;
		int isSpecialistInserted = 0;
		
		try {
			PreparedStatement insertSpecialist = connection.prepareStatement(SqlQueries.ADDSPECIALIST);
			insertSpecialist.setString(1, specialist.getSpecialistName());
			isSpecialistInserted= insertSpecialist.executeUpdate();
			
			if(isSpecialistInserted == 1)
				isInserted = true;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return isInserted;
		
	}
	
	

}
