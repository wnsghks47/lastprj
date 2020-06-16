package com.tech.mainPrj.dto;

public class Event {
	private int enumber;
	private String etitle;
	private String estartdate;
	private String eenddate;
	private String eventimg;
	private String src;

	public String getSrc() {
		return src;
	}

	public int getEnumber() {
		return enumber;
	}

	public void setEnumber(int enumber) {
		this.enumber = enumber;
	}

	public String getEtitle() {
		return etitle;
	}

	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}

	public String getEstartdate() {
		return estartdate;
	}

	public void setEstartdate(String estartdate) {
		this.estartdate = estartdate;
	}

	public String getEenddate() {
		return eenddate;
	}

	public void setEenddate(String eenddate) {
		this.eenddate = eenddate;
	}

	public String getEventimg() {
		return eventimg;
	}

	public void setEventimg(String eventimg) {
		this.eventimg = eventimg;
		int srcIndex = eventimg.indexOf("src");

		String src = "";

		if (srcIndex == -1) {

			src = "resources/img/wolf-background.png";

		} else {

			int startSrc = eventimg.indexOf("\"", srcIndex) + 1;
			int endtSrc = eventimg.indexOf("\"", startSrc);

			src = eventimg.substring(startSrc, endtSrc);

		}

		this.src = src;

	}

}
