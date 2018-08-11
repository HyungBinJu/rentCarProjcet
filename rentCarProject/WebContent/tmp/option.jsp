<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="../css/reservation/reservation.css">
</head>
<body>
   <div class="wrap">
      
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
                              <option value="15000">일반자차</option>  
                              <option value="30000">슈퍼자차</option>    
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
                       <td><input type="radio" style="width:15px;height:15px;border:1px;"></td>
                    </tr>
                    <tr>
                      <td style="background-color: azure">베이비 카시트</td>
                       <td><input type="radio" style="width:15px;height:15px;border:1px;"></td>
                    </tr>
                    <tr>
                      <td style="background-color: azure">유모차</td>
                       <td><input type="radio" style="width:15px;height:15px;border:1px;"></td>
                    </tr>
               </table>
           </div>
           <div class="option_btn">
               <div class="preBtn">
                   <button>날짜/지점</button>
               </div>  
               <div class="nextBtn">
                   <button>옵션/할인</button>
               </div> 
           </div>
       </div>
       
       
        <div class="subMenu">
           <div class="subMenu2">
                <p>차종명칭&nbsp;</p><sapn></sapn><br>
                <p>대여일시&nbsp;</p><sapn></sapn><br>
                <p>반납일시&nbsp;</p><sapn></sapn><br>
                <p>대여지점&nbsp;</p><sapn></sapn><br>
                <p>반납지점&nbsp;</p><sapn></sapn><br>
                <hr><br>
                <p>부대장비</p><br>
                <sapn></sapn><br>
                <p>자차손해면책제도</p><br>
                <sapn></sapn><br>
                <p>할인내용</p><br>
                <sapn></sapn><br>
                <hr><br>
                <p>정상금액&nbsp;</p><sapn></sapn><br>
                <p>예약금액&nbsp;</p><sapn></sapn><br>
                <div class="order">
                    <button class="orderBtn">예약</button>
                    <button class="cancelBtn">취소</button>
                </div>
            </div> 
        </div>    
   </div> 
   
   
</body>
</html>