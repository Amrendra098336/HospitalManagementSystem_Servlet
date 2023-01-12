package com.vedanta.validations;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@AllArgsConstructor
@Getter
@Setter
public class EmailValidation {

	public static boolean validateEmail(String email) {

		String regex = "^(.+)@(.+)$";
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(email);
		if (!matcher.matches() || email.trim().equals(""))
			return false;
		return true;
	}
	
	public static void main(String args[]) {
		System.out.println(validateEmail("Amrendra09@gmail.com"));
	}

}
