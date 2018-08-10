
/* Drop Tables */

DROP TABLE reservation CASCADE CONSTRAINTS;
DROP TABLE car CASCADE CONSTRAINTS;
DROP TABLE cupon CASCADE CONSTRAINTS;
DROP TABLE notice CASCADE CONSTRAINTS;
DROP TABLE qaboard CASCADE CONSTRAINTS;
DROP TABLE memberinfo CASCADE CONSTRAINTS;
DROP TABLE shop CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE car
(
	carid varchar2(4) NOT NULL,
	cartype varchar2(4) NOT NULL,
	carname varchar2(20) NOT NULL,
	manufactured_com varchar2(10),
	color varchar2(10),
	price number(7,0) NOT NULL,
	image varchar2(8),
	shopid varchar2(4) NOT NULL,
	PRIMARY KEY (carid)
);


CREATE TABLE cupon
(
	num varchar2(6) NOT NULL,
	dateofissue varchar2(10),
	used varchar2(1),
	discountrate number(2,0) NOT NULL,
	userid varchar2(15) NOT NULL,
	PRIMARY KEY (num)
);


CREATE TABLE memberinfo
(
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
);


CREATE TABLE notice
(
	num number(5,0) NOT NULL,
	title varchar2(30),
	content varchar2(1000),
	writeday varchar2(10),
	userid varchar2(15) NOT NULL,
	PRIMARY KEY (num)
);


CREATE TABLE qaboard
(
	num number(7,0) NOT NULL,
	title varchar2(50) NOT NULL,
	content varchar2(500),
	writeday varchar2(10),
	type varchar2(10),
	userid varchar2(15) NOT NULL,
	PRIMARY KEY (num)
);


CREATE TABLE reservation
(
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
);


CREATE TABLE shop
(
	shopid varchar2(4) NOT NULL,
	shopname varchar2(16),
	carid varchar2(4),
	addr varchar2(100),
	phone varchar2(12),
	map varchar2(15),
	PRIMARY KEY (shopid)
);



/* Create Foreign Keys */

ALTER TABLE reservation
	ADD FOREIGN KEY (carid)
	REFERENCES car (carid)
;


ALTER TABLE cupon
	ADD FOREIGN KEY (userid)
	REFERENCES memberinfo (userid)
;


ALTER TABLE notice
	ADD FOREIGN KEY (userid)
	REFERENCES memberinfo (userid)
;


ALTER TABLE qaboard
	ADD FOREIGN KEY (userid)
	REFERENCES memberinfo (userid)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (userid)
	REFERENCES memberinfo (userid)
;


ALTER TABLE car
	ADD FOREIGN KEY (shopid)
	REFERENCES shop (shopid)
;


ALTER TABLE reservation
	ADD FOREIGN KEY (shopid)
	REFERENCES shop (shopid)
;



