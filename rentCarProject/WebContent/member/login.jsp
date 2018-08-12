<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
  <!DOCTYPE html>
  <head>
<meta charset="UTF-8">
<title>빠른 로그인</title>
</head>
<body>
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
/*  h1, h2, h3, h4, h5, h6 { font-size:12px;  }  */
/*   div 묶을라고 우선 뺏음 text-align:left; */
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
 
 .wrap{width:850px;margin:0 auto; overflow:hidden;}
 
 .id_pw{text-align: center;padding: 100px;}
 .btn{text-align: center;}
 
 </style>
 <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
<script type="text/javascript">
		
	 $(document).ready(function(){
	    	 $("form").on("submit",function(event){		
	    		 var id = $("#userid").val();
	    		 var pw = $("#userpw").val();
	    	    		if(id.length==0){
	    	    			alert("ID를 입력하세요")
	    	    			$("uesrid").focus();
	    	    			event.preventDefault();
	    	    		}else if(pw.length==0){
	    	    			alert("비밀번호를 입력하세요")
	    	    			$("userpw").focus();
	    	    			event.preventDefault(); 
	    	    		}
	    	    	});
	    	 //id 한글 입력 방지
	    	 $("#userid").on("keyup",function(){
	 			if($(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g,''))){
	 			};	
	 			});
	 });//end ready
</script>
<!-- 로그인 폼 시작-->
<div class="wrap">
    <div id="contents">
        <form action="">
       <div class="main">
          <div class="id_pw">
	            <h1 style="text-align: center">환영합니다</h1><br>
                <input type="text" placeholder="uesrID" maxlength=10 id="userid"/><br>
                <input type="password" placeholder="Password" maxlength=10 id="userpw"/><br>
                <input type="submit" value="로그인" class="btn"/><br>
          </div><!-- id_pw -->
          <div class="btn">  
                <a href="#">아이디 찾기</a>
                <a href="#">비밀번호 찾기</a>
          </div><!-- btn -->      
                
      </div><!-- main -->
        </form>
        
    </div><!-- content -->
</div><!-- wrap -->
</body>
</html>
  