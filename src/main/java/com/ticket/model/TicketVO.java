package com.ticket.model;


public class TicketVO implements java.io.Serializable{
	public Integer TicketID;
	public String  TicketName;
	public Integer TicketPrice;
	public String  TicketDescription;
	public byte[]  TicketImage;
	
	public Integer getTicketID() {
		return TicketID;
	}
	public void setTicketID(Integer TicketID) {
		this.TicketID = TicketID;
	}
	public String getTicketName() {
		return TicketName;
	}
	public void setTicketName(String TicketName) {
		this.TicketName = TicketName;
	}
	public Integer getTicketPrice() {
		return TicketPrice;
	}
	public void setTicketPrice(Integer TicketPrice) {
		this.TicketPrice = TicketPrice;
	}
	public String getTicketDescription() {
		return TicketDescription;
	}
	public void setTicketDescription(String TicketDescription) {
		this.TicketDescription = TicketDescription;
	}
	public byte[] getTicketImage() {
		return TicketImage;
	}
	public void setTicketImage(byte[] TicketImage) {
		this.TicketImage = TicketImage;
	}

}
