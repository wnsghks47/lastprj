package com.tech.mainPrj.dto;

import java.sql.Date;

public class Replyqna1 {
private int	bno;
private int	rno;
private String	bcontent;
private String 	bwriter;
private Date reg_dt;
public int getBno() {
	return bno;
}
public void setBno(int bno) {
	this.bno = bno;
}
public int getRno() {
	return rno;
}
public void setRno(int rno) {
	this.rno = rno;
}
public String getBcontent() {
	return bcontent;
}
public void setBcontent(String bcontent) {
	this.bcontent = bcontent;
}
public String getBwriter() {
	return bwriter;
}
public void setBwriter(String bwriter) {
	this.bwriter = bwriter;
}
public Date getReg_dt() {
	return reg_dt;
}
public void setReg_dt(Date reg_dt) {
	this.reg_dt = reg_dt;
}


}
