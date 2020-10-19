package com.homme.model.entity;

public class CustomerVo {
	private int user_level;
	private String user_id;
	private String user_password;
	private String user_name;
	private String user_contact;
	private String user_addr;
	private String user_email;
	private int user_point;
	
	public int getUser_point() {
		return user_point;
	}

	public void setUser_point(int user_point) {
		this.user_point = user_point;
	}

	public CustomerVo(){
	}

	public int getUser_level() {
		return user_level;
	}

	public void setUser_level(int user_level) {
		this.user_level = user_level;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_contact() {
		return user_contact;
	}

	public void setUser_contact(String user_contact) {
		this.user_contact = user_contact;
	}

	public String getUser_addr() {
		return user_addr;
	}

	public void setUser_addr(String user_addr) {
		this.user_addr = user_addr;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	@Override
	public String toString() {
		return "CustomerVo [user_level=" + user_level + ", user_id=" + user_id + ", user_password=" + user_password
				+ ", user_name=" + user_name + ", user_contact=" + user_contact + ", user_addr=" + user_addr
				+ ", user_email=" + user_email + ", user_point=" + user_point + "]";
	}

	

	}