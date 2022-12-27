<%@page import="com.wheresming.movieinfo.movieInfoReturn"%>
<%@page import="com.wheresming.movie.MovieDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.wheresming.search.SearchingDAO"%>
<%@page import="com.wheresming.member.MemberDTO"%>
<%@page import="com.wheresming.member.LoginDAO"%>


<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="UTF-8">
<title>Where?Sming</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<!-- 스타일 링크추가 -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link href="assets/css/picklist/font-awesome.min.css" rel="stylesheet"
	media="screen">
<link href="assets/css/picklist/animate.css" rel="stylesheet">
<link href="assets/css/picklist/magnific-popup.css" rel="stylesheet">
<link href="assets/css/picklist/style.css" rel="stylesheet"
	media="screen">
<link href="assets/css/picklist/responsive.css" rel="stylesheet">

<style>
.background {
	background-color: #181818;
	/* cover로 하면 배경화면 사이즈가 자동으로조절됨 */
	background-size: cover;
	background-repeat: no-repeat;
	background-blend-mode: darken;
	position: absolute;
	height: 3000px;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	z-index: -1;
	/* 	filter: blur(4px); */
	min-height: 100%;
}
/* 월요일에추가  */
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

.container2 {
	/* 영화설명페이지 위치이동 */
	margin-top: 200px;
	margin-left: 280px;
	background: transparent;
	position: absolute;
	background-color: rgba(255, 255, 255, 0);
	color: white;
	font-size: 15px;
	/* 창 줄이고 늘릴때 자동조절  */
	width: 100%;
	height: 100%;
}

/* 메인 영화포스터사이즈조절 */
#imgPoster {
	width: 250px;
	height: 375px;
	border-radius: 20px;
	margin-right: 25px;
}

/* 영화오른쪽추천페이지 */
body {
	background-color: #FFBB00;
}

.container3 {
	color: #FFBB00;
	font-size: 30px;
	margin-top: 178px;
	margin-left: 1420px;
	object-fit: cover;
}

.container:after {
	clear: both;
	display: table;
	content: '';
}

/* 오른쪽 영화포스터 크기조절은 여기서~! */
.items {
	width: 200px;
	position: relative;
	overflow: hidden;
	background-size: cover;
	border-radius: 8px;
	margin-top: 5px;
	margin-bottom: 15px;
}

.details {
	background-color: rgba(0, 0, 0, 0.);
	width: 220px;
	height: 140px;
	padding: 10px;
	top: 0;
	left: 0;
	font-family: georgia;
	color: #fff;
	opacity: 0;
}

.details h3 {
	margin-bottom: 20px;
}

.details h6 {
	text-align: right;
	margin-top: 40px;
}

.details p {
	font-size: 14px;
	font-style: italic;
	text-align: center;
	line-height: 20px;
}

.items:hover .details {
	opacity: 1;
	transition: opacity .2s .3s;
}

.items div {
	position: absolute;
}

/* one */
.one {
	left: 100%;
	bottom: 100%;
	height: inherit;
}

.items:hover .one {
	left: 0;
	bottom: 0;
}

/* two */
.two {
	width: inherit;
	height: inherit;
	left: 0;
	bottom: 100%;
}

.items:hover .two {
	transform: rotate(180deg);
	left: 0;
	bottom: 0;
}

/* three */
.three {
	left: 0;
	top: 0;
	width: inherit;
	height: inherit;
	transform: scale(0, 0);
}

.items:hover .three {
	left: 0;
	top: 0;
	transform: scale(1, 1);
}

/* four */
.four {
	width: inherit;
	height: inherit;
	left: 0;
	top: 0;
	transform: scale(0, 0) rotate(0deg);
}

.items:hover .four {
	left: 0;
	top: 0;
	transform: scale(1, 1) rotate(1080deg);
}

/* five */
.five {
	left: 0;
	top: 0;
	width: inherit;
	height: inherit;
	transform: scale(0, 0);
}

.items:hover .five {
	left: 0;
	top: 0;
	transform: scale(1, 1);
}

