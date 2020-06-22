package com.web.entity;
import java.math.*;

public class Order {
	private Integer CID;
	private Consumer consumer;
	private Integer LID;
	private Product product;
	public Consumer getConsumer() {
		return consumer;
	}
	public void setConsumer(Consumer consumer) {
		this.consumer = consumer;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	private String  OID;
	private Integer NUM;
	private String  DATE;
	private String  PAY;
	private BigDecimal SUMPRICE;
	private Integer STATE;
	private String COMMENT;
	
	public Integer getCID() {
		return CID;
	}
	public void setCID(Integer cID) {
		CID = cID;
	}
	public Integer getLID() {
		return LID;
	}
	public void setLID(Integer lID) {
		LID = lID;
	}
	public String getOID() {
		return OID;
	}
	public void setOID(String oID) {
		OID = oID;
	}
	public Integer getNUM() {
		return NUM;
	}
	public void setNUM(Integer nUM) {
		NUM = nUM;
	}
	public String getDATE() {
		return DATE;
	}
	public void setDATE(String dATE) {
		DATE = dATE;
	}
	public String getPAY() {
		return PAY;
	}
	public void setPAY(String pAY) {
		PAY = pAY;
	}
	public BigDecimal getSUMPRICE() {
		return SUMPRICE;
	}
	public void setSUMPRICE(BigDecimal sUMPRICE) {
		SUMPRICE = sUMPRICE;
	}
	public Integer getSTATE() {
		return STATE;
	}
	public void setSTATE(Integer sTATE) {
		STATE = sTATE;
	}
	public String getCOMMENT() {
		return COMMENT;
	}
	public void setCOMMENT(String cOMMENT) {
		COMMENT = cOMMENT;
	}
}
