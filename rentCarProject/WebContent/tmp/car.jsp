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
	<div id="car_div">
      
       <div class="resCar">  
           <h1 style="font-size: 30px">차량선택</h1>
           <p style="margin-top: 10px">고객님께서 승차하실 차량을 선택하여 주세요.</p><br>
           <div class="selectType">
                   <select name="type" id="type" class="type" style="font-size: 13px">
                       <option value="고급">고급</option>
                       <option value="중형">중형</option>
                       <option value="소형">소형</option>
                   </select>
           </div> 
           
           <div class="carTable">
               <table id="car_table">
                  <tr>
                       <td><input type="radio" style="width:15px;height:15px;border:1px;"></td>
                       <td>Image</td>
                       <td>Name</td>
                   </tr>
                   <tr>
                       <td><input type="radio" style="width:15px;height:15px;border:1px;"></td>
                       <td>Image</td>
                       <td>Name</td>
                   </tr>
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
               <div class="preBtn">
                   <button>날짜/지점</button>
               </div>  
               <div class="nextBtn">
                   <button>옵션/할인</button>
               </div> 
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
                <hr  ><br>
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