/* 영화오른쪽추천페이지끝 */

/* 댓글창CSS */
.card {
	position: relative;
	display: flex;
	flex-direction: column;
	min-width: 0;
	word-wrap: break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(255, 255, 255, 0.125);
	border-radius: 0.25rem;
}

/* 댓글위치조절가능*/
.card-body {
	color: #fff;
	width: 1200px;
	margin-top: -1100px;
	margin-left: 270px;
	background: transparent;
	/* 댓글 글자 크기 조절 */
	font-size: 15px;
	background-color: rgba(255, 255, 255, 0);
}

.card-link+.card-link {
	margin-left: 1rem;
}

.card-footer:last-child {
	border-radius: 0 0 calc(0.25rem - 1px) calc(0.25rem - 1px);
}

.card-header-tabs {
	margin-right: -0.5rem;
	margin-bottom: -0.5rem;
	margin-left: -0.5rem;
	border-bottom: 0;
}

.card-img, .card-img-top, .card-img-bottom {
	width: 100%;
}

.card-group>.card:not(:first-child) .card-img-top, .card-group>.card:not(:first-child) .card-header
	{
	border-top-left-radius: 0;
}

.card-group>.card:not(:first-child) .card-img-bottom, .card-group>.card:not(:first-child) .card-footer
	{
	border-bottom-left-radius: 0;
}

.d-flex {
	display: flex !important;
}

.mt-4 {
	margin-top: 1.5rem !important;
}

.mt-auto {
	margin-top: auto !important;
}

.mb-auto {
	margin-bottom: auto !important;
}

.ms-3 {
	margin-left: 1rem !important;
}

.ms-auto {
	margin-left: auto !important;
}

.form-control {
	width: 65%;
	height: 70px;
	opacity: 0.8;
	border-radius: 8px;
}

.ms-3 {
	width: 750px;
}

/* 댓글창CSS 끝*/

/* 관련영화추천 글씨 */
.moo {
	text-align: left;
	margin-left: 23px;
	display: block;
	font-weight: 550;
	font-size: 18px;
	text-transform: uppercase;
	color: #fff;
	/* color: rgb(255, 187, 0); */
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s;
	height: 40px;
	line-height: 40px;
	border: transparent;
	letter-spacing: 1px;
	display: block;
}

/* 종이비행기 제출 버튼 가로위치조정 */
#paper {
	position: relative;
	left: 770px;
	bottom: -60px;
	color: white;
	background-color: rgba(255, 255, 255, 0);
	border: none;
	background-color: rgba(255, 255, 255, 0);
}

/* 리뷰작성 글자 꾸미기 */
.reviewmain {
	display: block;
	font-weight: 700;
	font-size: 23px;
	text-transform: uppercase;
	color: rgb(255, 187, 0);
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s;
	height: 15px;
	line-height: 40px;
	border: transparent;
	letter-spacing: 1px;
}

/* 영화 본문 옆에 제목,장르,평점 글자들꾸미기 */
#dvMeta {
	font-size: 20px;
	font-weight: 540;
}

/* 박스3개 */
.box1, .box2, .box3 {
	z-index: -1;
	position: relative;
	display: inline-block;
	width: 56px;
	height: 56px;
	vertical-align: middle;
	background-size: cover;
	margin-top: 5px;
	margin-right: 3px;
	border-radius: 15px;
} /* 박스3개끝  */

/* 찜눌렀을때 div디자인 */
#myDIV {
	z-index: 1;
	background-color: rgba(255, 255, 255, 0.8);
	height: 250px;
	width: 300px;
	float: right;
	overflow: auto;
	color: black;
	padding-top: 10px;
	padding-left: 10px;
	padding-right: 10px;
	border-radius: 10px;
	position: absolute;
}

#myDIV::-webkit-scrollbar {
	width: 15px; /* 스크롤바의 너비 */
}

#myDIV::-webkit-scrollbar-thumb {
	height: 30%; /* 스크롤바의 길이 */
	background: #FFBB00; /* 스크롤바의 색상 */
	border-radius: 10px;
}

