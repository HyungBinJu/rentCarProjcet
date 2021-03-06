<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="contents">
		<!-- tbl_top -->
		<div class="tbl_top">
			<h4 class="tit_h4 f_l">형카 공지사항</h4>
			<div class="f_r">
				<a href="NoticeUIWrite" class="btn_m btn_type3"><span>작성하기</span></a>
				<!-- <a href="#" class="btn_m btn_type5"><span>삭제</span></a> -->
			
			</div>
		</div>
		<!-- //tbl_top -->   

		<!-- tbl_type1 -->
		<div class="tbl_type1">
			<input type="hidden" value ="${dto.num}" />
			<table>
				<colgroup>
					<col width="*"><col width="15%">
					<col width="15%">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">제목</th>
						<th scope="col">작성자</th>
						<th scope="col">작성일</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var ="dto" items="${list}"  varStatus="status">
					<tr class="notice">
						<td class="con"><a href="NoticeBoardView?num=${dto.num}">${dto.title}</a></td>
						<td>${dto.userid}</td>
						<td>${dto.writeday}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<!-- //tbl_type1 -->

	</div>