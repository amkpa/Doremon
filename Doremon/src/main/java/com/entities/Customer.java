package com.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name = "customer")
public class Customer {
	@Id
	private int id;
	private String name;
	private String email;
	private String phone;
	private String Address;
	private Date date;
	
	private int booking_id;
	private String location;
	private String droneShot;
	

	/**
	 * 
	 */
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	/**
	 * @param id
	 * @param name
	 * @param email
	 * @param phone
	 * @param address
	 * @param date
	 */
	public Customer(int id, String name, String email, String phone, String address, Date date) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		Address = address;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
