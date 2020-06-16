package com.tech.mainPrj.util;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import com.tech.mainPrj.dto.ReviewInfo;



public class ReviewListJson {
	public JSONObject json(ArrayList<ReviewInfo> data) {
		
		JSONObject list = new JSONObject();
		JSONArray array = new JSONArray();
		
		for (int i = 0; i < data.size(); i++) {	
			
			JSONObject obj = new JSONObject();
			
			Date date = data.get(i).getRdate();
			String rdate = new SimpleDateFormat("yyyy-MM-dd").format(date);
			
			obj.put("rnumber", data.get(i).getRnumber());
			obj.put("rid", data.get(i).getRid());
			obj.put("rtitle", data.get(i).getRtitle());
			obj.put("rdate", rdate);
			obj.put("rdec", data.get(i).getRdeclaration());
			obj.put("pnumber", data.get(i).getPnumber());
			
			array.put(obj);
			
		}
		
		list.put("array", array);
		
		return list;
	}
}
