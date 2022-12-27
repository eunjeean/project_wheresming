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
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="Template Mo">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

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
<!-- <link href="assets/css/picklist/font-awesome.min.css" rel="stylesheet"
	media="screen">
<link href="assets/css/picklist/animate.css" rel="stylesheet">
<link href="assets/css/picklist/magnific-popup.css" rel="stylesheet">
<link href="assets/css/picklist/style.css" rel="stylesheet"
	media="screen">
<link href="assets/css/picklist/responsive.css" rel="stylesheet"> -->

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">

<style>
@import url('https://fonts.googleapis.com/css?family=Lobster');
/* 메인영화동영상재생하는곳  */
.background {
	background-color: #181818;
}
/* 스크롤바 디자인 */
body::-webkit-scrollbar {
	width: 15px; /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
	height: 20%; /* 스크롤바의 길이 */
	background: #FFBB00; /* 스크롤바의 색상 */
	border-radius: 10px;
}

body::-webkit-scrollbar-track {
	background: #181818; /*스크롤바 뒷 배경 색상*/
}

/* 장르 드롭다운바 */
.dropbtn {
	padding: 16px;
	border: none;
	cursor: pointer;
	z-index: 2;
}

.dropdown {
	position: relative;
	display: inline-block;
}

.dropdown-content {
	margin-top: 8px;
	margin-left: -55px;
	display: none;
	position: absolute;
	background-color: rgba(122, 123, 116, 0.72);
	min-width: 150px;
	border-radius: 5px;
}

.dropdown-content a {
	color: #fff;
	font-weight: 400;
	font-size: 13px;
	padding: 10px 16px;
	text-decoration: none;
	display: block;
	border-radius: 5px;
}

.dropdown-content a:hover {
	color: #fff;
	font-weight: 600;
	background-color: #FFBB00;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.dropdown:hover .dropbtn {
	background-color: #181818;
}

/* 메인화면 아래 영화추천리스트에 마우스 오버하면 음영주는 CSS */
.container {
	width: 1320px;
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



<body>
	<!-- 실시간 채팅  -->
	<%@include file="chat.jsp"%>
	<!-- 상단top nav -->
	<%@include file="nav.jsp"%>


	<section class="meetings-page background" id="meetings">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">
					
											<!-- start 인기최신장르 버튼 -->
						<div class="col-lg-12">
							<div class="filters">
								<ul>
									<li data-filter="*"
										onclick="location.href='picks.jsp';">인기</li>
									<li data-filter="*"
										onclick="location.href='picksNEW.jsp';">최신</li>
									<!-- <li data-filter="*">장르 <i class="fa-solid fa-chevron-down"></i></li> -->
									<li data-filter="*" class="active dropdown dropbtn">장르 <i
										class="fa-solid fa-chevron-down"></i>
										<div class="dropdown-content">
											<a href="#kid">어린이&가족</a> 
											<a href="#ani">애니메이션</a>
											<a href="#ac">액션</a> 
											<a href="#co">코미디</a>
											<a href="#ro" >로맨스</a> 
											<a href="#th">스릴러</a>
											<a href="#ho">호러</a> 
											<a href="#sf">SF</a> 
											<a href="#fa">판타지</a> 
											<a href="#cri">범죄</a>
											<a href="#dra">드라마</a> 
											<a href="#doc">다큐멘터리</a>
											<a href="#mus">뮤지컬</a>
										</div>
									</li>

								</ul>

							</div>
						</div>
						<!-- end 인기최신장르 버튼 -->

						<section>

								<!-- 추천영화 div리스트 -->
								<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
								<div class="container">
									<div class="row">
										<div class="col-lg-12">
											<a class="inline" id="kid"> 어린이&가족</a>
											<div class="slider">
												<%
							SearchingRdDAO dao = new SearchingRdDAO();
												String[] list = new String[10];
							list = dao.selectGenre("kid");

							for (int i = 0; i < 10; i++) {
							%>
												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#kid" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list[i]%>" alt="image">
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
											<a class="inline" id="ani"> 애니메이션</a>
											<div class="slider">
												<%
												String[] list1 = new String[10];
							list1 = dao.selectGenre("ani");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list1[i]%>" alt="image">
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
											<a class="inline" id="ac"> 액션</a>
											<div class="slider">
												<%
												String[] list2 = new String[10];
							list2 = dao.selectGenre("ac");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list2[i]%>" alt="image">
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
											<a class="inline" id="co"> 코미디</a>
											<div class="slider">
												<%
												String[] list3 = new String[10];
							list3 = dao.selectGenre("co");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list3[i]%>" alt="image">
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
											<a class="inline" id="ro"> 로맨스</a>
											<div class="slider">
												<%
												String[] list4 = new String[10];
							list4 = dao.selectGenre("ro");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list4[i]%>" alt="image">
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
											<a class="inline" id="th"> 스릴러</a>
											<div class="slider">
												<%
												String[] list5 = new String[10];
							list5 = dao.selectGenre("th");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list5[i]%>" alt="image">
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
											<a class="inline" id="ho"> 호러</a>
											<div class="slider">
												<%
												String[] list6 = new String[10];
							list6 = dao.selectGenre("ho");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list6[i]%>" alt="image">
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
											<a class="inline" id="sf"> SF</a>
											<div class="slider">
												<%
												String[] list7 = new String[10];
							list7 = dao.selectGenre("sf");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list7[i]%>" alt="image">
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
											<a class="inline" id="fa"> 판타지</a>
											<div class="slider">
												<%
												String[] list8 = new String[10];
							list8 = dao.selectGenre("fa");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list8[i]%>" alt="image">
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
											<a class="inline" id="cri"> 범죄</a>
											<div class="slider">
												<%
												String[] list9 = new String[10];
							list9 = dao.selectGenre("cri");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list9[i]%>" alt="image">
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
											<a class="inline" id="dra"> 드라마</a>
											<div class="slider">
												<%
												String[] list10 = new String[10];
							list10 = dao.selectGenre("dra");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list10[i]%>" alt="image">
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
											<a class="inline" id="doc"> 다큐멘터리</a>
											<div class="slider">
												<%
												String[] list11 = new String[10];
							list11 = dao.selectGenre("doc");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list11[i]%>" alt="image">
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
											<a class="inline" id="mus"> 뮤지컬</a>
											<div class="slider">
												<%
												String[] list12 = new String[10];
							list12 = dao.selectGenre("mus");

							for (int i = 0; i < 10; i++) {
							%>

												<div class="portfolio-item col-md-7 sizing">
													<div class="portfolio-bg">
														<div class="portfolio">
															<a href="picksGenre.jsp#ani" target="_blank">
																<div class="tt-overlay"></div>
															</a> <img src="<%=list12[i]%>" alt="image">
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
							</div>
					</div>
				</div>
			</div>
	</section>
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