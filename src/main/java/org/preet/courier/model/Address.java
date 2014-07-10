package org.preet.courier.model;

import javax.persistence.Embeddable;

@Embeddable
public class Address {
	private String streetLineOne;
	private String streetLineTwo;
	private String city;
	private String zipCode;
	private String state;
	private String country;
	
	public String getStreetLineOne() {
		return streetLineOne;
	}
	public void setStreetLineOne(String streetLineOne) {
		this.streetLineOne = streetLineOne;
	}
	public String getStreetLineTwo() {
		return streetLineTwo;
	}
	public void setStreetLineTwo(String streetLineTwo) {
		this.streetLineTwo = streetLineTwo;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZipCode() {
		return zipCode;
	}
	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
}
