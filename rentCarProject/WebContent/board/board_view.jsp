<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script>
$(document).ready(function(){
	$("#btnDel").click(function(e){
		var k = confirm("삭제할꺼야?");
		if(k==false){
			e.preventDefault();
		}

	});
});
</script>
<div class="contents">
	<c:set var="dto" value="${boardList}" scope="session" />
		<!-- tbl_top -->
		<div class="tbl_top">
			<h4 class="tit_h4 f_l">형카 공지사항</h4>
			<div class="f_r">
				<!-- <a href="NoticeUIWrite" class="btn_m btn_type3"><span>작성하기</span></a> -->
				<a href="NoticeDel?num=${dto.num}" class="btn_m btn_type5" id="btnDel"><span>삭제</span></a>
				<a href="NoticeBoardUpdate?num=${dto.num}" class="btn_m btn_type5"><span>수정</span></a>
			
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
							<th scope="col" colspan="4">${dto.title}</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>글번호 : ${dto.num}</td>
							<td>${dto.writeday}</td>
						
						</tr>
						<tr>
							<td colspan="2">
								${dto.content}
							</td>
						</tr>
					</tbody>
				</table>
		</div>

		<!-- 댓글 -->
		<div class="cmt_comm_area">
			<div class="cmt_comm_top">
				<strong>댓글 1개</strong>
			</div>
			<ul class="cmt_comm_box">
				<li>
					<div class="cmt_comm">
						<div class="cmt_comm_con">
							<div class="cmt_comm_tit">
								<strong class="fc_blue">dsgags****</strong> <span class="cmt_comm_date">2016-05-09</span>
							</div>
							<div class="cmt_comm_txt">
								후기 잘봤습니다. 지금처럼 합격의 날까지 힘차게 나아가시길 바랍니다.
							</div>
						</div>
						<ul class="cmt_comm_btn btn_list_type1">
							<li><a href="#">답변댓글</a></li>
							<li><a href="#">수정</a></li>
							<li><a href="#">삭제</a></li>
						</ul>
					</div>
				</li>
				<li class="reply">
					<div class="cmt_comm">
						<div class="cmt_comm_con">
							<div class="cmt_comm_tit">
								<strong class="fc_blue">dsgags****</strong> <span class="cmt_comm_date">2016-05-09</span>
							</div>
							<div class="cmt_comm_txt">
								후기 잘봤습니다. 지금처럼 합격의 날까지 힘차게 나아가시길 바랍니다.
							</div>
						</div>
						<ul class="cmt_comm_btn btn_list_type1">
							<li><a href="#">답변댓글</a></li>
							<li><a href="#">수정</a></li>
							<li><a href="#">삭제</a></li>
						</ul>
					</div>
				</li>
				<li class="reply">
					<div class="cmt_comm">
						<textarea name="" id="" cols="30" rows="10"></textarea>
						<a href="#" class="btn_ml btn_type1"><span>댓글등록 &gt;</span></a>
					</div>
				</li>
				<li>
					<div class="cmt_comm">
						<div class="cmt_comm_con">
							<div class="cmt_comm_tit">
								<strong class="fc_blue">dsgags****</strong> <span class="cmt_comm_date">2016-05-09</span>
							</div>
							<div class="cmt_comm_txt">
								후기 잘봤습니다. 지금처럼 합격의 날까지 힘차게 나아가시길 바랍니다.
							</div>
						</div>
						<ul class="cmt_comm_btn btn_list_type1">
							<li><a href="#">답변댓글</a></li>
							<li><a href="#">수정</a></li>
							<li><a href="#">삭제</a></li>
						</ul>
					</div>
				</li>
			</ul>
		</div>
		<!-- //댓글 -->
		

		<!-- 댓글 등록 -->
		<div class="cmt_comm_area">
			<div class="cmt_comm_top">
				<strong>댓글 쓰기</strong> <span>타인을 비방하거나 개인정보를 유출하는 글의 게시를 삼가주세요.</span>
			</div>
			<div class="cmt_comm_box bg">
				<div class="cmt_comm">
					<textarea name="" id="" cols="30" rows="10"></textarea>
					<a href="#" class="btn_ml btn_type1"><span>댓글등록 &gt;</span></a>
				</div>
			</div>
		</div>
		<!-- //댓글 등록 -->

		<div class="tbl_bottom t_r">
			<a href="/board/?r=teacher&amp;m=bbs&amp;bid=free" class="btn_l btn_type2"><span>목록</span></a>
		</div>
	</div>