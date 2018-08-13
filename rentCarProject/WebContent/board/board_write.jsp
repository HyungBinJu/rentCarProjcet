<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="contents">
		<!-- 글쓰기 -->

		<div class="tbl_type3">
			<table>
				<colgroup>
					<col width="10%">
					<col width="*">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">작성자</th>
						<td><input type="text"  readonly class="input_txt" style="width:80%;border:none;" value="darling2"></td>
					</tr>
					<tr>
						<th scope="row">제목</th>
						<td><input type="text" class="input_txt" style="width:80%"></td>
					</tr>
					<tr>
						<th scope="row">문의유형</th>
						<td>
							<label><input type="radio"> 학습방법</label>
							<label><input type="radio"> 학습방법</label>
							<label><input type="radio"> 학습방법</label>
							<label><input type="radio"> 학습방법</label>
							<label><input type="radio"> 학습방법</label>
							<label><input type="radio"> 학습방법</label>
							<label><input type="radio"> 학습방법</label>
							<label><input type="radio"> 학습방법</label>
						</td>
					</tr>
					<tr>
						<th scope="row">선택</th>
						<td>
							<select name="" id="">
								<option value="">선택1</option>
								<option value="">선택2</option>
								<option value="">선택3</option>
								<option value="">선택4</option>
								<option value="">선택5</option>
								<option value="">선택6</option>
							</select>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<img src="/img/thumb/temp_board.png" alt="">
							에디터 붙여서 작업
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
	</div>