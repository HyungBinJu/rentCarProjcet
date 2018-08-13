<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<link rel="stylesheet" href="css/reservation.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="js/reservation.js"></script>
 <div class="wrap_reservation">

	<div id="option_div" >
		<div class="resDate">  
           <h1 style="font-size: 30px">옵션 및 할인 선택</h1>
           <p style="margin-top: 10px">부대장비 및 자차손해면책제도, 할인 항목 등을 선택하세요.</p><br>
           
           <p class="option_title">옵션/차량할인선택</p>
           <div class="saleTable">
               <table>
                    <tr>
                       <td colspan="2" style="background-color: azure">프로모션 및 쿠폰 할인 선택</td>
                   </tr>
                    <tr>
                       <td width="200px" style="background-color: azure">프로모션 할인</td>
                       <td>
                          <select class="cupon_select">
                              <option value="10">여름맞이 바캉스 쿠폰 10%</option>  
                              <option value="20">신규 회원 쿠폰 20%</option>    
                          </select>
                       </td>
                    </tr>
               </table>
           </div>
           <div class="insuranceTable" >
               <table>
                    <tr>
                       <td colspan="2" style="background-color: azure">자차손해면책제도</td>
                   </tr>
                    <tr>
                       <td width="200px" style="background-color: azure">자차손해면책제도</td>
                       <td>
                          <select class="insurance_select">
                              <option value="15000">일반자차(15,000)</option>  
                              <option value="30000">슈퍼자차(30,000)</option>    
                          </select>
                       </td>
                    </tr>
               </table>
           </div>
           <div class="optionTable">
               <table>
                    <tr>
                       <td colspan="2" style="background-color: azure">부대장비 선택</td>
                   </tr>
                    <tr>
                      <td width="200px" style="background-color: azure">네비게이션</td>
                       <td><input type="checkbox" style="width:15px;height:15px;border:1px;"></td>
                    </tr>
                    <tr>
                      <td style="background-color: azure">베이비 카시트</td>
                       <td><input type="checkbox" style="width:15px;height:15px;border:1px;"></td>
                    </tr>
                    <tr>
                      <td style="background-color: azure">유모차</td>
                       <td><input type="checkbox" style="width:15px;height:15px;border:1px;"></td>
                    </tr>
               </table>
           </div>
           <div class="option_btn">
               <div class="preBtn" id="preCar_btn">
                   <button>차종선택</button>
               </div>  
               <div class="nextBtn" id="nextQua_btn">
                   <button>약관동의</button>
               </div> 
           </div>
       </div>
	</div>
    <div class="subMenu">
    	<jsp:include page="reservation.jsp" flush="false"></jsp:include>
    </div>  
</div>
   