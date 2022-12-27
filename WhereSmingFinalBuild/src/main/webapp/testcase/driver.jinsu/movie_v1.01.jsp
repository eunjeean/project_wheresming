<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="UTF-8">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

    <style>
        .background {
            background-image: url("https://mblogthumb-phinf.pstatic.net/MjAxODA4MTBfMjU0/MDAxNTMzODg1MDUyNjg2.GDqs-WE9HZj55YtJFntTNKM91T6M0leQginoTC2lorEg.XsI7MICfFjeWl9QK5qLVJhquJqMDkZIc0KrUX3OCACkg.PNG.sinnam88/%EC%84%BC%EA%B3%BC%EC%B9%98%ED%9E%88%EB%A1%9C_%EB%B0%B0%EA%B2%BD%ED%99%94%EB%A9%B4_1920x1080_%EA%B3%A0%ED%99%94%EC%A7%88_%EA%B3%B5%EC%9C%A0_%284%29.png?type=w800");
            /* cover로 하면 배경화면 사이즈가 자동으로조절됨 */
            background-size: cover;
            background-repeat: no-repeat;
            background-blend-mode: darken;
            position: absolute;
            height: 1800px;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            z-index: -1;
            filter: blur(4px);
            min-height: 100%;
        }

        .container2 {
            /* 위치이동 */
            margin-top: 230px;
            margin-left: 150px;

            background: transparent;
            position: absolute;
            background-color: rgba(255, 255, 255, 0);

            color: white;
            font-size: 15px;

            /* 창 줄이고 늘릴때 자동조절  */
            width: 100%;
            height: 100%;

        }

        .dvBody {}

        /* 메인 영화포스터사이즈조절 */
        #imgPoster {
            width: 300px;
            height: 400px;
            border-radius: 20px;
        }

        /* 영화오른쪽추천페이지 */
        body {
            background-color: #FFBB00;

        }

        .container3 {
            color: #FFBB00;
            font-size: 30px;
            margin-left: 1520px;
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
            height: 300px;
            position: relative;
            overflow: hidden;
            background-size: cover;
            border: 2px solid #464444;
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

        /* 메인영화 보여주는쪽 위치조절가능 */
        .card-body {
            color: #fff;
            width: 1200px;
            margin: -800px;
            margin-left: 130px;
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

        .card-img,
        .card-img-top,
        .card-img-bottom {
            width: 100%;
        }

        .card-group>.card:not(:first-child) .card-img-top,
        .card-group>.card:not(:first-child) .card-header {
            border-top-left-radius: 0;
        }

        .card-group>.card:not(:first-child) .card-img-bottom,
        .card-group>.card:not(:first-child) .card-footer {
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
            opacity: 0.8;
        }

        .ms-3 {
            width: 700px;
        }

        /* 댓글창CSS 끝*/

        /* 관련영화추천 글씨 */
        .moo {
            display: block;
            font-weight: 700;
            font-size: 23px;
            text-transform: uppercase;
            color: rgb(255, 187, 0);
            -webkit-transition: all 0.3s ease 0s;
            -moz-transition: all 0.3s ease 0s;
            -o-transition: all 0.3s ease 0s;
            transition: all 0.3s ease 0s;
            height: 40px;
            line-height: 40px;
            border: transparent;
            letter-spacing: 1px;
        }

        /* 종이비행기 제출 버튼 가로위치조정 */
        #paper {
            position: relative;
            left: 770px;
            bottom: -60px;
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
    </style>
</head>


<body>


    <div class="background"></div>

    <div class="container2" style="height:600px;width: 1000px;">
        <form action="">



            <!-- for form container -->
            <!-- 메타정보 -->
            <div id="dvMeta">

                <table border="0">
                    <tr>
                        <td rowspan="5"><img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAxNjExMjNfMjUx%2FMDAxNDc5ODg4NTI4MzY0.r_Q6SXVno1uoaocsdmlDurffqqYI6bB2hPjCwuz-eEgg.wr4z76Zfa3jyLMWVd0awf016Llw4n2NFqC_MFJAiWQcg.JPEG.chahyun97%2Fmovie_image-40.jpg&type=sc960_832" id="imgPoster" /></td>
                        <td>ㅤ영화제목 : 센과 치히로의 행방불명 </td>
                    </tr>
                    <tr>
                        <td>ㅤ장르 : 판타지</td>
                    </tr>
                    <tr>
                        <td>ㅤ평점 : 9.5점 </td>
                    </tr>
                    <tr>
                        <td>ㅤ<a href="login.jsp"><i class="fa-solid fa-heart fa-2x"
                                    style="color:rgb(253, 85, 85)"></i></a>ㅤ찜하기</td>
                    </tr>
                    <tr>
                        <td>ㅤ제공OTT</td>
                    </tr>
                </table>

                <!--본문-->
                <div id="dvBody">
                    <br>
                    금지된 세계의 문이 열렸다! 이사 가던 날, 수상한 터널을 지나자 인간에게는 금지된 신들의 세계로 오게 된 치히로.. 신들의 음식을 먹은 치히로의 부모님은 돼지로 변해버린다. “걱정마, 내가 꼭 구해줄게…” 겁에 질린 치히로에게 다가온 정체불명의 소년 하쿠. 그의 따뜻한 말에 힘을 얻은 치히로는 인간 세계로 돌아가기 위해 사상 초유의 미션을 시작하는데…

                </div>
            </div>

        </form>

    </div>



    <!-- 채팅 -->
    <script>
        (function (d, w, c) {
            w.ChatraID = '3zJ5EQxB9BkR7jn2J';
            var s = d.createElement('script');
            w[c] = w[c] || function () {
                (w[c].q = w[c].q || []).push(arguments);
            };
            s.async = true;
            s.src = 'https://call.chatra.io/chatra.js';
            if (d.head) d.head.appendChild(s);
        })(document, window, 'Chatra');
    </script>
    <!-- 채팅끝 -->

    <!-- ***** 위에 로고메뉴바 ***** -->
    <header class="header-area header-sticky" style="height:200px;">

        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">

                        <!-- ***** Logo Start ***** -->
                        <a href="index.html" class="logo">
                            Where?Sming
                        </a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">

                            <!-- 검색창시작 -->
                            <li class="search">
                                <div class="search-box">
                                    <input class="search-txt" type="text" placeholder="검색어를 입력해 주세요">
                                    <button class="search-btn" onclick="location.href='movie.html'" type="submit">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                            </li>
                            <!-- 검색창끝 -->

                            <li class="picks"><a href="picks.html">pick!</a></li>
                            <li class="login"><a href="login.html">로그인</a></li>

                        </ul>
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>


        <!-- 오른쪽영화추천 -->
        <div class="container3">
            <p class="moo">ㅤ관련영화추천</p>
            <div class="bg-items">
                <div class="items"
                    style="background-image : url('https://cdn-magazine.notefolio.net/files/78/17678-6044-46_cont');">
                    <div class="one"></div>
                    <div class="details">
                    </div>
                </div>
            </div>
            <div class="bg-items">
                <div class="items"
                    style="background-image : url('https://cdn-magazine.notefolio.net/files/79/17679-6044-49_cont');">
                    <div class="two"></div>
                    <div class="details">
                    </div>
                </div>
            </div>
            <div class="bg-items">
                <div class="items"
                    style="background-image : url('https://cdn-magazine.notefolio.net/files/76/17676-6044-46_cont');">
                    <div class="three"></div>
                    <div class="details">
                    </div>
                </div>
            </div>
            <div class="bg-items">
                <div class="items"
                    style="background-image : url('https://cdn-magazine.notefolio.net/files/07/17707-6044-27_cont');">
                    <div class="four"></div>
                    <div class="details">
                    </div>
                </div>
            </div>
            <div class="bg-items">
                <div class="items"
                    style="background-image : url('https://cdn-magazine.notefolio.net/files/18/17718-6044-43_cont');">
                    <div class="five"></div>
                    <div class="details">
                    </div>
                </div>
            </div>
        </div>
        <!-- 오른쪽영화추천 -->


        <!-- 리뷰창 -->

        <section class="mb-5">
            <div class="card-body">
                <span class="reviewmain">리뷰작성</span>
                <!-- Comment form-->

                <form class="mb-4" sytle="width: 1200px;">
                    <!-- 리뷰 제출용 비행기  -->
                    <div id="paper" class="fa-solid fa-paper-plane fa-2x" style="color:rgb(255, 255, 255)">제출</div>
                    <!-- 리뷰 제출용 비행기끝 --><textarea class="form-control" rows="3" placeholder="리뷰를 남겨주세요!"></textarea>
                </form>

                <div class="d-flex mb-4" sytle="width: 1200px">

                    <!-- Parent comment-->

                    <div class="flex-shrink-0"><img class="rounded-circle"
                            src="https://ifh.cc/g/YBbktb.jpg" alt="..." /></div>

                    <div class="ms-3">
                        <div class="fw-bold">인기댓글</div>
                        이 댓글에 좋아요를 눌러준다면 오늘하루종일 행복해질거에요
                        <!-- Child comment 1-->
                        <div class="d-flex mt-4">
                            <div class="flex-shrink-0"><img class="rounded-circle"
                                    src="https://ifh.cc/g/YBbktb.jpg" alt="..." /></div>
                            <div class="ms-3">
                                <div class="fw-bold">하진숴이이</div>
                                가오나시 어서오고
                            </div>
                        </div>

                        <div class="d-flex mt-4">
                            <div class="flex-shrink-0"><img class="rounded-circle"
                                    src="https://ifh.cc/g/YBbktb.jpg" alt="..." /></div>
                            <div class="ms-3">
                                <div class="fw-bold">riverpurple</div>
                                너무 재밌어서 1따봉 드립니다*^^*
                            </div>
                        </div>
                        <!-- Child comment 2-->
                        <div class="d-flex mt-4">
                            <div class="flex-shrink-0"><img class="rounded-circle"
                                    src="https://ifh.cc/g/YBbktb.jpg" alt="..." /></div>
                            <div class="ms-3">
                                <div class="fw-bold">윤석석모래모래흙흙</div>
                                이런 영화 보고 우는사람 이해 안돼요. 그래서 전 아직 절 이해하지못했습니다.
                            </div>
                        </div>
                        <!-- Child comment 1-->
                        <div class="d-flex mt-4">
                            <div class="flex-shrink-0"><img class="rounded-circle"
                                    src="https://ifh.cc/g/YBbktb.jpg" alt="..." /></div>
                            <div class="ms-3">
                                <div class="fw-bold">징니</div>
                                신나리셔스~딜리셔스
                            </div>
                        </div>
                        <!-- Child comment 1-->
                        <div class="d-flex mt-4">
                            <div class="flex-shrink-0"><img class="rounded-circle"
                                    src="https://ifh.cc/g/YBbktb.jpg" alt="..." /></div>
                            <div class="ms-3">
                                <div class="fw-bold">이밍지</div>
                                너무 재밌고 감동적인 영화입니다람쥐
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- ***** Header Area End ***** -->



</body>

</html>