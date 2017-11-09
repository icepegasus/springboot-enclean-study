package com.skcc.springboot.user.domain;

/**
 * @author HyunSub Shim
 * @since 1.0
 */
public class User {

    private String id;
    private String name;
    private String phoneNumber;
    private String email;
    private String password;
    private String passwordConfirm;
    private String authority;


    
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", phoneNumber=" + phoneNumber + ", email=" + email + ", password="
				+ password + ", passwordConfirm=" + passwordConfirm + ", authority=" + authority + "]";
	}
	public String getPassword() {
		return password;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String getPasswordConfirm() {
		return passwordConfirm;
	}
	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
	}
	
	   
    public String getAuthority() {
		return authority;
	}


	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	
	

	


}