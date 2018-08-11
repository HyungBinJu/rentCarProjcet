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
 } 
 .order{margin-top: 50px;}
 .resDate{width: 70%; height: 600px;float: left; margin-top: 30px;}
  .preBtn{display: inline-block;}
 .preBtn button{ width: 90px;padding: 10px; font-size: 15px; font-family: 'Jeju Gothic', sans-serif;}
 .nextBtn{display: inline-block; margin-left: 10px; }  
 .nextBtn button{ width: 90px;padding: 10px; font-size: 15px; font-family: 'Jeju Gothic', sans-serif;}
.btn{margin-top: 20PX; float: right;}
 .resStartDate, .resEndDate{display: inline;}
 .waring{margin-top: 30px;}
 .waringContent{background-color: azure;margin: 15px;padding: 18px}
 .selectType{background-color: azure;margin: 15px;padding: 23px}
    select{
        width: 180px;
        height: 22px;
    }
    input{
        width: 180px;
        height: 20px;
    }
 .order button{width: 50px;padding: 5px; font-size: 15px; font-family: 'Jeju Gothic', sans-serif;}
    
 table {
    width: 100%;
    border-top: 1px solid orange;
    border-collapse: collapse;
  }
 td {
    border-bottom: 1px solid #083763;
    padding: 10px;
    font-size: 15px;
     height: 22px;
  }
    .title{
        font-size: 20px;
        margin-top: 20px;
        margin-bottom: 20px;
    }
    .slaeTable,.insuranceTable{
        margin-bottom: 30px;
    }
    
</style>

<body>
   <div class="wrap">
      
       <div class="resDate">  
           <h1 style="font-size: 30px">옵션 및 할인 선택</h1>
           <p style="margin-top: 10px">부대장비 및 자차손해면책제도, 할인 항목 등을 선택하세요.</p><br>
           
           <p class="title">옵션/차량할인선택</p>
           <div class="slaeTable">
               <table>
                    <tr>
                       <td colspan="2" style="background-color: azure">프로모션 및 쿠폰 할인 선택</td>
                   </tr>
                    <tr>
                       <td width="200px" style="background-color: azure">프로모션 할인</td>
                       <td>
                          <select>
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
                          <select>
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