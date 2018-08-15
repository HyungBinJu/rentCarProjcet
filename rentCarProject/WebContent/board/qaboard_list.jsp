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
<h1>qaboard List</h1>

<table border="1">
	<tr>
		<th>글번호</th>
		<th>문의타입</th>
		<th>작성자ID</th>
		<th>작성제목</th>
		<th>댓글root</th>
		<th>댓글step</th>
	</tr>
	<c:forEach var="dto" items="${list}">
	<tr>
		<td>${dto.num}</td>
		<td>${dto.type }</td>
		<td>${dto.userid }</td>
		<td><a href="QABoardContent?num=${dto.num}">${dto.title }</a></td>
		<td>${dto.reproot }</td>
		<td>${dto.repstep }</td>
	</tr>
	</c:forEach>
</table>
<button onclick='location.href="QAWrite"';>글쓰기</button>&nbsp;&nbsp;
</body>
</html>