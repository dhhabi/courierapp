package org.preet.courier.model;

import javax.persistence.Embeddable;

@Embeddable
public class TrackingInfo {

	private String infoType;
	private String details;

	public TrackingInfo(){
		
	}
	
	public TrackingInfo(String infoType, String details){
		this.infoType = infoType;
		this.details = details;
	}

	public String getInfoType() {
		return infoType;
	}
	public void setInfoType(String infoType) {
		this.infoType = infoType;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	
	
}
