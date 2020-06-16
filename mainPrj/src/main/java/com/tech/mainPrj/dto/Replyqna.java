package com.tech.mainPrj.dto;

import java.sql.Date;

public class Replyqna {
	private int qbid;
	private String qcate;
	private String qtitle;
	private String qcontent;
	private String tag;
	private int view_cnt;
	private String qreg_id;
	private Date qreg_dt;
	private Date qdit_dt;
	private String src;
	
	
	public String getSrc() {
		return src;
	}
	public int getQbid() {
		return qbid;
	}
	public void setQbid(int qbid) {
		this.qbid = qbid;
	}
	public String getQcate() {
		return qcate;
	}
	public void setQcate(String qcate) {
		this.qcate = qcate;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
int srcIndex = qcontent.indexOf("src");
		String src = "";
		
		if (srcIndex == -1) {
			
			src = "resources/img/wolf-background.png";
			
		} else {
			
			int startSrc = qcontent.indexOf("\"", srcIndex) + 1;
			int endtSrc = qcontent.indexOf("\"", startSrc);
			
			src = qcontent.substring(startSrc, endtSrc);
			
		}
				
		this.src = src;	
		
		
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public int getView_cnt() {
		return view_cnt;
	}
	public void setView_cnt(int view_cnt) {
		this.view_cnt = view_cnt;
	}
	public String getQreg_id() {
		return qreg_id;
	}
	public void setQreg_id(String qreg_id) {
		this.qreg_id = qreg_id;
	}
	public Date getQreg_dt() {
		return qreg_dt;
	}
	public void setQreg_dt(Date qreg_dt) {
		this.qreg_dt = qreg_dt;
	}
	public Date getQdit_dt() {
		return qdit_dt;
	}
	public void setQdit_dt(Date qdit_dt) {
		this.qdit_dt = qdit_dt;
	}
	
	
}
