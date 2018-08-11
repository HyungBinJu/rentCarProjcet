<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
   .header_title{ height: 140px;background: #083763;color: darkorange;padding: 20px;} 
 .wrap{width:850px;margin:0 auto; overflow:hidden;} 
 .subMenu{width: 20%;height: 600px; float:right;background-color:#083763;color:white;padding-top:50px;padding-left:20px;padding-right: 20px;}
 .img{display: inline-block;}
    *{font-family: 'Jeju Gothic', sans-serif;}
 hr { display: block;margin-top: 0.5em; margin-bottom: 0.5em;margin-left: auto;margin-right: auto;border-style: inset;border-width: 1px;} 
/*  .information .menu_section{background:#083763; color:orange;} */
 .order{margin-top: 50px;}
 .resDate{width: 100%; height: 600px;margin-top: 30px;}
 .resStartDate, .resEndDate{display: inline;}
 .waring{margin-top: 30px;}
 .waringContent{background-color: azure;margin: 15px;padding: 18px}
 .selectType{background-color: azure;margin: 15px;padding: 23px}
 .preBtn{display: inline-block;}
 .last_btn{margin-top: 20PX; float: left;}
 .nextBtn{display: inline-block; margin-left: 5px; }  
 .preBtn .finish{ width: 90px;height: 40px;text-align: center;font-size: 15px;font-family: 'Jeju Gothic', sans-serif;}
 .nextBtn .cancel{ width: 90px;height: 40px;text-align: center;font-size: 15px;font-family: 'Jeju Gothic', sans-serif;}
 .phone1 {width:52px;height:22px; text-align:center;}
 .phone2 {width:52px;height:22px; text-align:center;}
 .phone3 {width:52px;height:22px; text-align:center;}
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
    .information, .insuranceTable{
        margin-bottom: 30px;
    }
    
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- 달력 -->
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<!------------->
<!-- 달력한국어 설정 -->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
<!------------->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">

<script type="text/javascript">


	$(document).ready(function(){
		//email
		$("#choose_email").on("change", function() {
			var mail = $(this).val();
			if (mail == "choose_phone") {
				$("input[name='']").val('');
			} else {
				$("input[name='email']").val(mail); 
			}
		});	
		//email 한글방지
		$(".email_box").on("keyup",function(){
			if($(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g,''))){
			};	
			});
		//생일달력
			$(".birth").datepicker({
				dateFormat: "yy-mm-dd",
				maxDate: 0,
				 yearRange:"c-100:c+0",
				changeMonth: true,
			     changeYear: true
			});
		//비밀번호 확인
			$("#pw_check").on("keyup",function(){
	    		var pw_check = $("#pw_check").val().length;
	    		var pw_check2 = $("#pw_check_again").val().length;
	    		var pw_mesg2 = "한번 더 입력 해주세요";
	    		var empty = '';
	    		if(pw_check != 0){
	    			$("#pw_result1").text(pw_mesg2);
	    		}else if(pw_check ==0){
	    			$("#pw_result1").text("비밀번호를 입력해 주세요");
	    		} 
	    	});
			$("#pw_check_again").on("keyup",function(){
	    		var pw_check = $("#pw_check").val();
	    		var pw_mesg =  "비밀번호가 일치하지 않습니다";
	    		var pw_mesg2 = "비밀번호 일치";
	    		if(pw_check == $(this).val()){
	    			$("#pw_result2").text(pw_mesg2);
	    			$("#pw_result1").text('');
	    		}else{
	    			$("#pw_result2").text(pw_mesg);
	    	}
	    	});
			//전화번호 한글방지
			$(".phone2").on("keyup",function(){
				if($(this).val($(this).val().replace(/[^0-9]/g,""))){
				};	
				});
			//id 확인
			$("#id_check").on("keyup",function(){
				$.ajax({
					type : "GET",
					url : "만들고 입력하고 끗!",
					dataType : "text",
					data : {
						userid : $("#id_check").val()
					},
					success : function(data, status, xhr){
						$("#id_result").text(data);
					},//end success
					error : function(xhr,status,error){
						alert("사용 할 수 없는 ID 입니다");
						$("#id_check").val('');
					}//end error
				});//end ajax
					if($(this).val().length >= 11){
						alert("10자 이하로 입력해 주세요")
					}
				if($(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g,''))){
				}
			});//end keyup
			
			

	});//end ready
	
</script>
<body>
   <div class="wrap">
      
       <div class="resDate">  
       		<div class="header_title">
		           <h1 style="font-size: 30px">회원가입</h1>
		           <p style="margin-top: 10px">기본정보를 입력하세요</p><br>
		           <p class="textRight">*필수 입력 항목</p>	
		           <div class="empty">--------------------------------------------------------------</div>
		           <p class="title">회원 정보 입력</p>
       		</div><br>   
     <form action="SignUp" id="myform"><!-- signUp From  -->
     	<div class=information>
               <table>
          
                    <tr> 
               	       <td width="200px" style="background-color: azure" class="menu_section">이름 * </td>
                  		<td><input type="text" width="200px" maxlength=5></td>
                   </tr>
                     <tr>                        <td width="200px" style="background-color: azure">ID *</td>
                        <td><input type="text" id="id_check" placeholder="영문,숫자 조합 한글 사용 불가"maxlength=10 >
                        	<span id="id_result"></span>
                        </td>
                    </tr>
                     <tr> 
                       <td width="200px" style="background-color: azure" >PW *</td>
                        <td><input type="password" id="pw_check" maxlength=10 placeholder="영문,숫자 조합 10자 이내">
                       		<span id="pw_result1">비밀번호를 입력해 주세요</span>
                        </td>
                    </tr>
                     <tr>
                       <td width="200px" style="background-color: azure" >PW 확인 *</td>
                        <td><input type="password" id="pw_check_again" maxlength=10 placeholder="영문,숫자 조합 10자 이내">
                        	<span id="pw_result2"></span>
                        </td>
                    <tr> <!-- 유효성체크 -->
                       <td width="200px" style="background-color: azure">전화 *</td>
                        <td>
                           <select name="phone1" class="phone1">
						     	<option value="choose_phone">선택</option>
						     	<option value="010">010</option>
						     	<option value="02">02</option>
						        <option value="070">070</option>
						   </select>-
						      <input type="text" name="phone2" class="phone2" maxlength=4 >-
						      <input type="text" name="phone3" class="phone3" maxlength=4 ><br>
						</td>
                    </tr>
                     <tr> 
                       <td width="200px" style="background-color: azure">생일 *</td>
                        <td><input type="text" class="birth"placeholder="클릭하세요"></td>
                    </tr>
                    <tr><!-- AJAX 구현 -->
                       <td width="200px" style="background-color: azure">E-MAIL *</td>
                        <td><input type="text" class="email_box"> @ <input type="text" name="email" class="email_box">
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
                       		
                        <td><input type="text">　<button id="address_btn">주소검색</button></td>
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
                       <td width="200px" style="background-color: azure">면허 종류</td>
                       <td>
                          <select id="driver_licence">
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
	  <div class="last_btn">
		               <div class="preBtn">
		                   <input type="submit" value="가입하기" class="finish">
		               </div>  
		               <div class="nextBtn">
		                    <input type="submit" value="취소" class="cancel">
		               </div>
	  </div>
               </form> 
           </div>
       </div>
 
   