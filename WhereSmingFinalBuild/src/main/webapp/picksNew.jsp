<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
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

<title>Where?Sming</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">

<style>
.background {
	height: 3000px;
	background-color: #181818;
}

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
	margin-left : -55px;
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

</style>

</head>

<body>
	<!-- 실시간 채팅  -->
	<%@include file="chat.jsp"%>
	<!-- 상단top nav -->
	<%@include file="nav.jsp"%>

	<!-- 최신순 픽 리스트 불러오는 JSTL -->
	<jsp:useBean id="UploadPickListDAO" class="com.wheresming.pick.UploadPickListDAO" />
	<c:set var="selectPick" value="${UploadPickListDAO.pickListNew()}" />


	<section class="meetings-page background" id="meetings">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="row">

						<!-- start 인기최신장르 버튼 -->
						<div class="col-lg-12">
							<div class="filters">
								<ul>
									<li data-filter="*" onclick="location.href='picks.jsp';">인기</li>
									<li data-filter="*" class="active" onclick="location.href='picksNew.jsp';">최신</li>
									<!-- <li data-filter="*">장르 <i class="fa-solid fa-chevron-down"></i></li> -->
									<li data-filter="*" class="dropdown dropbtn" onclick="location.href='picksGenre.jsp';">장르
									<i class="fa-solid fa-chevron-down"></i>
										<div class="dropdown-content">
										<%String url = "picksGenre.jsp#"; %>
											<a href = "<%=url %>kid">어린이&가족</a> 
											<a href = "<%=url %>ani">애니메이션</a> 
											<a href = "<%=url %>ac">액션</a>
											<a href = "<%=url %>co">코미디</a> 
											<a href = "<%=url %>ro">로맨스</a> 
											<a href = "<%=url %>th">스릴러</a> 
											<a href = "<%=url %>ho">호러</a> 
											<a href = "<%=url %>sf">SF</a> 
											<a href = "<%=url %>fa">판타지</a> 
											<a href = "<%=url %>cri">범죄</a> 
											<a href = "<%=url %>dra">드라마</a> 
											<a href = "<%=url %>doc">다큐멘터리</a> 
											<a href = "<%=url %>mus">뮤지컬</a>
										</div>
									</li>

								</ul>

							</div>
						</div>
						<!-- end 인기최신장르 버튼 -->

						<!-- start 폴더생성 -->
						<div class="col-lg-12">
							<div class="row grid">

								<!-- start 폴더 1개 생성 -->
								<!-- all 뒤에 soon = 인기 img = 최신 att = 장르 버튼으로 활성화 -->
								
								<!-- 최신순 뿌려주는 JSTL -->	
								<c:forEach items="${selectPick}" var="n" varStatus="status">
									<div class="col-lg-3 templatemo-item-col meeting-item all soon">
										<div class="image-box thumb">
											<div class="price">
												<span> <img id="resizing"
													src="./assets/images/thumb_up.png" alt="thumb_up">
												</span>
											</div>
											<!-- 영화이미지 넣기 가져오기 -->
											<a href="picksList.jsp"><img class="image-thumbnail"
												src="${n.mv_image }"
												alt=""></a>
										</div>
										<div class="down-content">
											<span id="b">Picker </span> <c:out value="${n.mb_nick }"/> <a href="meeting-details.html">
												<p id="fb"><c:out value="${n.fd_name }"/></p>
												<p id="like">👍 <c:out value="${n.fd_likes }"/></p>
											</a>
										</div>
									</div>
								</c:forEach>
								<!-- JSTL 구문 끝 -->
								
								



							</div>
						</div>

					</div>
					
				</div>
			</div>
		</div>


	</section>


	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<script src="assets/js/isotope.min.js"></script>
	<script src="assets/js/owl-carousel.js"></script>
	<script src="assets/js/lightbox.js"></script>
	<script src="assets/js/tabs.js"></script>
	<script src="assets/js/isotope.js"></script>
	<script src="assets/js/video.js"></script>
	<script src="assets/js/slick-slider.js"></script>
	<script src="assets/js/custom.js"></script>

	<script>

    //according to loftblog tut
    $('.nav li:first').addClass('active');

    var showSection = function showSection(section, isAnimate) {
      var
        direction = section.replace(/#/, ''),
        reqSection = $('.section').filter('[data-section="' + direction + '"]'),
        reqSectionPos = reqSection.offset().top - 0;

      if (isAnimate) {
        $('body, html').animate({
          scrollTop: reqSectionPos
        },
          800);
      } else {
        $('body, html').scrollTop(reqSectionPos);
      }

    };

    var checkSection = function checkSection() {
      $('.section').each(function () {
        var
          $this = $(this),
          topEdge = $this.offset().top - 80,
          bottomEdge = topEdge + $this.height(),
          wScroll = $(window).scrollTop();
        if (topEdge < wScroll && bottomEdge > wScroll) {
          var
            currentId = $this.data('section'),
            reqLink = $('a').filter('[href*=\\#' + currentId + ']');
          reqLink.closest('li').addClass('active').
            siblings().removeClass('active');
        }
      });
    };

    $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
      e.preventDefault();
      showSection($(this).attr('href'), true);
    });

    $(window).scroll(function () {
      checkSection();
    });
  </script>
</body>

</html>