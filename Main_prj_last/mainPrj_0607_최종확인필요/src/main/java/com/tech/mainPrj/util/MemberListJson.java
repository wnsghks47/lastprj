package com.tech.mainPrj.util;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import com.tech.mainPrj.dto.MemberDto;


public class MemberListJson {
	public JSONObject json(ArrayList<MemberDto> data) {
		
		JSONObject list = new JSONObject();
		JSONArray array = new JSONArray();
		
		for (int i = 0; i < data.size(); i++) {	
			
			JSONObject obj = new JSONObject();
			
			Date date = data.get(i).getJoindate();
			String jdate = new SimpleDateFormat("yyyy-MM-dd").format(date);
			
			obj.put("mnum", data.get(i).getMnum());
			obj.put("id", data.get(i).getId());
			obj.put("mail", data.get(i).getMail());
			obj.put("phone", data.get(i).getPhone());
			obj.put("birth", data.get(i).getBirth());
			obj.put("skin", data.get(i).getSkintype());
			obj.put("gender", data.get(i).getGender());
			obj.put("rcount", data.get(i).getRcount());
			obj.put("joindate", jdate);
			obj.put("authority", data.get(i).getAuthority());
			obj.put("deccount", data.get(i).getDeccount());
			
			array.put(obj);
			
		}
		
		list.put("array", array);
		
		return list;
	}
}
