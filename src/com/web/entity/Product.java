package com.web.entity;
import java.math.*;

public class Product {
	private Integer LID;
	private Integer AID;
	private String LNAME;
	private BigDecimal PRICE;
	private Integer RESTNUM;
	private String TYPE;
	private String INFOR;
	private String IMAGE;
	private Integer SALENUM;
	private Integer VIEWCOUNT;
	
	public Integer getLID() {
		return LID;
	}
	public void setLID(Integer lID) {
		LID = lID;
	}
	public Integer getAID() {
		return AID;
	}
	public void setAID(Integer aID) {
		AID = aID;
	}
	public String getLNAME() {
		return LNAME;
	}
	public void setLNAME(String lNAME) {
		LNAME = lNAME;
	}
	public BigDecimal getPRICE() {
		return PRICE;
	}
	public void setPRICE(BigDecimal pRICE) {
		PRICE = pRICE;
	}
	public Integer getRESTNUM() {
		return RESTNUM;
	}
	public void setRESTNUM(Integer rESTNUM) {
		RESTNUM = rESTNUM;
	}
	public String getTYPE() {
		return TYPE;
	}
	public void setTYPE(String tYPE) {
		TYPE = tYPE;
	}
	public String getINFOR() {
		return INFOR;
	}
	public void setINFOR(String iNFOR) {
		INFOR = iNFOR;
	}
	public String getIMAGE() {
		return IMAGE;
	}
	public void setIMAGE(String iMAGE) {
		IMAGE = iMAGE;
	}
	public Integer getSALENUM() {
		return SALENUM;
	}
	public void setSALENUM(Integer sALENUM) {
		SALENUM = sALENUM;
	}
	public Integer getVIEWCOUNT() {
		return VIEWCOUNT;
	}
	public void setVIEWCOUNT(Integer vIEWCOUNT) {
		VIEWCOUNT = vIEWCOUNT;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((LID == null) ? 0 : LID.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (LID == null) {
			if (other.LID != null)
				return false;
		} else if (!LID.equals(other.LID))
			return false;
		return true;
	}
	
	
}
