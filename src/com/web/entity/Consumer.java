package com.web.entity;

import java.util.Date;

public class Consumer {
	private Integer CID;	// 消费者ID
	private String CNIKE;	// 昵称
	private String CNAME;	// 消费者名字
	private String PN;		// 电话
	private String ADDR;	// 地址
	private char   GENDER;	// 性别
	private String EMAIL;	// 邮箱
	private Date   BDAY;	// 生日
	private String PSWD;	// 密码
	
	public Integer getCID() {
		return CID;
	}
	public void setCID(Integer cID) {
		CID = cID;
	}
	public String getCNIKE() {
		return CNIKE;
	}
	public void setCNIKE(String cNIKE) {
		CNIKE = cNIKE;
	}
	public String getCNAME() {
		return CNAME;
	}
	public void setCNAME(String cNAME) {
		CNAME = cNAME;
	}
	public String getPN() {
		return PN;
	}
	public void setPN(String pN) {
		PN = pN;
	}
	public String getADDR() {
		return ADDR;
	}
	public void setADDR(String aDDR) {
		ADDR = aDDR;
	}
	public char getGENDER() {
		return GENDER;
	}
	public void setGENDER(char gENDER) {
		GENDER = gENDER;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public Date getBDAY() {
		return BDAY;
	}
	public void setBDAY(Date bDAY) {
		BDAY = bDAY;
	}
	public String getPSWD() {
		return PSWD;
	}
	public void setPSWD(String pSWD) {
		PSWD = pSWD;
	}
}
