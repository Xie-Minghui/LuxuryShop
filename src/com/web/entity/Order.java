package com.web.entity;
import java.math.*;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class Order {
	private String  OID;			//订单ID
	private Integer CID;			//用户ID
	private Consumer consumer;		//用户信息
	private Timestamp  DATE;		//下单日期
	private String  PAY;			//支付方式
	private BigDecimal SUMPRICE;	//订单总价
	private Integer STATE;			//订单状态，0未支付，1已支付，2以发货
	private String NAME;			//收件人姓名
	private String PHONE;			//收件人手机号
	private String PROVINCE;		//收件省份
	private String CITY;			//收件城市
	private String DISTRICT;		//收件区县
	private String ADDR;			//收件详细地址
	private String REMARK;			//订单备注
	//一对多     一个订单下面有多个订单条目
	private List<OrderItem> orderItems = new ArrayList<>();
	public List<OrderItem> getOrderItems() {
		return orderItems;
	}
	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}
	public String getOID() {
		return OID;
	}
	public void setOID(String oID) {
		OID = oID;
	}
	public Integer getCID() {
		return CID;
	}
	public void setCID(Integer cID) {
		CID = cID;
	}
	public Consumer getConsumer() {
		return consumer;
	}
	public void setConsumer(Consumer consumer) {
		this.consumer = consumer;
	}
	public Timestamp getDATE() {
		return DATE;
	}
	public void setDATE(Timestamp dATE) {
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
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getPHONE() {
		return PHONE;
	}
	public void setPHONE(String pHONE) {
		PHONE = pHONE;
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
	public String getADDR() {
		return ADDR;
	}
	public void setADDR(String aDDR) {
		ADDR = aDDR;
	}
	public String getREMARK() {
		return REMARK;
	}
	public void setREMARK(String rEMARK) {
		REMARK = rEMARK;
	}
}
