package com.tech.mainPrj.util;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import com.tech.mainPrj.dto.Wish;

public class WishJson {
	public JSONObject json(ArrayList<Wish> data) {
		JSONObject wish = new JSONObject();
		JSONArray array = new JSONArray();
		
		for (int i = 0; i < data.size(); i++) {	
			
			JSONObject obj = new JSONObject();
			
			obj.put("mnum", data.get(i).getMnum());
			obj.put("pnumber", data.get(i).getPnumber());
			obj.put("wish", data.get(i).getWish());
			
			array.put(obj);
			
		}
		
		wish.put("array", array);
		
		return wish;
	}
}
