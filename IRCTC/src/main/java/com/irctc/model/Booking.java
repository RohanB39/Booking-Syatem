package com.irctc.model;

import java.sql.Date;
import java.sql.Time;

public class Booking {
    private int id;
    private int UserId;
    private Time BookingTime;
    private String fromStation;
    private String toStation;
    private String travelClass;
    private String pnrStatus;
    private Date travelDate;
    private boolean disabilityConcession;
    private boolean flexibleWithDate;
    private boolean trainWithAvailableBerth;
    private boolean railwayPassConcession;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFromStation() {
		return fromStation;
	}
	public void setFromStation(String fromStation) {
		this.fromStation = fromStation;
	}
	public String getToStation() {
		return toStation;
	}
	public void setToStation(String toStation) {
		this.toStation = toStation;
	}
	public String getTravelClass() {
		return travelClass;
	}
	public void setTravelClass(String travelClass) {
		this.travelClass = travelClass;
	}
	public Date getTravelDate() {
		return travelDate;
	}
	public void setTravelDate(Date travelDate) {
		this.travelDate = travelDate;
	}
	public boolean isDisabilityConcession() {
		return disabilityConcession;
	}
	public void setDisabilityConcession(boolean disabilityConcession) {
		this.disabilityConcession = disabilityConcession;
	}
	public boolean isFlexibleWithDate() {
		return flexibleWithDate;
	}
	public void setFlexibleWithDate(boolean flexibleWithDate) {
		this.flexibleWithDate = flexibleWithDate;
	}
	public boolean isTrainWithAvailableBerth() {
		return trainWithAvailableBerth;
	}
	public void setTrainWithAvailableBerth(boolean trainWithAvailableBerth) {
		this.trainWithAvailableBerth = trainWithAvailableBerth;
	}
	public boolean isRailwayPassConcession() {
		return railwayPassConcession;
	}
	public void setRailwayPassConcession(boolean railwayPassConcession) {
		this.railwayPassConcession = railwayPassConcession;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public Time getBookingTime() {
		return BookingTime;
	}
	public void setBookingTime(Time bookingTime) {
		BookingTime = bookingTime;
	}
	public String getPnrStatus() {
		return pnrStatus;
	}
	public void setPnrStatus(String pnrStatus) {
		this.pnrStatus = pnrStatus;
	}
	
    
    
}