<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<link rel="stylesheet" href="css/reservation.css" type="text/css" />  
<script src="js/reservation.js"></script>

	
     <div class="subMenu2">
          <p class="sub_ib">차종명칭&nbsp;</p><span class="sub_ib" name="carName" id="carName"></span><br>
          <p class="sub_ib">대여일시&nbsp;</p><span class="sub_ib" name="rentDate" id="rentDate"><c:if test="${!empty rentdate }">${rentdate}</c:if></span><br>
          <p class="sub_ib">반납일시&nbsp;</p><span class="sub_ib" name="returnDate" id="returnDate"><c:if test="${!empty returndate }">${returndate}</c:if></span><br>
          <p class="sub_ib">대여지점&nbsp;</p><span class="sub_ib shop" name="shop" id="shop"><c:if test="${!empty shopname}">${shopname}</c:if></span><br>
          <p class="sub_ib">반납지점&nbsp;</p><span class="sub_ib shop"><c:if test="${!empty shopname}">${shopname}</c:if> </span><br>
          <hr><br>
          <p>부대장비</p><br>
          <span name="option" id="option"></span><br>
          <p>자차손해면책제도</p><br>
          <span name="insure" id="insure"></span><br>
          <p>할인내용</p><br>
          <span></span><br>
          <hr><br>
          <p>정상금액&nbsp;</p><span></span><br>
          <p>예약금액&nbsp;</p><span name="price" id="price"></span><br>
          <div class="order">
              <button class="orderBtn">예약</button>
              <button class="cancelBtn">취소</button>
          </div>
      </div> 
        

   