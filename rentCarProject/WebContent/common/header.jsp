<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
   <script type="text/javascript" src="http://darling2.cafe24.com/js/jquery.bxslider.min.js"></script>

  <meta name="Generator" content="EditPlus">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
<script type="text/javascript" src="http://darling2.cafe24.com/js/jquery.bxslider.min.js"></script>
<script>
	
	$(document).ready(function(){
		var k = $(window).width();

		var minus = k/5-11;
		$(".carInfo li" ).css("width",minus);

		$(".tabCar .tab li").click(function(){
			var idx= $(this).index();
			console.log(idx);
		
			$(this).siblings().removeClass("on");
			$(this).addClass("on");


			$(".tab_cont").removeClass("on");
			$(".tab_cont").eq(idx).addClass("on");

		});
		
	});

	$(window).resize(function(){
		/* 메인 차 예약하기 */
		var k = $(window).width();

		var minus = k/5-11;
		$(".carInfo li" ).css("width",minus);


	})

	$(function(){
		/* 메인 상단 슬라이드 */
		$('.mainSlider .bx_carousels').bxSlider({
				speed:1000,
				auto:true,
				controls:false,
				pager:false
				
		  });
		  $('.reviewSlider .bx_carousels').bxSlider({
				speed:1000,
				auto:true,
				controls:false,
				pager:true,
				slideWidth:1243
				
		  });
		  
	});

</script>


  
 </head>

 <link rel="stylesheet" href="css/main.css" />
 <link rel="stylesheet" href="css/common.css" />

	<body>
		<div class="wrap">
			<!-- 메인 퀵 -->
			<div class="l__car-search-tab">
				<div class="js__car-search-tab">
					<aside class="l__car-search-tab">
						<h1 class="title">렌터카 빠른검색</h1>
						<span class="explain">제주여행 필수 예약 렌트카!<br>렌트카 예약은 오로지  <em class="fc_orange fc_weight fs14">형카!</em></span>
						<div class="icon">
							<img src="images/main/ico.png" alt="" />
						</div>
					</aside>
				</div>
			</div>
			<!-- //메인 퀵 -->

			<header class="headerWrap">
				<div class="bd">
					<div class="loginWrap">
						<ul>
							<li>
								<a href="LoginUI">로그인</a>
							</li>
							<li>
								<a href="SignUpUI">회원가입</a>
							</li>
							<li>
								<a href="#">채용</a>
							</li>
						</ul>
					</div>
				</div>
				<div class="gnb_box">
					<h1 class="logo">
						<img src="http://placehold.it/150x70" alt="" />
					</h1>

					<ul class="menu">
						<li>
							<a href="#">형카소개</a>
						</li>
						<li>
							<a href="ReservationUI">형카예약</a>
						</li>
						<li>
							<a href="#">형카알림</a>
						</li>
						<li>
							<a href="#">형카문의</a>
						</li>
						
					</ul>
				</div>
			</header><!-- //headerWrap -->
