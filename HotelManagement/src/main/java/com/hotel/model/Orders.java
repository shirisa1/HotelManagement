package com.hotel.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Orders  {
	@Id
	private long orderid;
	private long custid;
	private long oroomid;
	public Orders(long orderid, long custid, long oroomid) {
		this.orderid = orderid;
		this.custid = custid;
		this.oroomid = oroomid;
	}
	public Orders() {

	}
	public long getOrderid() {
		return orderid;
	}
	public void setOrderid(long orderid) {
		this.orderid = orderid;
	}
	public long getCustid() {
		return custid;
	}
	public void setCustid(long custid) {
		this.custid = custid;
	}
	public long getOroomid() {
		return oroomid;
	}
	public void setOroomid(long oroomid) {
		this.oroomid = oroomid;
	}
	

	
}
