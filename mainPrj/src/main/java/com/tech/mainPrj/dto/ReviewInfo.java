package com.tech.mainPrj.dto;

import java.sql.Date;

public class ReviewInfo {
	private int rnumber;
	private int pnumber;
	private int rgroup;
	private int rstep;
	private int rindent;
	private String rtitle;
	private int rscore;
	private String rcontent;
	private Date rdate;
	private String rid;
	private String rage;
	private String rgender;
	private String rskin;
	private int rlike;
	private int rdislike;
	private int rdeclaration;
	private String src;
	
	
	public int getRnumber() {
		return rnumber;
	}
	public void setRnumber(int rnumber) {
		this.rnumber = rnumber;
	}
	public int getPnumber() {
		return pnumber;
	}
	public void setPnumber(int pnumber) {
		this.pnumber = pnumber;
	}
	public int getRgroup() {
		return rgroup;
	}
	public void setRgroup(int rgroup) {
		this.rgroup = rgroup;
	}
	public int getRstep() {
		return rstep;
	}
	public void setRstep(int rstep) {
		this.rstep = rstep;
	}
	public int getRindent() {
		return rindent;
	}
	public void setRindent(int rindent) {
		this.rindent = rindent;
	}
	public String getRtitle() {
		return rtitle;
	}
	public void setRtitle(String rtitle) {
		this.rtitle = rtitle;
	}
	public int getRscore() {
		return rscore;
	}
	public void setRscore(int rscore) {
		this.rscore = rscore;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
		
		int srcIndex = rcontent.indexOf("src");
		
		String src = "";
		
		if (srcIndex == -1) {
			
			src = "resources/img/wolf-background.png";
			
		} else {
			
			int startSrc = rcontent.indexOf("\"", srcIndex) + 1;
			int endtSrc = rcontent.indexOf("\"", startSrc);
			
			src = rcontent.substring(startSrc, endtSrc);
			
		}
				
		this.src = src;	
	}
	public Date getRdate() {
		return rdate;
	}
	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRage() {
		return rage;
	}
	public void setRage(String rage) {
		this.rage = rage;
	}
	public String getRgender() {
		return rgender;
	}
	public void setRgender(String rgender) {
		this.rgender = rgender;
	}
	public String getRskin() {
		return rskin;
	}
	public void setRskin(String rskin) {
		this.rskin = rskin;
	}
	public int getRlike() {
		return rlike;
	}
	public void setRlike(int rlike) {
		this.rlike = rlike;
	}
	public int getRdislike() {
		return rdislike;
	}
	public void setRdislike(int rdislike) {
		this.rdislike = rdislike;
	}
	public int getRdeclaration() {
		return rdeclaration;
	}
	public void setRdeclaration(int rdeclaration) {
		this.rdeclaration = rdeclaration;
	}
	public String getSrc() {
		return src;
	}
	
}
