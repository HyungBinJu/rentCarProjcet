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
/*  header, nav, aside, section, article, footer, hgroup{display:block;}  */
/*  html, body, div, span, object, iframe, h1, h2, h3, h4, h5, h6, p, blockquote, pre, a,   */
/*  abbr, address, big, cite, code, del, dfn, em, font, img, ins,q, s, samp, small, strike,   */
/*  strong, sub, sup, tt, var, b,u, i, dl, dt, dd, ol, ul, li, fieldset, form, label, legend,   */
/*  table, caption, tbody, tfoot, thead, tr, th, td { margin: 0; padding: 0; border: none 0; }  */
/*  html, body { width:100%; height:100%; }  */
/*  body { background-color:#fff;}  */
/*  body, input, button, textarea {font-size:12px; font-family: "NanumGothic", Verdana, "돋움", Dotum, Helvetica, AppleGothic, Sans-serif; color:#444; }  */
/* /*  h1, h2, h3, h4, h5, h6 { font-size:12px;  }  */ */
/* /*   div 묶을라고 우선 뺏음 text-align:left; */ */
/*  img, fieldset, iframe { border:0 none;}  */
/*  table, div { border-collapse: collapse;}  */
/*  select, textarea { border: 1px solid #B7B6B6; background: #FFFFFF; color: #000000; font-size: 12px; vertical-align: middle; }  */
/*  textarea { overflow:auto; }  */
/*  select, input, img, li { vertical-align: middle; text-align:left;}  */
/*  address, caption, cite, code, dfn, em, strong, th, var { font-style : normal; font-weight : normal; }  */
/*  ul, li, ol { list-style-type: none;}  */
/*  legend,  caption { display: none; }  */
/*  hr { border-collapse:collapse; display:none; }  */
/*  strong{font-weight:bold;}  */
 
/*  .wrap{width:850px;margin:0 auto; overflow:hidden;} */
 
/*  .id_pw{text-align: center;padding: 100px;} */
/*  .btn{text-align: center;} */
 body {
  font: 13px/20px "Lucida Grande", Tahoma, Verdana, sans-serif;
  color: #404040;
  background: #0ca3d2;
}

.login {
  position: relative;
  margin: 30px auto;
  padding: 20px 20px 20px;
  width: 310px;
  background: white;
  border-radius: 3px;
  -webkit-box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
  box-shadow: 0 0 200px rgba(255, 255, 255, 0.5), 0 1px 2px rgba(0, 0, 0, 0.3);
}

.login:before {
  content: '';
  position: absolute;
  top: -8px;
  right: -8px;
  bottom: -8px;
  left: -8px;
  z-index: -1;
  background: #083763;
  border-radius: 4px;
}

.login h1 {
  margin: -20px -20px 21px;
  line-height: 40px;
  font-size: 15px;
  font-weight: bold;
  color: #555;
  text-align: center;
  text-shadow: 0 1px white;
  background: #f3f3f3;
  border-bottom: 1px solid #cfcfcf;
  border-radius: 3px 3px 0 0;
  background-image: -webkit-linear-gradient(top, whiteffd, #eef2f5);
  background-image: -moz-linear-gradient(top, whiteffd, #eef2f5);
  background-image: -o-linear-gradient(top, whiteffd, #eef2f5);
  background-image: linear-gradient(to bottom, whiteffd, #eef2f5);
  -webkit-box-shadow: 0 1px whitesmoke;
  box-shadow: 0 1px whitesmoke;
  font-family: 'Jeju Gothic', sans-serif;
}

.login p {
  margin: 20px 0 0;
}

.login p:first-child {
  margin-top: 0;
}

.login input[type=text], .login input[type=password] {
  width: 278px;
}

.login p.remember_me {
  float: left;
  line-height: 31px;
}

.login p.remember_me label {
  font-size: 12px;
  color: #777;
  cursor: pointer;
  font-family: 'Jeju Gothic', sans-serif;
}

.login p.remember_me input {
  position: relative;
  bottom: 1px;
  margin-right: 4px;
  vertical-align: middle;
}

.login p.submit {
  text-align: right;
}

.login_help {
  margin: 20px 0;
  font-size: 11px;
  color: darkorange;
  text-align: center;
/*   text-shadow: 0 1px #2a85a1; */
}

.login_help a {
  color: darkorange;
  text-decoration: none;
}

.login_help a:hover {
  text-decoration: underline;
}

:-moz-placeholder {
  color: #c9c9c9 !important;
  font-size: 13px;
}

::-webkit-input-placeholder {
  color: #ccc;
  font-size: 13px;
}

input {
  font-family: 'Lucida Grande', Tahoma, Verdana, sans-serif;
  font-size: 14px;
}

input[type=text], input[type=password] {
  margin: 5px;
  padding: 0 10px;
  width: 200px;
  height: 34px;
  color: #404040;
  background: white;
  border: 1px solid;
  border-color: #c4c4c4 #d1d1d1 #d4d4d4;
  border-radius: 2px;
  outline: 5px solid #eff4f7;
  -moz-outline-radius: 3px;
  -webkit-box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.12);
}

input[type=text]:focus, input[type=password]:focus {
  border-color: #7dc9e2;
  outline-color: #dceefc;
  outline-offset: 0;
}

input[type=submit] {
  padding: 0 18px;
  height: 29px;
  font-size: 12px;
  font-weight: bold;
  color: #527881;
  text-shadow: 0 1px #e3f1f1;
  background: #cde5ef;
  border: 1px solid;
  border-color: #b4ccce #b3c0c8 #9eb9c2;
  border-radius: 16px;
  outline: 0;
  -webkit-box-sizing: content-box;
  -moz-box-sizing: content-box;
  box-sizing: content-box;
  background-image: -webkit-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -moz-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: -o-linear-gradient(top, #edf5f8, #cde5ef);
  background-image: linear-gradient(to bottom, #edf5f8, #cde5ef);
  -webkit-box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
  box-shadow: inset 0 1px white, 0 1px 2px rgba(0, 0, 0, 0.15);
  font-family: 'Jeju Gothic', sans-serif;
}

input[type=submit]:active {
  background: #cde5ef;
  border-color: #9eb9c2 #b3c0c8 #b4ccce;
  -webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
  box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.2);
}

.lt-ie9 input[type=text], .lt-ie9 input[type=password] {
  line-height: 34px;
}
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
 <div class="login">
  <h1>WelCome 형카</h1>
  <form method="post" action="">
    <p><input type="text" name="login"placeholder="UserID" id="userid"></p>
    <p><input type="password" name="password"placeholder="Password" id="userpw"></p>
    <p class="remember_me">
      <label>
        <input type="checkbox" name="remember_me" id="remember_me">
        	아이디 기억하기
      </label>
    </p>
    <p class="submit"><input type="submit" name="commit" value="로그인"></p>
  </form>
</div>
<div class="login_help">
  <p><a href="#">아이디 찾기</a></p>
</div>
<div class="login_help">
  <p><a href="#">비밀번호 찾기</a></p>
</div>
</body>
</html>
  