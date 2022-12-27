<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title>Pick</title>

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
	background-color: #181818;}
	
body::-webkit-scrollbar {
    width: 15px;  /* 스크롤바의 너비 */
}

body::-webkit-scrollbar-thumb {
    height: 20%; /* 스크롤바의 길이 */
    background: #FFBB00; /* 스크롤바의 색상 */
    border-radius: 10px;
}

body::-webkit-scrollbar-track {
    background: #181818;  /*스크롤바 뒷 배경 색상*/
}

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
									<li data-filter="*" class="active">인기</li>
									<li data-filter="*">최신</li>
									<li data-filter="*">장르 <i class="fa-solid fa-chevron-down"></i></li>

								</ul>

							</div>
						</div>
						<!-- end 인기최신장르 버튼 -->

						<!-- start 폴더생성 -->
						<div class="col-lg-12">
							<div class="row grid">

								<!-- start 폴더 1개 생성 -->
								<!-- all 뒤에 soon = 인기 img = 최신 att = 장르 버튼으로 활성화 -->
								<div class="col-lg-4 templatemo-item-col meeting-item all soon">
									<div class="image-box thumb">
										<div class="price">
											<span> <img id="resizing"
												src="./assets/images/thumb_up.png" alt="thumb_up">
											</span>
										</div>
										<!-- 영화이미지 넣기 가져오기 -->
										<a href="picksList.jsp"><img
											class="image-thumbnail"
											src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"
											alt=""></a>
									</div>
									<div class="down-content">
										<span id="b">Picker </span> 닉네임 <a href="meeting-details.html">
											<p id="fb">폴더이름 가져오기</p>
											<p id="like">👍 000 | 영화 · 00개</p>
										</a>
									</div>
								</div>



							</div>
						</div>

						<!-- page버튼 -->
						<!-- <div class="col-lg-12">
              <div class="pagination">
                <ul>
                  <li class="active"><a href="#">1</a></li>
                  <li><a href="#">2</a></li>
                  <li><a href="#">3</a></li>
                  <li><a href="#"><i class="fa fa-angle-right"></i></a></li>
                </ul>
              </div>
            </div> -->

					</div>
				</div>
			</div>
		</div>


		<!-- footer부분 -->
		<!-- <div class="footer">
      <p>Copyright © 2022 Edu Meeting Co., Ltd. All Rights Reserved.
        <br>
        Design: <a href="https://templatemo.com" target="_parent" title="free css templates">TemplateMo</a>
        <br>
        Distibuted By: <a href="https://themewagon.com" target="_blank" title="Build Better UI, Faster">ThemeWagon</a>
      </p>
    </div> -->

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