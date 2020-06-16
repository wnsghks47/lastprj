package com.tech.mainPrj.dto;

public class ProductInfo {
	private int pnumber;
	private String pname;
	private String pbrand;
	private String pcategory;
	private String pinformation;
	private float pscore;
	private int front;
	private float back;
	private String prcount;
	
	public String getPrcount() {
		return prcount;
	}
	public void setPrcount(String prcount) {
		this.prcount = prcount;
	}
	public int getPnumber() {
		return pnumber;
	}
	public void setPnumber(int pnumber) {
		this.pnumber = pnumber;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPbrand() {
		return pbrand;
	}
	public void setPbrand(String pbrand) {
		this.pbrand = pbrand;
	}
	public String getPcategory() {
		return pcategory;
	}
	public void setPcategory(String pcategory) {
		this.pcategory = pcategory;
	}
	public String getPinformation() {
		return pinformation;
	}
	public void setPinformation(String pinformation) {
		this.pinformation = pinformation;
	}
	public float getPscore() {
		return pscore;
	}
	public void setPscore(float pscore) {
		this.pscore = pscore;
		this.front = (int) pscore;
		this.back = pscore - (float) front;			
	}
	public int getFront() {
		return front;
	}
	public float getBack() {
		return back;
	}

}
