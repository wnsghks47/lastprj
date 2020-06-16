package com.tech.mainPrj.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Locale;

public class CalcAge {
	
	public String Calc(String bday) throws Exception {
		String age = "";

		SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");

		Calendar birth = new GregorianCalendar(Locale.KOREA);

		Calendar today = new GregorianCalendar(Locale.KOREA);

		Date birthday = fm.parse(bday);
		Date tday = new Date();

		birth.setTime(birthday);
		today.setTime(tday);

		int factor = 0;

		if (today.get(Calendar.DAY_OF_YEAR) < birth.get(Calendar.DAY_OF_YEAR)) {

			factor = -1;

		}

		int a = today.get(Calendar.YEAR) - birth.get(Calendar.YEAR) + factor;

		if (a < 20) {
			age = "10대";
		} else if (a < 30) {
			age = "20대";
		} else if (a < 40) {
			age = "30대";
		} else {
			age = "40대 ↑";
		}
		
		return age;
	}
}
