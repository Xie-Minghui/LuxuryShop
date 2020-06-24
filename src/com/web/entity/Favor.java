package com.web.entity;

public class Favor {
	private Integer CID;
	private Consumer consumer;
	private Integer LID;
	private Product luxury;
	
	public Consumer getConsumer() {
		return consumer;
	}
	public void setConsumer(Consumer consumer) {
		this.consumer = consumer;
	}
	public Product getLuxury() {
		return luxury;
	}
	public void setLuxury(Product luxury) {
		this.luxury = luxury;
	}
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
}
