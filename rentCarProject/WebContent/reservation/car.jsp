<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<style type="text/css">
@import url(//fonts.googleapis.com/earlyaccess/jejugothic.css);
*{margin:0; padding:0;} 
 header, nav, aside, section, article, footer, hgroup{display:block;} 
 html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a,  
 abbr, address, big, cite, code, del, dfn, em, font, img, ins,q, s, samp, small, strike,  
 strong, sub, sup, tt, var, b,u, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,  
 table, caption, tbody, tfoot, thead, tr, th, td { margin: 0; padding: 0; border: none 0; } 
 html, body { width:100%; height:100%; } 
 body { background-color:#fff;} 
 body, input, button, textarea {font-size:12px; font-family: "NanumGothic", Verdana, "돋움", Dotum, Helvetica, AppleGothic, Sans-serif; color:#444; } 
 h1, h2, h3, h4, h5, h6 { font-size:12px; text-align:left; } 
 img, fieldset, iframe { border:0 none;} 
 table, div { border-collapse: collapse;} 
 select, textarea { border: 1px solid #B7B6B6; background: #FFFFFF; color: #000000; font-size: 12px; vertical-align: middle; } 
 textarea { overflow:auto; } 
 select, input, img, li { vertical-align: middle; text-align:left;} 
 address, caption, cite, code, dfn, em, strong, th, var { font-style : normal; font-weight : normal; } 
 ul, li, ol { list-style-type: none;} 
 legend,  caption { display: none; } 
 hr { border-collapse:collapse; display:none; } 
 strong{font-weight:bold;} 

 .wrap{width:1080px;margin:0 auto; overflow:hidden;} 
 .subMenu{width: 20%;height: 600px; float:right;background-color:#083763;color:white;padding-top:50px;padding-left:20px;padding-right: 20px;}
 .img{display: inline-block;}
    *{
        font-family: 'Jeju Gothic', sans-serif;
    }
 hr { 
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
 } s
 .order{margin-top: 50px;}
 .resCar{width: 70%; height: 600px;float: left; margin-top: 30px;}
 .preBtn{display: inline-block;}
 .preBtn button{ width: 90px;padding: 10px; font-size: 15px; font-family: 'Jeju Gothic', sans-serif;}
 .nextBtn{display: inline-block; margin-left: 10px; }  
 .nextBtn button{ width: 90px;padding: 10px; font-size: 15px; font-family: 'Jeju Gothic', sans-serif;}
.btn{margin-top: 100PX; float: right;}

 .resStartDate, .resEndDate{display: inline;}
 .waring{margin-top: 30px;}
 .waringContent{background-color: azure;margin: 15px;padding: 18px}
 .selectType{background-color: azure;margin: 15px;padding: 23px}
    select{
        width: 120px;
        height: 30px;
    }
    input{
        width: 180px;
        height: 20px;
    }
 .order button{width: 50px;padding: 5px; font-size: 15px; font-family: 'Jeju Gothic', sans-serif;}
    
 table {
    width: 100%;
    border-top: 1px solid #083763;
    border-collapse: collapse;
  }
 td {
    border-bottom: 1px solid #083763;
    padding: 10px;
    text-align: center;
  }
</style>

<body>
   <div class="wrap">
      
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
               <table>
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
               <img src="waring.png" width="15px">알려드립니다<br>
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