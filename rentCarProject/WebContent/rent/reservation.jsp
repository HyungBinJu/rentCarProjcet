<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <meta charset="UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script>
$(function() {
    $( "#resStartDate" ).datepicker({ 
    	showOn:"both",
		buttonImage: "images/rent/a.jpg",
		buttonImageOnly: true,
		changeMonth: true,
		changeYear: true,
		nextText: '다음달',
		prevText: '이전달',
		minDate: 0,
        maxDate: '+3M',
        dateFormat:"yy-mm-dd"
    });
    
    $( "#resEndDate" ).datepicker({
    	showOn:"both",
		buttonImage: "images/rent/a.jpg",
		buttonImageOnly: true,
		changeMonth: true,
		changeYear: true,
		nextText: '다음달',
		prevText: '이전달',
		minDate: 0,
        maxDate: '+3M',
        dateFormat:"yy-mm-dd"
    });
});
</script>
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
 .nextBtn{margin-top: 150PX; float: right;}  
 .nextBtn button{ width: 80px;padding: 10px; font-size: 15px; font-family: 'Jeju Gothic', sans-serif;}
 .resStartDate, .resEndDate{display: inline;}
 .waring{margin-top: 30px;}
 .waringContent{background-color: azure;margin: 15px;padding: 18px}
    select{
        width: 350px;
        height: 30px;
    }
    input{
        width: 180px;
        height: 20px;
    }
 .order button{width: 50px;padding: 5px; font-size: 15px; font-family: 'Jeju Gothic', sans-serif;}
</style>


   <div class="wrap">
      
       <div class="resDate">  
           <h1 style="font-size: 30px">일정선택</h1>
           <p style="margin-top: 10px">고객님의 총 대여하실 기간을 선택해주세요.</p><br>
           <p class="resStartDate"  style="font-size: 15px">대여일시</p>&nbsp;<input type="text" class="resStartDate" id="resStartDate"> 
           <p class="resEndDate"  style="font-size: 15px">&nbsp;&nbsp;반납일시</p>&nbsp;<input type="text" class="resEndDate" id="resEndDate">
           <div class="waring">
               <img src="images/rent/waring.png" width="15px">알려드립니다<br>
               <div class="waringContent" style="margin-bottom: 50px">
                예약은 최대 90일 내 선택이 가능하며,<br>
                차량 출고시 계약서 작성 및 차량 확인에 약 15분 정도의 시간이 소요됩니다.   
                </div>
           </div>
           <div class="city">
              <h1 style="font-size: 30px">지점선택</h1>
              <p style="margin-top: 10px">대여지점을 선택해주세요.</p><br>
                   <select name="store" id="store" class="store">
                       <option value="제주시">제주시</option>
                       <option value="서귀포시">서귀포시</option>
                       <option value="제주국제공항">제주국제공항</option>
                   </select>
           </div>  
           <div class="nextBtn">
               <button>차종선택</button>
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
   
   