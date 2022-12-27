<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@page import="com.wheresming.search.SearchingRdDAO"%>
<%@page import="com.wheresming.search.SearchingDAO"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Where?Sming</title>
<head>

<meta charset="utf-8">
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />


<!-- 메인화면 아래 영화추천리스트 link -->
<link href="assets/css/picklist/font-awesome.min.css" rel="stylesheet"
	media="screen">
<link href="assets/css/picklist/animate.css" rel="stylesheet">
<link href="assets/css/picklist/magnific-popup.css" rel="stylesheet">
<link href="assets/css/picklist/style.css" rel="stylesheet"
	media="screen">
<link href="assets/css/picklist/responsive.css" rel="stylesheet">

<style>
@import url('https://fonts.googleapis.com/css?family=Lobster');
/* 메인영화동영상재생하는곳  */
#body2 {
	height: 7750px;
	background-color: #181818;
}
/* 스크롤바 디자인 */
#body2::-webkit-scrollbar {
	width: 15px; /* 스크롤바의 너비 */
}

#body2::-webkit-scrollbar-thumb {
	height: 20%; /* 스크롤바의 길이 */
	background: #FFBB00; /* 스크롤바의 색상 */
	border-radius: 10px;
}

#body2::-webkit-scrollbar-track {
	background: #181818; /*스크롤바 뒷 배경 색상*/
}

#video {
	filter: brightness(65%);
	min-width: 100%;
	min-height: 100%;
	max-width: 100%;
	max-height: 100vh;
	object-fit: cover;
	z-index: -1;
}

/* 메인화면 아래 영화추천리스트에 마우스 오버하면 음영주는 CSS */
.container {
	width: 1320px;
	margin-left: 370px;
	padding-bottom: 30px;
}

.flex {
	width: 1320px;
	display: flex;
	flex-direction: row;
	flex-wrap: wrap;
	justify-content: flex-start;
	align-items: flex-start;
	align-content: stretch;
}

.sizing {
	border-radius: 8px;
	padding: 5px;
}

.portfolio-bg {
	border-radius: 10px;
}

.portfolio {
	border-radius: 8px;
	transform: scale(1);
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-trandsition: all 0.3s ease-in-out;
}

.portfolio:hover {
	transform: scale(1.1);
	-webkit-transform: scale(1.1);
	-moz-transform: scale(1.1);
	-ms-transform: scale(1.1);
	-o-trandsition: scale(1.1);
}

.b {
	font-weight: 500;
	font-size: 15px;
	color: #FFBB00;
}

#nic {
	font-size: 14px;
}

/* 새슬라이더 */
img {
	width: 130%;
	height: 130%;
	border-radius: 8px;
}

.slider {
	width: 100%;
}

.slider .slick-slide {
	margin: 10px;
}

.slick-prev:before, .slick-next:before {
	color: #444444;
}

.texts {
	color: #FFBB00;
	font-size: 20px;
	font-weight: 900;
}

.top-left {
	position: absolute;
	font-size: 50px;
	font-weight: 300;
	top: 18px;
	left: 16px;
	color: white;
}

.re {
	font-weight: 550;
	color: #fff;
	margin-left: 15px;
	font-size: 25px;
	display: inline;
}

.inline {
	font-weight: 550;
	font-size: 23px;
	color: #fff;
	display: inline;
}

.inline:hover {
	font-weight: 550;
	font-size: 23px;
	color: #fff;
	display: inline;
}
/* 새슬라이더끝 */
</style>

</head>



<body id="body2">
	<!-- 실시간 채팅  -->
<%-- 	<%@include file="chat.jsp"%>
	<%@include file="nav.jsp"%> --%>
	<!-- 채팅 -->
