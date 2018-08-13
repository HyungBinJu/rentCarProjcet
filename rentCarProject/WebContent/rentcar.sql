
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
create sequence board_seq;

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

insert into shop VALUES('J001','제주지점' ,null,'제주특별자치도 제주시 용담2동 용문로 62','064-726-3322',null);
insert into shop VALUES('J002','서귀포지점' ,null,'제주특별자치도 서귀포시 상예동','064-738-8255',null);
insert into shop VALUES('J003','함덕지점' ,null,'제주특별자치도 제주시 조천읍 함덕리 1008','064-728-3989',null);
insert into shop VALUES('J004','협재지점' ,null,'제주특별자치도 제주시 한림읍 협재리 2497-1','064-796-2404',null);

INSERT into car VALUES ('CK01', '경차', '올 뉴모닝', '기아','white', 15000, 'CK01.png', 'J001'); 
INSERT into car VALUES ('CK02', '경차', '레이', '기아','red', 15000, 'CK02.png', 'J001'); 
INSERT into car VALUES ('CS01', '경차', '스파크', '쉐보레','white', 15000, 'CS01.png', 'J002'); 
INSERT into car VALUES ('SH01', '소형', '엑센트', '현대','white', 20000, 'SH01.png', 'J002'); 
INSERT into car VALUES ('SH02', '소형', '아반떼', '현대','black', 20000, 'SH02.png', 'J001'); 
INSERT into car VALUES ('SS01', '소형', '크루즈', '쉐보레','black', 20000, 'SS01.png', 'J003'); 
INSERT into car VALUES ('MH01', '중형', '쏘나타', '현대','black', 30000, 'MH01.png', 'J003'); 
INSERT into car VALUES ('MK02', '중형', 'K5', '기아','white', 30000, 'MK02.png', 'J001'); 
INSERT into car VALUES ('MS01', '중형', '말리부', '쉐보레','white', 30000, 'MS01.png', 'J002'); 
INSERT into car VALUES ('LK01', '대형', 'K7', '기아','white', 50000, 'LK01.png', 'J002');
INSERT into car VALUES ('LK02', '대형', 'K9', '기아','black', 50000, 'LK02.png', 'J003');
INSERT into car VALUES ('LH01', '대형', '제네시스', '현대','black', 50000, 'LH01.png', 'J003');
INSERT into car VALUES ('VK01', 'SUV', '쏘렌토', '기아','black', 35000, 'VK01.png', 'J004');
INSERT into car VALUES ('VH01', 'SUV', '투싼', '현대','white', 35000, 'VH01.png', 'J004');
INSERT into car VALUES ('VH02', 'SUV', '싼타페', '현대','white', 35000, 'VH02.png', 'J004');