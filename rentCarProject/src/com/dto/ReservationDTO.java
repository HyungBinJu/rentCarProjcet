package com.dto;

public class ReservationDTO {

	/*
	rentid varchar2(8) NOT NULL,
	rentday varchar2(10) NOT NULL,
	returnd_day varchar2(10) NOT NULL,
	returnday varchar2(10),
	state varchar2(1),
	roption varchar2(12),
	insurance varchar2(10),
	userid varchar2(15) NOT NULL,
	carid varchar2(4) NOT NULL,
	shopid varchar2(4) NOT NULL,
	PRIMARY KEY (rentid)
	*/
	
	private String rentId;
	private String rentDay;
	private String returnDday;
	private String returnDay;
	private String state;
	private String rOption;
	private String insurance;
	
	public ReservationDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReservationDTO(String rentId, String rentDay, String returnDday, String returnDay, String state,
			String rOption, String insurance) {
		super();
		this.rentId = rentId;
		this.rentDay = rentDay;
		this.returnDday = returnDday;
		this.returnDay = returnDay;
		this.state = state;
		this.rOption = rOption;
		this.insurance = insurance;
	}

	public String getRentId() {
		return rentId;
	}

	public void setRentId(String rentId) {
		this.rentId = rentId;
	}

	public String getRentDay() {
		return rentDay;
	}

	public void setRentDay(String rentDay) {
		this.rentDay = rentDay;
	}

	public String getReturnDday() {
		return returnDday;
	}

	public void setReturnDday(String returnDday) {
		this.returnDday = returnDday;
	}

	public String getReturnDay() {
		return returnDay;
	}

	public void setReturnDay(String returnDay) {
		this.returnDay = returnDay;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getrOption() {
		return rOption;
	}

	public void setrOption(String rOption) {
		this.rOption = rOption;
	}

	public String getInsurance() {
		return insurance;
	}

	public void setInsurance(String insurance) {
		this.insurance = insurance;
	}

	@Override
	public String toString() {
		return "ReservationDTO [rentId=" + rentId + ", rentDay=" + rentDay + ", returnDday=" + returnDday
				+ ", returnDay=" + returnDay + ", state=" + state + ", rOption=" + rOption + ", insurance=" + insurance
				+ "]";
	}
	
	
	
	
}//end
