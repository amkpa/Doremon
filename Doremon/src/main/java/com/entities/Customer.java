package com.entities;


import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer {
	@Id
	private int id;
	private String first_name;
	private String last_name;
	private String phone;
	private String email;
	private String address;
	private Date date;
	@Column(name = "booking_id", unique = true)
	private int booking_id;
	private String location;
	private String drone;

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Customer( String first_name, String last_name, String phone, String email, String address, Date date,
			 String location, String drone) {
		super();
		this.id= new Random().nextInt(100);
		this.first_name = first_name;
		this.last_name = last_name;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.date = new Date();
		this.booking_id = new Random().nextInt(1512121212);
		this.location = location;
		this.drone = drone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getBooking_id() {
		return booking_id;
	}

	public void setBooking_id(int booking_id) {
		this.booking_id = booking_id;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDrone() {
		return drone;
	}

	public void setDrone(String drone) {
		this.drone = drone;
	}

}