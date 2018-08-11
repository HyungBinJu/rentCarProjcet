package com.dto;

public class MemberDTO {
	/*
	userid varchar2(15) NOT NULL,
	username varchar2(16) NOT NULL,
	passwd varchar2(15) NOT NULL,
	post number(5,0),
	addr1 varchar2(50),
	addr2 varchar2(50),
	phone1 number(3,0) NOT NULL,
	phone2 number(4,0) NOT NULL,
	phone3 number(4,0) NOT NULL,
	birth varchar2(10),
	email1 varchar2(20),
	email2 varchar2(15),
	licensetype varchar2(10) NOT NULL,
	licensenum varchar2(20) NOT NULL,
	mlevel number NOT NULL,
	PRIMARY KEY (userid)
	*/
	
	 private String userId;
	 private String userName;
	 private String passwd;
	 private int post;
	 private String addr1;
	 private String addr2;
	 private int phone1;
	 private int phone2;
	 private int phone3;
	 private String birth;
	 private String email1;
	 private String email2;
	 private String licenseType;
	 private String licenseNum;
	 private int mLevel;
	
	 public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(String userId, String userName, String passwd, int post, String addr1, String addr2, int phone1,
			int phone2, int phone3, String birth, String email1, String email2, String licenseType, String licenseNum,
			int mLevel) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.passwd = passwd;
		this.post = post;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.birth = birth;
		this.email1 = email1;
		this.email2 = email2;
		this.licenseType = licenseType;
		this.licenseNum = licenseNum;
		this.mLevel = mLevel;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public int getPost() {
		return post;
	}

	public void setPost(int post) {
		this.post = post;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public int getPhone1() {
		return phone1;
	}

	public void setPhone1(int phone1) {
		this.phone1 = phone1;
	}

	public int getPhone2() {
		return phone2;
	}

	public void setPhone2(int phone2) {
		this.phone2 = phone2;
	}

	public int getPhone3() {
		return phone3;
	}

	public void setPhone3(int phone3) {
		this.phone3 = phone3;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getLicenseType() {
		return licenseType;
	}

	public void setLicenseType(String licenseType) {
		this.licenseType = licenseType;
	}

	public String getLicenseNum() {
		return licenseNum;
	}

	public void setLicenseNum(String licenseNum) {
		this.licenseNum = licenseNum;
	}

	public int getmLevel() {
		return mLevel;
	}

	public void setmLevel(int mLevel) {
		this.mLevel = mLevel;
	}

	@Override
	public String toString() {
		return "MemberDTO [userId=" + userId + ", userName=" + userName + ", passwd=" + passwd + ", post=" + post
				+ ", addr1=" + addr1 + ", addr2=" + addr2 + ", phone1=" + phone1 + ", phone2=" + phone2 + ", phone3="
				+ phone3 + ", birth=" + birth + ", email1=" + email1 + ", email2=" + email2 + ", licenseType="
				+ licenseType + ", licenseNum=" + licenseNum + ", mLevel=" + mLevel + "]";
	}
	 
	
	 

}//end
