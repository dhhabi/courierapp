package org.preet.courier.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class MyOrder {
	@Id @GeneratedValue
	private int id;
	private String sender;
	private String receiver;	
	private String pickUpStreet;
	private String pickUpCity;
	private String pickUpZipCode;
	private String deliveryZipCode;
	@Temporal(TemporalType.DATE)
	private Date pickUpDate;
	private String pickUpComments;
	@Temporal(TemporalType.DATE)
	private Date deliveryDate;
	private String deliveryStreet;
	private String deliveryCity;
	private String deliveryComments;
	private String caller;
	private String reference;
	private String serviceType;
	private String approxWeight;
	private int noOfPieces;
	private String email;
	private String pickUpPhoneNumber;
	private String deliveryPhoneNumber;
	private String pickUpTime;
	private String deliveryTime;
	
	public String getPickUpTime() {
		return pickUpTime;
	}
	public void setPickUpTime(String pickUpTime) {
		this.pickUpTime = pickUpTime;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getPickUpStreet() {
		return pickUpStreet;
	}
	public void setPickUpStreet(String pickUpStreet) {
		this.pickUpStreet = pickUpStreet;
	}
	public String getPickUpCity() {
		return pickUpCity;
	}
	public void setPickUpCity(String pickUpCity) {
		this.pickUpCity = pickUpCity;
	}
	public String getPickUpZipCode() {
		return pickUpZipCode;
	}
	public void setPickUpZipCode(String pickUpZipCode) {
		this.pickUpZipCode = pickUpZipCode;
	}
	public String getDeliveryZipCode() {
		return deliveryZipCode;
	}
	public void setDeliveryZipCode(String deliveryZipCode) {
		this.deliveryZipCode = deliveryZipCode;
	}
	public Date getPickUpDate() {
		return pickUpDate;
	}
	public void setPickUpDate(Date pickUpDate) {
		this.pickUpDate = pickUpDate;
	}
	public String getPickUpComments() {
		return pickUpComments;
	}
	public void setPickUpComments(String pickUpComments) {
		this.pickUpComments = pickUpComments;
	}
	public Date getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public String getDeliveryStreet() {
		return deliveryStreet;
	}
	public void setDeliveryStreet(String deliveryStreet) {
		this.deliveryStreet = deliveryStreet;
	}
	public String getDeliveryCity() {
		return deliveryCity;
	}
	public void setDeliveryCity(String deliveryCity) {
		this.deliveryCity = deliveryCity;
	}
	public String getDeliveryComments() {
		return deliveryComments;
	}
	public void setDeliveryComments(String deliveryComments) {
		this.deliveryComments = deliveryComments;
	}
	public String getCaller() {
		return caller;
	}
	public void setCaller(String caller) {
		this.caller = caller;
	}
	public String getReference() {
		return reference;
	}
	public void setReference(String reference) {
		this.reference = reference;
	}
	public String getServiceType() {
		return serviceType;
	}
	public void setServiceType(String serviceType) {
		this.serviceType = serviceType;
	}
	public String getApproxWeight() {
		return approxWeight;
	}
	public void setApproxWeight(String approxWeight) {
		this.approxWeight = approxWeight;
	}
	public int getNoOfPieces() {
		return noOfPieces;
	}
	public void setNoOfPieces(int noOfPieces) {
		this.noOfPieces = noOfPieces;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPickUpPhoneNumber() {
		return pickUpPhoneNumber;
	}
	public void setPickUpPhoneNumber(String pickUpPhoneNumber) {
		this.pickUpPhoneNumber = pickUpPhoneNumber;
	}
	public String getDeliveryPhoneNumber() {
		return deliveryPhoneNumber;
	}
	public void setDeliveryPhoneNumber(String deliveryPhoneNumber) {
		this.deliveryPhoneNumber = deliveryPhoneNumber;
	}
	public String getDeliveryTime() {
		return deliveryTime;
	}
	public void setDeliveryTime(String deliveryTime) {
		this.deliveryTime = deliveryTime;
	}
	
	
	
}
