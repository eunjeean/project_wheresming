<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
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
	height: 3000px;
	background-color: #181818;
}
/* 스크롤바 디자인 */
#body2::-webkit-scrollbar {
    width: 15px;  /* 스크롤바의 너비 */
}

#body2::-webkit-scrollbar-thumb {
    height: 20%; /* 스크롤바의 길이 */
    background: #FFBB00; /* 스크롤바의 색상 */
    border-radius: 10px;
}

#body2::-webkit-scrollbar-track {
    background: #181818;  /*스크롤바 뒷 배경 색상*/
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
/* 새슬라이더끝 */
</style>

</head>



<body id="body2">
	<%@include file="nav.jsp"%>
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



	<!-- ***** 메인영화재생 ***** -->
	<section class="mainmovie" id="top" data-section="section1">
		<video autoplay muted loop id="video">
			<source src="assets/images/yourname.mp4" type="video/mp4" />
		</video>
	</section>



	<!-- 추천영화 div리스트 -->
	<!-- wheresming실시간추천 구간 top으로위치조정가능 -->
	<section class="services" style="top: 850px";>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<a class="texts">ㅤWhere?Sming 실시간검색순위</a>
					<div class="slider">

						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>
						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>

					<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>
						
						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>


					</div>

				</div>
			</div>
		</div>
		<!-- 추천영화 div리스트끝 -->



		<!-- 추천영화 div리스트 -->
		<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->

		<div class="container" style="padding-top: 200px;">
			<div class="row">

				<div class="col-lg-12">

					<a class="texts">ㅤ넷플릭스 실시간순위</a>
					<div class="slider">
												<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>
						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>

					<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>
						
						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>


					</div>

				</div>
			</div>
		</div>
		<!-- 추천영화 div리스트끝 -->

		<!-- 추천영화 div리스트 -->
		<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
		<div class="container" style="padding-top: 200px;">
			<div class="row">
				<div class="col-lg-12">
					<a class="texts">ㅤ왓챠 실시간순위</a>
					<div class="slider">

					<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>
						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>

					<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>
						
						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>



						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>


					</div>

				</div>
			</div>
		</div>
		<!-- 추천영화 div리스트끝 -->

		<!-- 추천영화 div리스트 -->
		<!-- div class="container" 옆에 스타일로 패팅탑주면 위치조절가능함 -->
		<div class="container" style="padding-top: 200px;">
			<div class="row">
				<div class="col-lg-12">
					<a class="texts">ㅤ티빙 실시간순위</a>
					<div class="slider">

						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>
						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>

					<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>
						
						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"alt="image">
								</div>
							</div>
						</div>


						<div class="portfolio-item col-md-7 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<a href="http://www.naver.com" target="_blank"><div class="tt-overlay"></div></a> 
									<img
										src="https://upload.wikimedia.org/wikipedia/ko/b/bc/%EC%84%BC%EA%B3%BC_%EC%B9%98%ED%9E%88%EB%A1%9C%EC%9D%98_%ED%96%89%EB%B0%A9%EB%B6%88%EB%AA%85_%ED%8F%AC%EC%8A%A4%ED%84%B0.jpg?20160225082510"
										alt="image">
								</div>
							</div>
						</div>


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