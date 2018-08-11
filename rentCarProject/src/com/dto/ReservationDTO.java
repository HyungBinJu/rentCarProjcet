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
	private String rentDate;
	private String returnDate;
	private String RealReturnDate;
	private String state;
	private String rOption;
	private String insurance;
	
	public ReservationDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReservationDTO(String rentId, String rentDate, String returnDate, String realReturnDate, String state,
			String rOption, String insurance) {
		super();
		this.rentId = rentId;
		this.rentDate = rentDate;
		this.returnDate = returnDate;
		RealReturnDate = realReturnDate;
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

	public String getRentDate() {
		return rentDate;
	}

	public void setRentDate(String rentDate) {
		this.rentDate = rentDate;
	}

	public String getReturnDate() {
		return returnDate;
	}

	public void setReturnDate(String returnDate) {
		this.returnDate = returnDate;
	}

	public String getRealReturnDate() {
		return RealReturnDate;
	}

	public void setRealReturnDate(String realReturnDate) {
		RealReturnDate = realReturnDate;
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
		return "ReservationDTO [rentId=" + rentId + ", rentDate=" + rentDate + ", returnDate=" + returnDate
				+ ", RealReturnDate=" + RealReturnDate + ", state=" + state + ", rOption=" + rOption + ", insurance="
				+ insurance + "]";
	}

	


	
}//end
