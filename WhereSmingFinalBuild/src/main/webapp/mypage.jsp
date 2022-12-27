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

<!-- 마이페이지css -->

<style>
.background {
	height: 1500px;
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

.price {
	position: relative;
}

.colorch {
	width: 18px;
	color: #fff;
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

						<!-- 마이페이지 버튼 -->
						<div class="col-lg-12">
							<div class="filters">
								<ul>
									<a href="mypage.jsp" style="color: #fff"><li class="active">MY
											PICK!</li></a>
									<a href="changeInfo.jsp" style="color: #fff"><li>회원정보수정</li></a>
								</ul>

							</div>
						</div>


						<!-- start 폴더생성 -->
						<div class="col-lg-12">
							<div class="row grid">

								<!-- start 폴더 1개 생성 -->
								<!-- all 뒤에 soon = 인기 img = 최신 att = 장르 버튼으로 활성화 -->
								<jsp:useBean id="PickListViewerDAO"
									class="com.wheresming.pick.PickListViewerDAO" />
								<c:set var="purple"
									value="${PickListViewerDAO.selectAllPickList(loginMember.mb_id)}" />


								<!--보라작업중  -->
								<form action="MyPickListViewer" method="get" id="addpick">
								<input id="foldername" name="foldername" type="hidden">
									<c:forEach items="${purple}" var="p" varStatus="status">
										<div
											class="col-lg-3 templatemo-item-col meeting-item all soon">

											<div class="image-box thumb">
												<div class="price">
													<span> <a href="#"><img id="resizing"
															src="./assets/images/heart-solid.png" alt="heart"></a>
													</span>
												</div>
												<!-- 영화이미지 넣기 가져오기 -->
												<!-- <a href="mypicksList.jsp"> -->
												<img class="image-thumbnail"
													src="https://image.tving.com/upload/cms/caim/CAIM2100/M000260433.png/dims/resize/400"
													alt="" onclick="folderclick('${p.fd_name}')" style="cursor:pointer;"></a>
											</div>
								 <!-- 보라작업중끝 -->

											<div class="down-content">
												<a href="mypicksList.jsp">
													<p id="fb">
														<c:out value="${p.fd_name}" />
													</p>
													<p id="like"></p>
												</a>
											</div>
										</div>
									</c:forEach>
								</form>

								<!-- 보라작업시작끝 -->
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
  
  	<!--보라  -->
		<script>
			function folderclick(fd_name){
				$("#foldername").val(fd_name);
				$("#addpick").attr("action","MyPickListViewer");
				$("#addpick").submit();
			}

		</script>
</body>

</html>