#myDIV::-webkit-scrollbar-track {
	background: rgba(255, 255, 255, .2); /*스크롤바 뒷 배경 색상*/
}

.pickbutton {
	background-color: rgb(70, 68, 68);
	position: relative;
	overflow: auto;
	color: rgb(255, 255, 255);
	border: none;
	/* margin-left and margin-right + width = 50%*/ */
	width: 300px;
	margin: 10px 20px;
	padding: 10px 50px;
	border-radius: 10px;
	font-size: 16px;
}

.pickbutton2 {
	font-weight: 800;
	font-size: 20px;
	border-radius: 10px;
	display: flex;
}
/* 찜목록 눌렀을때 나오는 폴더 하트쪽 수정 */
.button3 {
	background-color: rgba(255, 255, 255, 0);
	border: none;
}

.clicked {
	color: rgb(253, 85, 85)
}

/* 글씨모양수정 */
.mvTitlesize {
	font-size: 35px;
}

.b {
	font-weight: 400;
	font-size: 14px;
	color: #a3a3a3;
}

.info {
	font-weight: 400;
	font-size: 16px;
	color: #fff;
}

/* 평점별 기능디자인 */
#cntstar {
	display: flex;
	flex-direction: row;
}

/*  별위치 */
.star-rating {
	/* 	display: flex;
	font-size: 2.25rem;
	line-height: 2.5rem;
	justify-content: space-around;
	padding: 0 0.2em;
	text-align: center;
	width: 5em; */
	
}

.star-rating input {
	display: none;
}

.star-rating label {
	-webkit-text-fill-color: transparent;
	/* Will override color (regardless of order) */
	-webkit-text-stroke-width: 2.3px;
	-webkit-text-stroke-color: #a3a3a3;
	cursor: pointer;
}

.star-rating :checked ~ label {
	-webkit-text-fill-color: gold;
	-webkit-text-stroke-color: gold;
}

.star-rating label:hover, .star-rating label:hover ~ label {
	-webkit-text-fill-color: gold;
	-webkit-text-stroke-color: gold;
}

#star2 {
	position: relative;
	margin-bottom: -130px;
	width: 600px;
	margin-left: 50px;
}

#button4 {
	border: none;
	font-size: 20px;
	font-weight: 700;
	background-color: transparent;
}

/* 리뷰파트 스타일 */
.bb {
	font-weight: 550;
	font-size: 16px;
	color: #FFBB00;
}

.bc {
	font-weight: 550;
	font-size: 15px;
	color: #fff;
}

.bd {
	font-weight: 350;
	font-size: 16px;
	color: #fff;
}

.nic {
	font-weight: 550;
	font-size: 15px;
	color: #fff;
	display: inline;
}

#like {
	font-size: 14px;
	display: inline;
}

#likes {
	font-size: 14px;
	display: inline;
	color: #fff;
	font-weight: 500;
}

/* 평점 */
.scoreb {
	display: inline;
	color: #fff;
	font-weight: 600;
	font-size: 15px;
}

/* 평점별 기능디자인끝 */
</style>
</head>


