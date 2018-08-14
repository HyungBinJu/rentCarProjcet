<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<div class="contents">
	<c:set var="dto" value="${boardList}" scope="session" />
		<!-- tbl_top -->
		<div class="tbl_top">
			<h4 class="tit_h4 f_l">형카 공지사항</h4>
			<div class="f_r">
				<!-- <a href="NoticeUIWrite" class="btn_m btn_type3"><span>작성하기</span></a> -->
				<%-- <a href="NoticeDel?num=${dto.num}" class="btn_m btn_type5" id="btnDel"><span>삭제</span></a>
				<a href="NoticeBoardUpdate?num=${dto.num}" class="btn_m btn_type5"><span>수정</span></a> --%>
			
			</div>
		</div>
		<!-- //tbl_top -->
		<div class="board_view">
				<table>
					<colgroup>
						<col width="*">
						
						<col width="16%">
						
					</colgroup>
					<thead>
						<tr>
							<th scope="col" colspan="4">
								제목 : <input type="text" name="title" value="${dto.title}" />
						</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>글번호 : ${dto.num}</td>
							<td>${dto.writeday}</td>
						
						</tr>
						<tr>
							<td colspan="2">
								<textarea rows="" cols="">
									${dto.content}
								</textarea>
								
							</td>
						</tr>
					</tbody>
				</table>
		</div>


		<div class="tbl_bottom t_r">
			<a href="" class="btn_l btn_type2"><span>목록</span></a>
			<a href="BoardUpdate" class="btn_l btn_type3"><span>수정완료</span></a>
		</div>
	</div>