package com.sunny.todo.form;

import javax.validation.constraints.NotBlank;

public class UserForm {
	
    @NotBlank(message = "Username is required")
	private String username;
    @NotBlank(message = "Password is required")
	private String password;
    
	public UserForm() {
		super();
	}
	
	public UserForm(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
}