<body>
	<%
	HttpSession session1 = request.getSession();
	MovieDTO code = (MovieDTO) session1.getAttribute("code");

	movieInfoReturn rt = new movieInfoReturn();

	String movietime = "";
	String moviestory = "";

	String result = code.getMv_nf();
	if (result == code.getMv_nf() && code.getMv_nf() != null) {
		movietime = rt.movieInfoNft(result);
		moviestory = rt.movieInfoNfs(result);
	} else if (code.getMv_nf() == null && code.getMv_wc() != null) {
		result = code.getMv_wc();
		movietime = rt.movieInfoNaver(code.getMv_title());
		moviestory = rt.movieInfoWcs(result);
	} else if (code.getMv_wc() == null) {
		result = code.getMv_tv();
		movietime = rt.movieInfoTvt(result);
		moviestory = rt.movieInfoTvs(result);
	}
	%>

	<div class="background"></div>
	<div class="container2" style="height: 600px; width: 1000px;">

		<!-- for form container -->
		<!-- 메타정보 -->
		<div id="dvMeta">

			<jsp:useBean id="MovieRatingViewerDAO"
				class="com.wheresming.movie.MovieRatingViewerDAO" />
			<c:set var="rating"
				value="${MovieRatingViewerDAO.selectRating(selectPoster.mv_seq)}" />

			<table border="0">
				<tr>
					<td rowspan="7"><img src="${selectPoster.mv_image }"
						id="imgPoster" /></td>


					<!-- 영화정보 -->
					<td><h2 class="mvTitlesize">${selectPoster.mv_title }</h2></td>
				</tr>

				<tr>
					<td><span class="b"> <!-- 장르별 출력 --> <c:choose>
								<c:when test="${selectPoster.mv_genre eq 'kid'}">어린이&가족	
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'ani'}">애니메이션
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'ac'}">액션
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'co'}">코미디
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'ro'}">로맨스
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'th'}">스릴러
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'ho'}">호러
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'sf'}">SF
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'fa'}">판타지
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'cri'}">범죄
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'dra'}">드라마
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'doc'}">다큐멘터리
						</c:when>
								<c:when test="${selectPoster.mv_genre eq 'mus'}">음악&뮤지컬
						</c:when>
								<c:otherwise>기타
						</c:otherwise>
							</c:choose>
					</span> <!-- 영화시간크롤링 --> <span class="b"> <!-- ·  --><%=movietime%>
							<!-- · 평점 9.5점 --> <!-- 평점 불러오는 JSTL --> <span class="scoreb">
								· Picker 평점 <c:out value="${rating}" />
						</span>
					</span></td>
				</tr>

				<tr>
					<td>
						<div class="star-rating space-x-4 mx-auto">
							<form action="MovieRating" method="get">
								<span class="info" style="font-weight: 600;">별점을 선택해주세요</span>
								<button id="button4" type="submit">
									<input type="radio" id="5-stars" name="rating" value="5"
										v-model="ratings" /> <label for="5-stars" class="star pr-4">★</label>
									<input type="radio" id="4-stars" name="rating" value="4"
										v-model="ratings" /> <label for="4-stars" class="star">★</label>
									<input type="radio" id="3-stars" name="rating" value="3"
										v-model="ratings" /> <label for="3-stars" class="star">★</label>
									<input type="radio" id="2-stars" name="rating" value="2"
										v-model="ratings" /> <label for="2-stars" class="star">★</label>
									<input type="radio" id="1-star" name="rating" value="1"
										v-model="ratings" /> <label for="1-star" class="star">★</label>
								</button>

							</form>
						</div>
					</td>
				</tr>

				<tr>
					<c:choose>
						<c:when test="${empty loginMember }">
							<td><a href="login.jsp"> <i
									class="fa-solid fa-heart fa-1x"
									style="font-weight: 600; color: rgb(253, 85, 85);"> </i> <span
									class="info"> 찜하기</span>
							</a>ㅤ</td>

						</c:when>

						<c:otherwise>
							<td><a href="javascript:doDisplay();"> <i
									class="fa-solid fa-heart fa-1x"
									style="font-weight: 600; color: rgb(253, 85, 85);"> </i> <span
									class="info"> 찜하기</span>
							</a>ㅤ ㅤ <!--  찜목록눌렀을때 나오는 div-->
								<div id="myDIV" style="display: none;">

									<h4 style="font-weight: 800;">
										<i class="fa-solid fa-file-circle-plus"></i>PICK목록담기
									</h4>


									<!-- 폴더이름 라이크수 폴더생성일자 -->

									<jsp:useBean id="PickListViewerDAO"
										class="com.wheresming.pick.PickListViewerDAO" />
									<c:set var="purple"
										value="${PickListViewerDAO.selectAllPickList(loginMember.mb_id)}" />

									<form action="AddPick" id="addpick" method="get">
										<input id=foldername name="foldername" type="hidden">
										<c:forEach items="${purple}" var="p" varStatus="status">



											<!-- 찜눌렀을때 DB에담는거 하는중 보라-->

											<div onclick="folderclick('${p.fd_name}')">
												<button class="button3" type="button">
													<i class="fa-regular fa-heart"></i>
													<c:out value="${p.fd_name}" />
												</button>
											</div>

											<!--찜목록 보라끝  -->


										</c:forEach>
									</form>

									<form action="CreatePickList" method="get">
										<div>
											<input name="folder">
										</div>
										<button type="submit" class="pickbutton">
											<i class="fa-solid fa-file-circle-plus"></i>PICK폴더생성
										</button>
									</form>
								</div></td>
						</c:otherwise>
					</c:choose>
				</tr>

				<tr>
					<td><span class="info" style="font-weight: 600;">제공OTT</span>
						<!-- 넷플왓챠티빙 -->
						<div class="wrapper" style="width: 350px;">
							<c:choose>
								<c:when test="${empty selectPoster }">
									<li class="picks"><a href="index.jsp">검색된 결과가 없습니다.</a></li>
								</c:when>
								<c:otherwise>
									<!-- 넷플 코드 있을 때 -->
									<c:if test="${not empty selectPoster.mv_nf }">
										<a
											href="https://www.netflix.com/kr/title/${selectPoster.mv_nf}">
											<div class="box1"
												style="background-image: url('data:image/jpeg;base64,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')"></div>
										</a>
									</c:if>
									<!-- 왓챠 코드 있을 때 -->
									<c:if test="${selectPoster.mv_wc != null }">
										<a href="https://watcha.com${selectPoster.mv_wc}">
											<div class="box2"
												style="background-image: url('https://play-lh.googleusercontent.com/vAkKvTtE8kdb0MWWxOVaqYVf0_suB-WMnfCR1MslBsGjhI49dAfF1IxcnhtpL3PnjVY')"></div>
										</a>
									</c:if>
									<!-- 티빙 코드 있을 때 -->
									<c:if test="${selectPoster.mv_tv != null }">
										<a href="https://www.tving.com${selectPoster.mv_tv}">
											<div class="box3"
												style="background-image: url('https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMjA0MThfMjIw%2FMDAxNjUwMjYxMDI0ODc0.2YppfkpxWVeiufpj309p7P8OTDH6utZEIrYS-AAUPaYg.ahQsY_JjgA4rS_Nt8lT15sEd1PKLj4QxrQGVLgGfLbMg.JPEG.qkrejrwk0810%2Ftving_log.jpg&amp;type=sc960_832')"></div>
										</a>
									</c:if>
								</c:otherwise>
							</c:choose>
						</div> <!-- 넷플왓챠티빙끝--></td>
				</tr>
				<tr>
					<td>
						<div class="info">
							<%=moviestory%>
						</div>
					</td>
				</tr>

			</table>

		</div>
	</div>


	<!-- 채팅 -->
	<script>
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
	</script>
	<!-- 채팅끝 -->

	<!-- ***** 위에 로고메뉴바 ***** -->
	<header class="header-area header-sticky" style="height: 200px;">

