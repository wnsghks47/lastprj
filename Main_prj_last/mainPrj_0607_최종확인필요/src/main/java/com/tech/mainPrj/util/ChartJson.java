package com.tech.mainPrj.util;

import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

import com.tech.mainPrj.dto.ChartInfo;

public class ChartJson {
	public JSONObject json(ArrayList<ChartInfo> data, ArrayList<Integer> pieAge, ArrayList<Integer> pieGender, ArrayList<Integer> pieSkin) {
		
		JSONObject obj = new JSONObject();
  		JSONArray cdate = new JSONArray();
  		JSONArray cnt0 = new JSONArray();
  		JSONArray cnt1 = new JSONArray();
  		JSONArray cnt2 = new JSONArray();
  		JSONArray cnt3 = new JSONArray();
  		JSONArray cnt4 = new JSONArray();
  		JSONArray cnt5 = new JSONArray();
  		JSONArray cnt6 = new JSONArray();
  		JSONArray cnt7 = new JSONArray();
  		JSONArray cnt8 = new JSONArray();
  		JSONArray cnt9 = new JSONArray();
  		JSONArray cnt10 = new JSONArray();
  		JSONArray cnt11 = new JSONArray();
  		JSONArray pieA = new JSONArray();
  		JSONArray pieG = new JSONArray();
  		JSONArray pieS = new JSONArray();
  		
  		for (int i = 0; i < data.size(); i++) {
  			
  			cdate.put(data.get(i).getCdate().substring(5));
			cnt0.put(data.get(i).getCnt0());
			cnt1.put(data.get(i).getCnt1());
			cnt2.put(data.get(i).getCnt2());
			cnt3.put(data.get(i).getCnt3());
			cnt4.put(data.get(i).getCnt4());
			cnt5.put(data.get(i).getCnt5());
			cnt6.put(data.get(i).getCnt6());
			cnt7.put(data.get(i).getCnt7());
			cnt8.put(data.get(i).getCnt8());
			cnt9.put(data.get(i).getCnt9());
			cnt10.put(data.get(i).getCnt10());
			cnt11.put(data.get(i).getCnt11());
  			
		}
  		
  		for (int i = 0; i < pieAge.size(); i++) {
			pieA.put(pieAge.get(i));
		}
  		
  		for (int i = 0; i < pieGender.size(); i++) {
			pieG.put(pieGender.get(i));
		}
  		
  		for (int i = 0; i < pieSkin.size(); i++) {
			pieS.put(pieSkin.get(i));
		}
  		
  		obj.put("cdate", cdate);
  		obj.put("cnt0", cnt0);
  		obj.put("cnt1", cnt1);
  		obj.put("cnt2", cnt2);
  		obj.put("cnt3", cnt3);
  		obj.put("cnt4", cnt4);
  		obj.put("cnt5", cnt5);
  		obj.put("cnt6", cnt6);
  		obj.put("cnt7", cnt7);
  		obj.put("cnt8", cnt8);
  		obj.put("cnt9", cnt9);
  		obj.put("cnt10", cnt10);
  		obj.put("cnt11", cnt11);
  		obj.put("pieAge", pieA);
  		obj.put("pieGender", pieG);
  		obj.put("pieSkin", pieS);
		
  		return obj;
  		
	}
}
