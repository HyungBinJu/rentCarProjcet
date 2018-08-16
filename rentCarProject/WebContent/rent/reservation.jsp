<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<link rel="stylesheet" href="css/reservation.css" type="text/css" />  
<script src="js/reservation.js"></script>
	
<div class="subMenu2">
<form id="reservation_form" action="Complete" method="post">
	<input type="hidden" name="carid" value="${reservDTO.carId}">
	<input type="hidden" name="shopid" value="${reservDTO.shopId}">
	<input type="hidden" name="rentdate" value="${reservDTO.rentDate}">
	<input type="hidden" name="returnDate" value="${reservDTO.returnDate}">
	<input type="hidden" name="insurance" value="${reservDTO.insurance}">
	<input type="hidden" name="discountPrice" value="${reservDTO.price}">
	<input type="hidden" name="navigation" value="${reservDTO.navigation}">
	<input type="hidden" name="babyseat" value="${reservDTO.babySeat}">
	<input type="hidden" name="babycarriage" value="${reservDTO.babyCarriage}">
	<input type="hidden" name="userid" value="${reservDTO.userId}">

	
	
	<p class="sub_ib">차종명칭&nbsp;</p><span class="sub_ib" name="carName" id="carName">${carname}</span><br>
    <p class="sub_ib">대여일시&nbsp;</p><span class="sub_ib" name="rentDate" id="rentDate">${reservDTO.rentDate}</span><br>
    <p class="sub_ib">반납일시&nbsp;</p><span class="sub_ib" name="returnDate" id="returnDate">${reservDTO.returnDate}</span><br>
    <p class="sub_ib">대여지점&nbsp;</p><span class="sub_ib shop" name="shop" id="shop">${shopname}</span><br>
    <p class="sub_ib">반납지점&nbsp;</p><span class="sub_ib shop">${shopname}</span><br>
    <hr><br>
    <p class="option_p">할인내용</p>
    <input type="text" name="promotion" id="promotion" class="option_span" value="<c:if test="${!empty promotion}"/>${promotion}" readonly="readonly"><br>
    <p class="option_p">자차손해면책제도</p>
    <input type="text" name="insurance" id="insurance" class="option_span" value="<c:if test="${!empty insurance}"/>${insurance}" readonly="readonly"><br>
    <p class="option_p">부대장비</p>
    <input type="text" name="car_option" id="car_option" class="option_span" value="<c:if test="${!empty carOption}"/>${carOption}" readonly="readonly"><br>
    <hr><br>
    <p>정상금액&nbsp;</p><input type="text" class="price_input" id="price" name="price" value="<c:if test="${!empty price}"/>${price}" readonly="readonly"><br>
    <p>예약금액&nbsp;</p><input type="text" class="price_input" id="discount_price" name="discount_price" value="<c:if test="${!empty discountPrice}"/>${discountPrice}"readonly="readonly"><br>
    <div class="order">
        <button class="orderBtn" id="orderBtn" disabled="disabled">예약</button>
        <button type="reset" class="orderBtn" id="cancelBtn" disabled="disabled">취소</button>
    </div>
</form>
</div> 
        

   