<%-- 	<%@include file="nav.jsp"%> --%>


		<!-- 오른쪽영화추천 -->
		
		
		<jsp:useBean id="SearchingDAO"
			class="com.wheresming.search.SearchingDAO" />
		<c:set var="RecommendList"
			value="${SearchingDAO.recommend(selectPoster.mv_genre) }" />
		<div class="container3">

			<p class="moo">ㅤ관련영화추천</p>

			<form action="SearchMovie" method="get" id="movie">
				<input id="mv_seq" name="mv_seq" type="hidden">

				<c:forEach items="${RecommendList}" var="r" varStatus="status"
					begin="1" end="5">


					<div class="bg-items">
						<div class="items" onclick="imgclick('${r.mv_seq}')" style="cursor:pointer;">
							<img src="${r.mv_image }">
							<div class="two"></div>
							<div class="details"></div>
						</div>
					</div>

				</c:forEach>
			</form>
		</div>
		<!-- 오른쪽영화추천 -->


		<!-- 리뷰창 -->

		<section class="mb-5">
			<div class="card-body">
				<span class="reviewmain">리뷰작성</span>
				<!-- Comment form-->

				<form class="mb-4" sytle="width: 1200px;" action="AddReview"
					method="get">
					<!-- 리뷰 제출용 비행기  -->
					<!--    <div id="paper" class="fa-solid fa-paper-plane fa-2x" style="color:rgb(255, 255, 255)"><button type="submit"> 제출</button></div> -->
					<button id="paper" type="submit">
						<i class="fa-solid fa-paper-plane fa-3x"></i>
					</button>
					<!-- 리뷰 제출용 비행기끝 -->
					<textarea class="form-control" rows="3" placeholder="리뷰를 남겨주세요!"
						name="comment"></textarea>
				</form>

				<div class="d-flex mb-4" sytle="width: 1200px">

					<!-- Parent comment-->

					<div class="ms-3">
						<div class="fw-bold"></div>
						<p class="bc">인기댓글순 ▼</p>


						<!--댓글시작  -->
						<jsp:useBean id="ReviewViewerDAO"
							class="com.wheresming.review.ReviewViewerDAO" />
						<c:set var="ReviewViewerDTOList"
							value="${ReviewViewerDAO.selectAllReview(selectPoster.mv_seq)}" />


						<c:forEach items="${ReviewViewerDTOList}" var="m"
							varStatus="status">
							<div class="d-flex mt-4">
								<div class="flex-shrink-0">
									<img class="rounded-circle" src="https://ifh.cc/g/YBbktb.jpg"
										alt="no img" />
								</div>
								<div class="ms-3">
									<div clasas="fw-bold">
										<span class="bb">Picker </span>
										<p class="nic">
											<c:out value="${m.mb_nick}" />
										</p>
										<p class="bd">
											<c:out value="${m.cmt_content}" />
										</p>
									</div>
									<span id="like"> <c:out value=" ${m.cmt_date}" />
									</span> <span id="likes"> 👍 <c:out value="${m.cmt_likes}" />
									</span>
								</div>
							</div>
						</c:forEach>
						<!--댓글끝  -->
					</div>
				</div>
			</div>
		</section>

		<!-- Bootstrap core JavaScript -->
		<script src="vendor/jquery/jquery.min.js"></script>

		<!-- 클릭 이벤트 -->
		<script>
			function imgclick(mv_seq) {
				$("#mv_seq").val(mv_seq);
				$("#movie").attr("action", "SearchMovie");
				$("#movie").submit();
			}
		</script>

		<script>
			ratingToPercent()
			{
				const score = +this.restaurant.averageScore * 20;
				return score + 1.5;
			}

			function doDisplay() {
				var con = document.getElementById("myDIV");
				if (con.style.display == 'none') {
					con.style.display = 'block';
				} else {
					con.style.display = 'none';
				}
			}
		</script>
		<script type="text/javascript">
			var bDisplay = true;
			function doDisplay() {
				var con = document.getElementById("myDIV");
				if (con.style.display == 'none') {
					con.style.display = 'block';
				} else {
					con.style.display = 'none';
				}
			}
		</script>
		<!--찜목록 클릭색변경기능-->
		<script type="text/javascript">
			var button3 = document.getElementsByClassName('button3');

			for (var i = 0; i < button3.length; i++) {
				button3[i].addEventListener('click', function() {
					for (var j = 0; j < button3.length; j++) {
						button3[j].style.color = "black";
					}
					this.style.color = "red";
				})
			}
		</script>
		<!--보라  -->
		<script>
			function folderclick(fd_name) {
				$("#foldername").val(fd_name);
				$("#addpick").attr("action", "AddPick");
				$("#addpick").submit();
				alert('pick폴더에 추가되었습니다.')
			}
		</script>


		<!-- ***** Header Area End ***** -->
</body>

</html>