package com.vedanta.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.vedanta.entity.Specialist;

public class RetriveSpecialistDao {

	private Connection connection;

	public RetriveSpecialistDao(Connection connection) {
		this.connection = connection;
	}

	public List<Specialist> getAllSpecialist() {
		List<Specialist> list = new ArrayList<Specialist>();
		Specialist s = null;
		try {
			PreparedStatement getSpecialist = connection.prepareStatement(SqlQueries.GETSPECIALIST);
			ResultSet specialistList = getSpecialist.executeQuery();
			while (specialistList.next()) {
				s = new Specialist();
				s.setId(specialistList.getInt("ispecialsitId"));
				s.setSpecialistName(specialistList.getString("specialistType"));
				list.add(s);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
