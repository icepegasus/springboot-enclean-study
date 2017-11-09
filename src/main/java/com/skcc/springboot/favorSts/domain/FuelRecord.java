package com.skcc.springboot.favorSts.domain;

/**
 * @author HyunSub Shim
 * @since 1.0
 */
public class FuelRecord {
	
	private String id;
	private String fueldate ;
    private String station ;
    private String payment ;
    private String totalpoint ;
    
    
    @Override
	public String toString() {
		return "FuelRecord [id=" + id + ", fueldate=" + fueldate + ", station=" + station + ", payment=" + payment + ", totalpoint=" + totalpoint  + "]";
	}

    public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getFueldate() {
		return fueldate;
	}


	public void setFueldate(String fueldate) {
		this.fueldate = fueldate;
	}


	public String getStation() {
		return station;
	}


	public void setStation(String station) {
		this.station = station;
	}


	public String getPayment() {
		return payment;
	}


	public void setPayment(String payment) {
		this.payment = payment;
	}


	public String getTotalpoint() {
		return totalpoint;
	}


	public void setTotalpoint(String totalpoint) {
		this.totalpoint = totalpoint;
	}
    

}