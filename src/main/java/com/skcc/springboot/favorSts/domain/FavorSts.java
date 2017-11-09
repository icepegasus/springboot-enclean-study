package com.skcc.springboot.favorSts.domain;

/**
 * @author HyunSub Shim
 * @since 1.0
 */
public class FavorSts {
	
	private String id;
	private String sid;
	private String sname;
    private String sowner;
    private String phonenumber;
    private String address;
    private String ischecked;
    
    
    @Override
	public String toString() {
		return "FavorSts [id=" + id + ", sid=" + sid + ", sname=" + sname + ", sowner=" + sowner + ", phonenumber=" + phonenumber + ", address=" + address  + ", ischecked=" + ischecked + "]";
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


	public String getPhonenumber() {
		return phonenumber;
	}


	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getSname() {
		return sname;
	}


	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIschecked() {
		return ischecked;
	}

	public void setIschecked(String ischecked) {
		this.ischecked = ischecked;
	}
	


}