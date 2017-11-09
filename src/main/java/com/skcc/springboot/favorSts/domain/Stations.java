package com.skcc.springboot.favorSts.domain;

/**
 * @author HyunSub Shim
 * @since 1.0
 */
public class Stations {
	
	private String sid;
	private String sname;
    private String sowner;
    private String sphonenumber;  
    private String saddress;
    
    
    
    
    @Override
	public String toString() {
		return "Stations [sid=" + sid + ", sname=" + sname + ", sowner=" + sowner + ", sphonenumber=" + sphonenumber + ", saddress=" + saddress  + "]";
	}

    public String getSid() {
		return sid;
	}


	public void setSid(String sid) {
		this.sid = sid;
	}


	public String getSowner() {
		return sowner;
	}


	public void setSowner(String sowner) {
		this.sowner = sowner;
	}


	public String getSphonenumber() {
		return sphonenumber;
	}


	public void setSphonenumber(String sphonenumber) {
		this.sphonenumber = sphonenumber;
	}


	public String getSaddress() {
		return saddress;
	}


	public void setSaddress(String saddress) {
		this.saddress = saddress;
	}


	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}
    

}