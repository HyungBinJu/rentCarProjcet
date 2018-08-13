<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   

<link rel="stylesheet" href="css/reservation.css" type="text/css" />  
<script src="js/reservation.js"></script>

 
 <div class="wrap_reservation"> 
   <div id="car_div" >
      
       <div class="resCar">  
           <h1 style="font-size: 30px">차량선택</h1>
           <p style="margin-top: 10px">고객님께서 승차하실 차량을 선택하여 주세요.</p><br>
           <div class="selectType">
                   <select name="type" id="type" class="type" style="font-size: 13px">
                       <option value="경차">경차</option>
                       <option value="소형">소형</option>
                       <option value="중형">중형</option>
                       <option value="대형">대형</option>
                       <option value="SUV">SUV</option>
                   </select>
           </div> 
           
         <%--   <div class="carTable">
               <table id="car_table">
               <c:forEach var="carList" items="carList">
               <input type="hidden" name="shopId" value="${carList.shopId}">
               <input type="hidden" name="carId" value="${carList.carId}">
                  <tr>
                       <td><input type="radio" style="width:15px;height:15px;border:1px;"></td>
                       <td>${carList.image}</td>
                       <td>${carList.carName}</td>
                   </tr>
               </c:forEach> 
               </table>    
           </div> --%>
           <div class="carTable">
               <table id="car_table">
               <c:forEach var="carList" items="carList">
               <input type="hidden" name="shopId" value="">
               <input type="hidden" name="carId" value="">
                  <tr>
                       <td><input type="radio" style="width:15px;height:15px;border:1px;"></td>
                       <td>dd</td>
                       <td>dd</td>
                   </tr>
               </c:forEach> 
               </table>    
           </div>
         
           
           <div class="waring">
               <img src="../images/icon/waring.png" width="15px">알려드립니다<br>
               <div class="waringContent" style="margin-bottom: 50px">
			                대여자격 만 26세 이상, 운전경력 3년이상 차량 안내<br>
			                대형, 고급, 4륜, 승합, 제네시스쿠페  
                </div>
           </div>
           <div class="btn">
               <div class="preBtn" id="preDate_btn">
                   <button>날짜/지점</button>
               </div>  
               <div class="nextBtn" id="nextOpt_btn">
                   <button>옵션/할인</button>
               </div> 
           </div>
       </div>
	</div>
	
    <div class="subMenu">
    	<jsp:include page="reservation.jsp" flush="true"/>
    </div>   
</div>
   