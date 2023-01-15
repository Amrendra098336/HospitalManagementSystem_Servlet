package main;

import com.vedanta.dao.DoctorDao;
import com.vedanta.db.DBConnect;
import com.vedanta.entity.Doctor;

public class mains {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Doctor doctor = new Doctor("Raj", "Kumar", "1cdcdc", "1234567890", "dddfd", "mbbs", 5, "Cardiologist",
				"1234");
		DoctorDao doctorDao = new DoctorDao(DBConnect.getDbConnection());
		System.out.println(doctorDao.addDoctor(doctor));

	}

}
