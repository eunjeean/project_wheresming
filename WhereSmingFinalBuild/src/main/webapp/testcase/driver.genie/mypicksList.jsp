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

<title>PicksList</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">

<link href="assets/css/picklist/font-awesome.min.css" rel="stylesheet"
	media="screen">
<link href="assets/css/picklist/animate.css" rel="stylesheet">
<link href="assets/css/picklist/magnific-popup.css" rel="stylesheet">
<link href="assets/css/picklist/style.css" rel="stylesheet"
	media="screen">
<link href="assets/css/picklist/responsive.css" rel="stylesheet">

<style>
.container {
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
</style>
</head>

<body>
	<!-- 실시간 채팅  -->
	<%@include file="chat.jsp"%>
	<!-- 상단top nav 
	<%@include file="nav.jsp"%>

	<!--배경-->
	<section class="meetings-page" id="meetings">

		<div class="container">
			<div class="col-lg-8 col-xl-7">

				<div style="display: flex; padding-bottom: 30px;">

					<div class="col-lg-4 templatemo-item-col meeting-item all soon">
						<div class="image-box thumb">
							<div class="price">
								<span> <img id="resizing"
									src="./assets/images/thumb_up.png" alt="thumb_up">
								</span>
							</div>
							<!-- 영화이미지 넣기 가져오기 -->
							<img class="image-thumbnail"
								src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"
								alt="">
						</div>
					</div>

					<div class="text-center text-xl-start" id="nic"
						style="margin-top: 2px; color: #fff">
						<h2 class="display-5 fw-bolder text-white mb-2"
							style="width: 1200px;">공포테마 : 폴더이름 가져오기</h2>
						<span class="b">Picker </span> 닉네임
						<p id="like">👍 000 | 영화 · 00개</p>

						<!-- 담아두기버튼 -->
						<div style="margin-top: 50px">
							<a class="btn btn-outline-light btn-lg px-4" href="#">공유하기</a> 
							<a class="btn btn-outline-light btn-lg px-4" href="#">PICK 수정하기</a>

						</div>
					</div>
				</div>
				<hr width="1320px" style="color: #fff">
			</div>
		</div>
		<!-- 영화리스트 -->
		<section>
			<div class="container">
				<div class="row">
					<div id="grid" class="flex">

						<!-- 영화1개씩 -->
						<div class="portfolio-item col-md-2 sizing">
							<div class="portfolio-bg">
								<div class="portfolio">
									<div class="tt-overlay"></div>
									<img
										src="https://search.pstatic.net/common?type=o&size=174x242&quality=85&direct=true&src=https%3A%2F%2Fs.pstatic.net%2Fmovie.phinf%2F20201109_244%2F1604902097561c22tz_JPEG%2Fmovie_image.jpg%3Ftype%3Dw640_2"
										alt="image">
								</div>
							</div>
						</div>
		</section>
		<!-- End Works Section -->


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
    
    
    
    <!-- Javascript files -->
	<script src="./IAMX – Responsive Personal Portfolio vCard Template_files/jquery.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/bootstrap.min.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/jquery.stellar.min.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/jquery.sticky.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/smoothscroll.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/wow.min.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/jquery.countTo.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/jquery.inview.min.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/jquery.easypiechart.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/jquery.shuffle.min.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/jquery.magnific-popup.min.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/froogaloop2.min.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/jquery.fitvids.js.다운로드"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/js"></script>
	<script
		src="./IAMX – Responsive Personal Portfolio vCard Template_files/scripts.js.다운로드"></script>
	<!-- Code injected by live-server -->
	<script type="text/javascript">
	// <![CDATA[  <-- For SVG support
	if ('WebSocket' in window) {
		(function () {
			function refreshCSS() {
				var sheets = [].slice.call(document.getElementsByTagName("link"));
				var head = document.getElementsByTagName("head")[0];
				for (var i = 0; i < sheets.length; ++i) {
					var elem = sheets[i];
					var parent = elem.parentElement || head;
					parent.removeChild(elem);
					var rel = elem.rel;
					if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
						var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
						elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
					}
					parent.appendChild(elem);
				}
			}
			var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
			var address = protocol + window.location.host + window.location.pathname + '/ws';
			var socket = new WebSocket(address);
			socket.onmessage = function (msg) {
				if (msg.data == 'reload') window.location.reload();
				else if (msg.data == 'refreshcss') refreshCSS();
			};
			if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
				console.log('Live reload enabled.');
				sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
			}
		})();
	}
	else {
		console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
	}
	// ]]>
    
    
    
  </script>
</body>

</html>