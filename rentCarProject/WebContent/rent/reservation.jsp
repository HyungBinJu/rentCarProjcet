<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<link rel="stylesheet" href="css/reservation.css" type="text/css" />  
<script src="js/reservation.js"></script>
	
<div class="subMenu2">
<form id="reservation_form">
	<input type="hidden" name="carid" value="${reservDTO.carId}">
	<input type="hidden" name="shopid" value="${reservDTO.shopId}">
	<%-- ${reservDTO.carId}
	${reservDTO.shopId} --%>
	<%-- ${reservDTO.carId}${reservDTO.rentDate}${reservDTO.returnDate} --%>
	<p class="sub_ib">차종명칭&nbsp;</p><span class="sub_ib" name="carName" id="carName">${carname}</span><br>
    <p class="sub_ib">대여일시&nbsp;</p><span class="sub_ib" name="rentDate" id="rentDate">${reservDTO.rentDate}</span><br>
    <p class="sub_ib">반납일시&nbsp;</p><span class="sub_ib" name="returnDate" id="returnDate">${reservDTO.returnDate}</span><br>
    <p class="sub_ib">대여지점&nbsp;</p><span class="sub_ib shop" name="shop" id="shop">${shopname}</span><br>
    <p class="sub_ib">반납지점&nbsp;</p><span class="sub_ib shop">${shopname}</span><br>
    <hr><br>
    <p class="option_p">할인내용</p>
    <span id="promotion" class="option_span"></span><br>
    <p class="option_p">자차손해면책제도</p>
    <span name="insurance" id="insurance" class="option_span"></span><br>
    <p class="option_p">부대장비</p>
    <span name="car_option" id="car_option" class="option_span"></span><br>
    <hr><br>
    <p>정상금액&nbsp;</p><span id="price" name="price">${price}</span><br>
    <p>예약금액&nbsp;</p><span id="discount_price" name="discount_price"></span><br>
    <div class="order">
        <button class="orderBtn">예약</button>
        <button class="cancelBtn">취소</button>
    </div>
</form>
</div> 
        

   