package com.tech.mainPrj.util;

import java.io.File;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

public class DeleteImg {
	public void deleteImg(String content, HttpServletRequest request) {
		
		String[] array = content.split("src");
		ArrayList<String> urlList = new ArrayList<String>();
		
		String uploadPath = request.getSession().getServletContext().getRealPath("/");
		
		for (int i = 0; i < array.length; i++) {
			
			int start = array[i].indexOf("\"") + 1;
			int end = array[i].indexOf("\"", start);
			
			try {
				
				String url = array[i].substring(start, end);
				
				url = url.replace("/", "\\");
				
				String path = uploadPath + url;
				
				urlList.add(path);
				
			} catch (Exception e) {
				
				continue;
			}
			
			
		}
		
		for (int i = 0; i < urlList.size(); i++) {
			
			File f = new File(urlList.get(i));		
			
			if (f.exists()) {
				f.delete();
			} else {
				
				continue;
			}
			
		}
		
	}
}
