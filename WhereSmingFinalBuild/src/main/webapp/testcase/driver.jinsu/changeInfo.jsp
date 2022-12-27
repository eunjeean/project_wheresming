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

<title>mypage</title>

<!-- Bootstrap core CSS -->
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets/css/fontawesome.css">
<link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
<link rel="stylesheet" href="assets/css/owl.css">
<link rel="stylesheet" href="assets/css/lightbox.css">

<style>
.background {
	height: 940px;
	background-color: #181818;
}

.price {
	position: relative;
}

body {
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	color: white;
	text-decoration: none;
	height: 100%;
	background-color: #181818;
}

/* 스크롤바 */
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

label {
	font-weight: 700;
	font-size: 14px;
	margin: 19px 0 8px;
}

.box {
	display: block;
	width: 100%;
	height: 40px;
	padding: 10px 14px 10px 14px;
	box-sizing: border-box;
	background: transparent;
	background-color: rgba(134, 134, 134, 0.459);
	position: relative;
	border-radius: 18px;
}

input {
	font-weight: 300;
	text-align: center;
	color: white;
	font-size: 15px;
	background: transparent;
	outline: none;
	border: 0;
}

.inputli {
	width: 300px;
	height: 40px;
}

.cen {
	display: flex;
	justify-content: center;
	margin-top: 24px;
	margin-bottom: 100px;
}

.mg {
	margin: 30px 0px;
}

.siz {
	background-color: #FFBB00;
	height: 60px;
	font-size: 18px;
	font-weight: 600;
	border-radius: 18px;
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

				<!-- 마이페이지 버튼 -->
				<div class="col-lg-12">
					<div class="filters">
						<ul>
							<a href="mypage.jsp" style="color: #fff"><li>MY PICK!</li></a>
							<a href="changeInfo.jsp" style="color: #fff">
								<li class="active">회원정보수정</li>
							</a>
						</ul>
					</div>
				</div>

				<!-- 회원정보수정 -->
				<div class="cen">
					<form action="Update" method="post">
						<label for="name">아이디</label>
						<li class="inputli"><div onclick = "ckfunc()" name="mb_id" class="box" title="아이디는 변경이 불가합니다" >${loginMember.mb_id}</div>
							</li>

						<label for="name">닉네임</label>
						<li class="inputli"><input name="mb_nick" type="text"
							class="box" value="${loginMember.mb_nick}" placeholder=""></li>
						<label for="name">비밀번호</label>
						<li class="inputli"><input name="mb_pw" type="password"
							class="box" value="${loginMember.mb_pw}"
							placeholder="변경할 비밀번호를 입력하세요"></li> <label for="name">이메일</label>
						<li class="inputli"><input name="mb_email" type="text"
							class="box" value="${loginMember.mb_email}" placeholder=""></li>
						<label for="name">휴대전화번호</label>
						<li class="inputli"><input name="mb_phone" type="text" class="box"
							value="${loginMember.mb_phone}" placeholder=""></li>

						<li class="inputli mg"><input type="submit" class="box siz"
							value="회원정보수정완료"></li>
					</form>
				</div>

			</div>
		</div>
	</section>



	<!-- 조인 -->
	<script src="main.js"></script>


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
	
	function ckfunc() {
		alert("아이디는 변경이 불가합니다!")
	}
	
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