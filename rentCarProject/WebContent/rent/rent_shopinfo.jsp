<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<link rel="stylesheet" href="css/reservation.css" type="text/css" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="js/reservation.js"></script>



<div class="wrap_shop_info">
    <div class="top">
      <h1 class="storeInfo">지점 정보</h1>
    </div> 
    <h1 id="shop_info">${shopList.shopName}</h1>
    <table id="store_table">
        <tr>
            <th>주소</th>
            <td>${shopList.addr}</td>          
        </tr>
        <tr>
            <th>번호</th>
            <td>T.${shopList.phone}</td>
        </tr>
        <tr>
            <th>시간</th>
            <td>월~금:09:00~20:00<br>토~일:09:00~20:00</td>
        </tr>
        <tr>
            <th>교통</th>
            <td>제주특별자치도 제주시 용담이동 723<br>
                지도
            </td>
        </tr>
        
    </table>
    <div class="closeBtn">
        <button class="closeBtn">닫기</button>
    </div>
</div>

