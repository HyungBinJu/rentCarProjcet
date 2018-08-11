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
 .qua{width: 70%; height: 600px;float: left; margin-top: 30px;}
 .quaContent{overflow-y: scroll; height: 500px; margin-top: 20px;}
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
     margin-bottom: 20px;
  }
    th{
        font-size: 14px;
        background-color: azure;
    }
 th, td {
    border-bottom: 1px solid #083763;
    padding: 10px;
    text-align: center;
     height: 25px;
  }
    .quaTitle{
        font-size: 30px;
        color: darkorange;
    }  
    .title{font-size: 18px;margin-top: 20px; margin-bottom: 10px;}
    p{padding: 3px;}
    .pText{color: dimgray; padding-left: 10px;}
    
    .pWaring{
        display: inline-block;
        color: darkorange;
        font-size: 15px;
    }
    .radio{
        height: 15px;
        width: 15px;
    }
    .waringBox{margin-top: 15px;}
</style>

<body>
   <div class="wrap">
      
       <div class="qua">  
           <h1 class="quaTitle">대여하시기 전 꼭 체크하세요!</h1>
           <div class="quaContent">
               <p class="title"> 대여 자격 기준 </p>
               <p>운전면허 (도로교통법상 유효한 운전면허증 소지자 )</p>
               <p>01. 승용차, 9인승 이하 승합차 : 2종 보통면허 이상</p>
               <p>02. 11인승 이상 승합차 : 1종 보통면허 이상</p>
               <p> 03. 외국인의 경우에는 국제 운전 면허증과 로컬면허증 동시 소지자에 한함.</p>
               <p> * 로컬 면허증 - 해당 국가에서 발급된 면허증.</p>
               <p> 04. 운전자 등록 : 실 운전자 포함 제2운전자까지 등록 가능</p>
               <p>  (운전자 자격은 대여자격과 동일하며, 운전면허증을 지참하시고 지점으로 동행방문 하셔야 등록이 가능합니다.)</p>
               <p>  05. 면허재취득하시고 1년이 안된 경우에는 반드시 운전경력면허증이나 공항내 자치경찰대에 가셔서 이전 면허확인증을 </p>
               <p>발급받으시길 바랍니다.</p>
                <p class="title"> 제주기준 </p>
                    <table>
                        <tr>
                            <th>차량종류</th>
                            <th>차량종류</th>
                            <th>차량종류</th>
                        </tr>
                        <tr>
                            <td>소형,중형,SUV 차량</td>
                            <td>만 21세 이상</td>
                            <td>운전경력 1년이상</td>
                        </tr>
                        <tr>
                            <td>대형, 고급, 승합, SUV,<br>제네시스쿠페</td>
                            <td>만 26세 이상</td>
                            <td>운전경력 3년이상</td>
                        </tr>
                        <tr>
                            <td>승합차량<br>15인승,SUV차량</td>
                            <td>만 30세 이상</td>
                            <td>운전경력 3년이상<br>대형</td>
                        </tr>
                    </table>
                    <p>01. 차량 대여 기준 연령 및 운전경력은 운전면허증 정보에 준합니다.</p>
                    <p> 02. 본인 명의의 유효한 신용카드 및 AJ렌터카 시스템에서 통용되는 결제 수단으로 가능합니다.</p>
                    <p> 03.신용카드 이외에 체크카드로 결제 시에는 신용정보조회 동의를 요청드릴 수 있습니다.</p>
                    <p class="pText">
                           * 신용정보조회는 개인신용도에는 영향을 미치지 않는 단순 조회입니다.<br>
                           **신용정보조회 시 아래 등급에 따라 대여가 불가할 수도 있습니다.<br>
                           1~7등급 - 대여가능<br>
                           8~9등급 - 연체및 개인파산에 대한 기록이 있으면 대여불가<br>
                           10등급 - 대여불가<br>
                    </p>

                   <p>04. 신용카드를 소유하고 계심에도 불구하고 그 사용을 원치 않으시는 경우,</p>
                   <p> 차량 대여 시 일단 신용카드로 결제하시고, 반납 시신용카드 승인을 취소하고 체크카드로 재정산하실 수 있습니다.</p>
                   <p> 05. 차량 대여료 결제 조건은 단기 대여의 경우에 해당되며, 중/장기 대여 시에는 별도의 대여 조건 및 결제 조건이 적용됩니다.</p>
               <p class="title"> 보험 </p>
                   
                   <p>대여요금에는 종합보험(자손, 대인, 대물)이 포함되어 있으며,</p>
                   <p>차량손해면책제도는 차량 인수 시 해당 지점에서 추가로 가입할 수 있습니다.</p>
                   <p>차량손해면책제도는 1일 단위로 운영되오니 이용에 참고하여 주시기 바랍니다.</p>
                   <p>등록하신 제2운전자까지 동일한 내용의 보험혜택을 받으실 수 있습니다.</p>

                       <p class="pText">(단, 계약서상 등록되지 않은 운전자의 경우, 종합보험 및 차량손해면책제도의 보험혜택을 받으실 수 없습니다.)</p>

                   <p>휴차보상 : 차량손해 면책제도 가입 여부와 관계없이 사고로 인하여 차량이 휴차할 경우에는 차량 운영의 차질로 인하여</p>
                   <p>발생한 수리기간동안 대여요금의 50%에 해당하는 휴차보상료가 청구되며, 이는 임차인이 배상하여야 합니다.</p>
                   <p class="title"> 결제조건 </p>
                   <p>본인명의 신용카드 이외에 체크카드, 직불카드 등으로 결제 시에는 신용정보조회 동의를 요청드릴 수 있습니다.</p>

                         <p class="pText">(단, 본 신용정보조회는 개인 신용도에 영향을 미치지 않는 단순 조회이며 조회결과 신용상의 문제가 발견될 경우 대여가 불가능합니다.)</p>

                   <p>본인명의 신용카드를 소유하고 계심에도 불구하고 그 사용을 원치 않으시는 경우, 차량 대여시 일단 신용카드로 결제하시고,</p> 
                   <p>반납시 신용카드 승인을 취소하고 체크카드나 직불카드로 재정산하실 수 있습니다.</p>
               
           </div>
           <div class="waringBox">
               <input type="radio" class="radio"><p class="pWaring">대여자격 기준 및 보험, 결제조건을 확인하였고 이에 동의합니다.</p>
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