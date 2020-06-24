package com.web.entity;

public class OrderItem {
	private String OID;
	private Order order;
	private int LID;
	private Product luxury;
	private int NUM;
	private String COMMENT;
	public String getOID() {
		return OID;
	}
	public void setOID(String oID) {
		OID = oID;
	}
	public int getLID() {
		return LID;
	}
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Product getLuxury() {
		return luxury;
	}
	public void setLuxury(Product luxury) {
		this.luxury = luxury;
	}
	public void setLID(int lID) {
		LID = lID;
	}
	public int getNUM() {
		return NUM;
	}
	public void setNUM(int nUM) {
		NUM = nUM;
	}
	public String getCOMMENT() {
		return COMMENT;
	}
	public void setCOMMENT(String cOMMENT) {
		COMMENT = cOMMENT;
	}
}
