<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>   
<link rel="stylesheet" href="css/mypage.css" type="text/css" />  
<script src="js/mypage.js"></script>


<div class="mypage_header">
	<div class="my_hello">
			<h1>${sessionScope.userid}�� ȯ���մϴ�.</h1>
	</div>
	<hr class="mypage_hr">
	<div class="my_meun">
		<ul class="mypage_hover">
			<li><a href="MyRentCheck">�ֱ� ���� ����</a></li>&nbsp;&nbsp;
			<li><a href="MyQABoard">1:1 ���� ����</a></li>&nbsp;&nbsp;
			<li><a href="MyInfo">������ ����</a></li>
		</ul>
	</div>
	<hr class="mypage_hr">
</div>