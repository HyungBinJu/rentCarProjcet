<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <meta charset="UTF-8">
    <title>빠른 회원가입</title>
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

  .textRight {text-align: right}
 .wrap{width:850px;margin:0 auto; overflow:hidden;} 
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
/*  .information .menu_section{background:#083763; color:orange;} */
 .header_title{background:#083763; color:darkorange;padding:20px;}
 .insuranceTable{font-size:15px;}
 .information{font-size:15px;}
 .order{margin-top: 50px;}
 .resDate{width: 100%; height: 600px;margin-top: 30px;}
 .resStartDate, .resEndDate{display: inline;}
 .waring{margin-top: 30px;}
 .waringContent{background-color: azure;margin: 15px;padding: 18px}
 .selectType{background-color: azure;margin: 15px;padding: 23px}
 .preBtn{display: inline-block;}
 .btn{margin-top: 20PX; float: left;}
 .nextBtn{display: inline-block; margin-left: 5px; }  
 .preBtn .finish{ width: 90px;height: 40px;text-align: center;font-size: 15px;font-family: 'Jeju Gothic', sans-serif;}
 .nextBtn .cancel{ width: 90px;height: 40px;text-align: center;font-size: 15px;font-family: 'Jeju Gothic', sans-serif;}
 .address_btn{width: 90px;height: 25px;text-align: center;font-size: 15px;font-family: 'Jeju Gothic', sans-serif;}
 .phone1 {width:52px;height:26px;}
 .phone2 {width:52px;height:22px; text-align: center;}
 .phone3 {width:52px;height:22px; text-align: center;}
 
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
    font-size: 12px;
     height: 22px;
  }
    .title{
        font-size: 20px;
        margin-top: 20px;
        margin-bottom: 20px;
    }
    .information, .insuranceTable{
        margin-bottom: 30px;
    }
    
</style>

<script type="text/javascript" src="jquery-3.3.1.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 달력 -->
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<!-- 달력한국어 설정 -->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">

<script type="text/javascript">


	$(document).ready(function(){
		//email
		$("#choose_email").on("change", function() {
			var mail = $(this).val();
			if (mail == "choose_phone") {
				$("input[name='email']").val('');
			} else {
				$("input[name='email']").val(mail); 
			}
		});		
		//생일달력
			$(".birth").datepicker({
				dateFormat: "yy-mm-dd",
				maxDate: 0,
				 yearRange:"c-100:c+0",
				changeMonth: true,
			     changeYear: true
			});




	});//end ready
	
</script>
<body>
   <div class="wrap">
      
       <div class="resDate">  
       	 <div class="header_title">
	           <h1 style="font-size: 30px">회원가입</h1>
	           <p style="margin-top: 10px">기본정보를 입력하세요</p><br>
	           <p class="textRight">*필수 입력 항목</p>	
        </div>
           <p class="title">회원 정보 입력</p>
           <div class=information>
               <table>
                    <tr> <!-- maxlength 넣기 -->
               	       <td width="200px" style="background-color: azure" class="menu_section">이름 * </td>
                  		<td><input type="text" width="200px"maxlength=5></td>
                   </tr>
                     <tr> <!-- ID 유효성체크 -->
                       <td width="200px" style="background-color: azure" >ID *</td>
                        <td><input type="text" placeholder="영문,숫자 10자이내" maxlength=10></td>
                    </tr>
                     <tr> <!-- AJAX 구현 -->
                       <td width="200px" style="background-color: azure">PW *</td>
                        <td><input type="password"></td>
                    </tr>
                     <tr><!-- AJAX 구현 -->
                       <td width="200px" style="background-color: azure">PW 재입력 *</td>
                        <td><input type="password"></td>
                    <tr> <!-- 유효성체크 -->
                       <td width="200px" style="background-color: azure">전화 *</td>
                        <td>
                           <select name="phone1" class="phone1">
						     	<option value="choose_phone">선택</option>
						     	<option value="010">010</option>
						     	<option value="02">02</option>
						        <option value="070">070</option>
						   </select>-
						      <input type="text" name="phone2" class="phone2"maxlength=4>-
						      <input type="text" name="phone3" class="phone3"maxlength=4><br>
					    </td>
                    </tr>
                     <tr> 
                       <td width="200px" style="background-color: azure">생일 *</td>
                        <td><input type="text" class="birth"placeholder="선택하세요"></td>
                    </tr>
                    <tr><!-- AJAX 구현 -->
                       <td width="200px" style="background-color: azure">E-MAIL *</td>
                        <td><input type="text"> @ <input type="text" name="email">
                        	<select id="choose_email">
                        		<option value="">선택하기</option>
                        		<option value="google.com">google.com</option>
                        		<option value="naver.com">naver.com</option>
                        		<option value="nate.com">nate.com</option>
                        		<option value="daum.net">daum.net</option>
                        		<option value="">직접입력</option>
                        	</select>
                        
                        </td>
                    </tr>
               </table>
           </div>
           <div class="insuranceTable" >
               <table>
                     <tr><!-- 주소 구현 -->
                       <td width="200px" style="background-color: azure">주소 *</td>
                       		
                        <td><input type="text">　<button class="address_btn">주소검색</button></td>
                    </tr>
                    <tr><!-- 주소 구현 -->
                       <td width="200px" style="background-color: azure">상세주소 *</td>
                       		
                        <td><input type="text">　<input type="text"></td>
                    </tr>
                     <tr><!-- AJAX 구현 -->
                       <td width="200px" style="background-color: azure">면허 번호</td>
                        <td><input type="text"></td>
                    </tr>
                    <tr>
                       <td width="200px" style="background-color: azure;">면허 종류</td>
                       <td>
                          <select id="driver_licence" style="width:185px;">
                    	      <option value="choose">선택하기</option>
                              <option value="manual">1종보통</option>
                              <option value="manual2">1종대형(특수)</option>  
                              <option value="auto">2종보통</option>
                              <option value="bike">2종소형</option>        
                          </select>
                       </td>
                    </tr>
               </table>
           </div>
           <div class="btn">
              <form>
	               <div class="preBtn">
	                   <input type="submit" value="가입하기" class="finish">
	               </div>  
	               <div class="nextBtn">
	                    <input type="submit" value="취소" class="cancel">
	               </div>
               </form> 
           </div>
       </div>
   </div> 
   
   
</body>
</html>