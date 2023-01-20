package com.vedanta.entity;

public class Doctor {

	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String dob;
	private String qualification;
	private int experience;
	private String specialist;
	private String password;

	public Doctor() {
	}
	
	

	public Doctor(int id, String firstName, String lastName, String email, String phone, String dob,
			String qualification, int experience, String specialist, String password) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.qualification = qualification;
		this.experience = experience;
		this.specialist = specialist;
		this.password = password;
	}



	public Doctor(String firstName, String lastName, String email, String phone, String dob, String qualification,
			int experience, String specialist, String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.qualification = qualification;
		this.experience = experience;
		this.specialist = specialist;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getQualification() {
		return qualification;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}

	public String getSpecialist() {
		return specialist;
	}

	public void setSpecialist(String specialist) {
		this.specialist = specialist;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