<!-- 	<script>
		(function(d, w, c) {
			w.ChatraID = '3zJ5EQxB9BkR7jn2J';
			var s = d.createElement('script');
			w[c] = w[c] || function() {
				(w[c].q = w[c].q || []).push(arguments);
			};
			s.async = true;
			s.src = 'https://call.chatra.io/chatra.js';
			if (d.head)
				d.head.appendChild(s);
		})(document, window, 'Chatra');
	</script> -->
	<!-- 채팅끝 -->



	<!-- ***** 메인영화재생 ***** -->
	<section class="mainmovie" id="top" data-section="section1">
		<video autoplay muted loop id="video">
			<source src="assets/images/yourname.mp4" type="video/mp4" />
		</video>
	</section>



	<!-- 추천영화 div리스트 -->
	<!-- wheresming실시간추천 구간 top으로위치조정가능 -->
	<!-- 추천영화 div리스트 -->
	<!-- wheresming실시간추천 구간 top으로위치조정가능 -->

	<section class="services" style="top: 850px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<a class="inline">ㅤMoive Pick! 순위</a>
					<div class="slider">

						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div
											class="tt-overlay"></div></a> <img
										src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"
										alt="image">
									<div class="top-left">1</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->


			<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 어린이&가족</a>
						<div class="slider">
							<%
							Random rd = new Random();
							SearchingRdDAO dao = new SearchingRdDAO();
							ArrayList<String> list = new ArrayList<String>();
							list = dao.selectGenre("kid");
							int mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(158);
								mv_seq = dao.selectGenreSeq(list.get(num));
							%>


							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#kid" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->

			<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 애니메이션</a>
						<div class="slider">
							<%
							ArrayList<String> list1 = new ArrayList<String>();
							list1 = dao.selectGenre("ani");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(2647);
								mv_seq = dao.selectGenreSeq(list1.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list1.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->

			<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 액션</a>
						<div class="slider">
							<%
							ArrayList<String> list2 = new ArrayList<String>();
							list2 = dao.selectGenre("ac");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(3882);
								mv_seq = dao.selectGenreSeq(list2.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list2.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
						<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 코미디</a>
						<div class="slider">
							<%
							ArrayList<String> list3 = new ArrayList<String>();
							list3 = dao.selectGenre("co");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(1948);
								mv_seq = dao.selectGenreSeq(list3.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list3.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
						<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 로맨스</a>
						<div class="slider">
							<%
							ArrayList<String> list4 = new ArrayList<String>();
							list4 = dao.selectGenre("ro");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(948);
								mv_seq = dao.selectGenreSeq(list4.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list4.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
						<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 스릴러</a>
						<div class="slider">
							<%
							ArrayList<String> list5 = new ArrayList<String>();
							list5 = dao.selectGenre("th");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(1482);
								mv_seq = dao.selectGenreSeq(list5.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list5.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
						<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 호러</a>
						<div class="slider">
							<%
							ArrayList<String> list6 = new ArrayList<String>();
							list6 = dao.selectGenre("ho");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(1214);
								mv_seq = dao.selectGenreSeq(list6.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list6.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
						<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> SF</a>
						<div class="slider">
							<%
							ArrayList<String> list7 = new ArrayList<String>();
							list7 = dao.selectGenre("sf");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(527);
								mv_seq = dao.selectGenreSeq(list7.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list7.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
						<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 판타지</a>
						<div class="slider">
							<%
							ArrayList<String> list8 = new ArrayList<String>();
							list8 = dao.selectGenre("fa");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(389);
								mv_seq = dao.selectGenreSeq(list8.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list8.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
						<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 범죄</a>
						<div class="slider">
							<%
							ArrayList<String> list9 = new ArrayList<String>();
							list9 = dao.selectGenre("cri");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(366);
								mv_seq = dao.selectGenreSeq(list9.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list9.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
						<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 드라마</a>
						<div class="slider">
							<%
							ArrayList<String> list10= new ArrayList<String>();
							list10 = dao.selectGenre("dra");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(3949);
								mv_seq = dao.selectGenreSeq(list10.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list10.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
						<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 다큐멘터리</a>
						<div class="slider">
							<%
							ArrayList<String> list11 = new ArrayList<String>();
							list11 = dao.selectGenre("doc");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(852);
								mv_seq = dao.selectGenreSeq(list11.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list11.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
						<!-- 추천영화 div리스트 -->
			<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
			<div class="container" style="padding-top: 80px;">
				<div class="row">
					<div class="col-lg-12">
						<a class="inline"> 뮤지컬</a>
						<div class="slider">
							<%
							ArrayList<String> list12 = new ArrayList<String>();
							list12 = dao.selectGenre("mus");
							mv_seq = 0;

							for (int i = 0; i < 10; i++) {
								int num = rd.nextInt(78);
								mv_seq = dao.selectGenreSeq(list12.get(num));
							%>

							<div class="portfolio-item col-md-7 sizing">
								<div class="portfolio-bg">
									<div class="portfolio">
										<a href="picksGenre.jsp#ani" target="_blank">
											<div class="tt-overlay"></div>
										</a> <img src="<%=list12.get(num)%>" alt="image">
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>
					</div>
				</div>
			</div>
			<!-- 추천영화 div리스트끝 -->
			
	</section>



	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->

	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/owl-carousel.js"></script>
	<script src="assets/js/slick-slider.js"></script>
	<script src="assets/js/custom.js"></script>
	<script>
		$(document).ready(function() {
			$('.slider').slick({
				autoplay : true,
				autoplaySpeed : 1000,
				slidesToShow : 5,
				slidesToScroll : 1,
				responsive : [ {
					breakpoint : 768,
					settings : {
						slidesToShow : 3,
						arrows : false,
					}
				}, {
					breakpoint : 600,
					settings : {
						slidesToShow : 1,
						arrows : false,
					}
				} ]
			});
		});
	</script>
</body>
</html>