package com.example.model;

public class User {
	private String name;
	private String email;
	
	public User(String name, String email) {
		this.name = name;
		this.email = email;
	}
	
	// Getter & Setterb
	publuc String getName(String name) {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getEmail(String email) {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}