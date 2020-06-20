package com.web.entity;

//import java.util.Date;

public class Consumer {
	private Integer CID;	// 消费者ID
	private String CNAME;	// 消费者名字
	private String PN;		// 电话
	private String ADDR;	// 地址
	private String   GENDER;	// 性别
	private String EMAIL;	// 邮箱
	private String   BDAY;	// 生日
	private String PSWD;	// 密码
	
	private String PROVINCE;//省份
	private String CITY;//城市
	private String DISTRICT;//区县
	
	public Integer getCID() {
		return CID;
	}
	public String getPROVINCE() {
		return PROVINCE;
	}
	public void setPROVINCE(String pROVINCE) {
		PROVINCE = pROVINCE;
	}
	public String getCITY() {
		return CITY;
	}
	public void setCITY(String cITY) {
		CITY = cITY;
	}
	public String getDISTRICT() {
		return DISTRICT;
	}
	public void setDISTRICT(String dISTRICT) {
		DISTRICT = dISTRICT;
	}
	public void setCID(Integer cID) {
		CID = cID;
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
	public String getGENDER() {
		return GENDER;
	}
	public void setGENDER(String gENDER) {
		GENDER = gENDER;
	}
	public String getEMAIL() {
		return EMAIL;
	}
	public void setEMAIL(String eMAIL) {
		EMAIL = eMAIL;
	}
	public String getBDAY() {
		return BDAY;
	}
	public void setBDAY(String bDAY) {
		BDAY = bDAY;
	}
	public String getPSWD() {
		return PSWD;
	}
	public void setPSWD(String pSWD) {
		PSWD = pSWD;
	}
}
