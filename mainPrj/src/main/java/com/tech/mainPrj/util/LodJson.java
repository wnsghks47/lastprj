package com.tech.mainPrj.util;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import com.tech.mainPrj.dto.LikeOrDislike;



public class LodJson {
	public JSONObject json(ArrayList<LikeOrDislike> data) {
		JSONObject lod = new JSONObject();
		JSONArray array = new JSONArray();
		
		for (int i = 0; i < data.size(); i++) {	
			
			JSONObject obj = new JSONObject();
			
			obj.put("mnum", data.get(i).getMnum());
			obj.put("rnumber", data.get(i).getRnumber());
			obj.put("lod", data.get(i).getLod());
			obj.put("dec", data.get(i).getDeclaration());
			
			array.put(obj);
			
		}
		
		lod.put("array", array);
		
		return lod;
	}
}
