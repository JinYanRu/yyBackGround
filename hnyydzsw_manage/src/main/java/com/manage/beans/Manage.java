package com.manage.beans;

import java.io.Serializable;

public class Manage implements Serializable{

	private Integer id;
	
	private String name;
	
	private String phone;
	
	private String mesage;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMesage() {
		return mesage;
	}

	public void setMesage(String mesage) {
		this.mesage = mesage;
	}

	@Override
	public String toString() {
		return "Manage [id=" + id + ", name=" + name + ", phone=" + phone + ", mesage=" + mesage + "]";
	}

	public Manage() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Manage(Integer id, String name, String phone, String mesage) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
		this.mesage = mesage;
	}
	
	
}
