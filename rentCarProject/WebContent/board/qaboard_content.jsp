<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시판 상세 페이지</h1>
<form>
<input type="hidden" name="num">
문의타입 : <input type="text" name ="type">
작성자ID : <input type="text" name ="userid">
작성 제목 : <input type="text" name ="title">
글쓴시간 : <input type="text" name ="writeday">
</form>
</body>
</html>