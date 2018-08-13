<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="contents">
		<!-- 글쓰기 -->
		<form action="NoticeBoardWrite" method="post">
		<input type="hidden" name="writedate" class="input_txt" style="width:80%">
		<div class="tbl_type3">
		
			<table>
				<colgroup>
					<col width="10%" />
					<col width="*"  />
				</colgroup>
				<tbody>  
					<tr>
						<th scope="row">작성자</th>
						<td><input type="text" name="userid" readonly class="input_txt" style="width:80%;border:none;" value="brown"></td>
					</tr>
					<tr>
						<th scope="row">제목</th>
						<td><input type="text" name="title" class="input_txt" style="width:80%"></td>
					</tr>
				
					<tr>
						<td colspan="2">
							<textarea rows="" cols="" name="content"></textarea>
						</td>
					</tr>
				</tbody>
			</table>
		
		</div>
		<!-- //글쓰기 -->

		<div class="tbl_bottom t_r">
			<button type="submit" class="btn_r btn_type1"><span>등록</span></button>
			<a href="#;" onclick="cancelCheck();" class="btn_r btn_type2"><span>취소</span></a>
			<a href="/board/?r=teacher&amp;m=bbs&amp;bid=free" class="btn_l btn_type2"><span>목록</span></a>
		</div>
		</form>
	</div>