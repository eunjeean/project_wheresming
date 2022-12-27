<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
#content {
	position: absolute;
	left: 50%;
	transform: translate(-50%);
	width: 300px;
	height: 300px;
}

.join_title{
font-size: 17px;
font-weight:500;
}

body {
	text-align: center;
	padding: 0;
	margin: 100;
	font-family: Arial, Helvetica, sans-serif;
	color: white;
	text-decoration: none;
}

.background {
	background-image:
		url('https://t1.daumcdn.net/cfile/blog/99C582435E26458A21');
	/* background-color: black; */
	background-repeat: no-repeat;
	background-size: cover;
	background-color: rgba(0, 0, 0, 0.5);
	background-blend-mode: darken;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	z-index: -1;
	filter: blur(6px);
	min-height: 800px;
}

.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
	width: 500px;
	margin: 1vh auto;
	background: transparent;
	box-shadow: 0 0 15px rgb(0, 0, 0);
	border-radius: 25px;
}

h2 {
	font-size: 24px;
	text-decoration: none;
}

form {
	padding: 10px;
	display: inline;
	flex-direction: column;
	width: 85%;
}

.form-item {
	display: flex;
	width: 90%;
	background: transparent;
	margin: 10px auto;
	border-radius: 15px;
	align-items: center;
	border-bottom: 1px solid rgb(82, 81, 81);
}

.form-item:hover {
	border: 1px solid rgb(82, 81, 81);
}

input {
	background: transparent;
	width: 80%;
	outline: none;
	border: 0;
	margin: auto;
}

span {
	user-select: none;
	margin: 5px;
	color: rgb(19, 18, 18);
	padding: 5px;
	border-radius: 18px;
	text-decoration: none;
}

button[type="submit"] {
	width: 180px;
	font-size: 20px;
	margin: 10px auto;
	padding: 8px;
	background: rgb(255, 187, 0);
	border: none;
	color: white;
	text-decoration: none;
	margin-left: 15px;
}

button[type="submit"]:hover {
	background: rgba(255, 187, 0, 0.6);
}

p:first-of-type {
	margin: 0;
}

.options {
	display: flex;
	margin: 10px auto;
	justify-content: center;
	flex-wrap: wrap;
}

button {
	font-size: 18px;
	padding: 5px 16px;
	margin: 5px 15px;
	width: 180px;
	background: transparent;
	color: white;
	cursor: pointer;
	transition: all 0.7s ease;
	text-decoration: none;
}

.fb:hover {
	background: rgba(55, 53, 207, 0.637);
	border: none;
	box-shadow: 0 0 2px rgba(55, 53, 207, 0.637);
}

.gl:hover {
	background: rgba(207, 53, 53, 0.671);
	border: none;
	box-shadow: 0 0 2px rgba(207, 53, 53, 0.671);
}

p {
	font-size: 18px;
	margin: 5px;
}

a {
	color: rgba(0, 0, 0, 0);
}

a:hover {
	color: rgba(255, 187, 0, 0.6);
}

@media screen and (max-width: 550px) {
	.container {
		width: 90%;
	}
}

/* 입력폼 */
h3 {
	margin: 19px 0 8px;
	font-size: 14px;
	font-weight: 700;
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
}

.logo {
	line-height: 100px;
	margin-left: 50px;
	margin-bottom: 300px;
	color: rgb(255, 187, 0);
	font-size: 40px;
	font-weight: 700;
	text-transform: uppercase;
	letter-spacing: 2px;
	float: left;
	-webkit-transition: all 0.3s ease 0s;
	-moz-transition: all 0.3s ease 0s;
	-o-transition: all 0.3s ease 0s;
	transition: all 0.3s ease 0s;
	text-decoration: none;
}

input {
	font-family: Dotum, '돋움', Helvetica, sans-serif;
	font-weight: 600;
	color: white;
	font-size: 15px;
}

.box.int_id {
	padding-right: 110px;
}

.box.int_pass {
	padding-right: 40px;
}

.box.int_pass_check {
	padding-right: 40px;
}

.step_url {
	/*@naver.com*/
	position: absolute;
	top: 16px;
	right: 13px;
	font-size: 15px;
	color: #8e8e8e;
}

.pswdImg {
	width: 18px;
	height: 20px;
	display: inline-block;
	position: absolute;
	top: 50%;
	right: 16px;
	margin-top: -10px;
	cursor: pointer;
}

select {
	width: 100%;
	height: 34px;
	font-size: 15px;
	background: #fff
		url(https://static.nid.naver.com/images/join/pc/sel_arr_2x.gif) 100%
		50% no-repeat;
	background-size: 20px 8px;
	-webkit-appearance: none;
	display: inline-block;
	text-align: start;
	cursor: default;
	border: none;
	font-family: Dotum, '돋움', Helvetica, sans-serif;
	text-decoration: none;
}

/* 에러메세지 */
.error_next_box {
	margin-top: 9px;
	font-size: 12px;
	color: red;
	display: none;
}

#alertTxt {
	position: absolute;
	top: 19px;
	right: 38px;
	font-size: 12px;
	color: red;
	display: none;
}

/* 버튼 */
.btn_area {
	margin: 30px 0 91px;
	text-decoration: none;
	margin-right: 20px;
	color: #181818;
}

#btnJoin {
	width: 100%;
	padding: 21px 0 17px;
	border: 0;
	cursor: pointer;
	text-decoration: none;
	color: rgb(255, 255, 255);
	font-size: 25px;
	font-weight: 900;
	font-family: Dotum, '돋움', Helvetica, sans-serif;
	border-radius: 18px;
}

.ac_text {
	margin-top: 200px;
	text-decoration: none;
}

.loader {
	position: absolute;
	left: 50%;
	top: 50%;
	z-index: 1;
	width: 150px;
	height: 150px;
	margin: -75px 0 0 -75px;
	border: 16px solid #f3f3f3;
	border-radius: 50%;
	border-top: 16px solid #dbc234;
	width: 120px;
	height: 120px;
	-webkit-animation: spin 2s linear infinite;
	animation: spin 2s linear infinite;
}

@
-webkit-keyframes spin { 0% {
	-webkit-transform: rotate(0deg);
}

100


%
{
-webkit-transform


:


rotate
(


360deg


)
;


}
}
@
keyframes spin { 0% {
	transform: rotate(0deg);
}

100


%
{
transform


:


rotate
(


360deg


)
;


}
}
button {
	background-color: rgb(255, 187, 0);
	color: #fff;
	border: none;
	position: relative;
	height: 60px;
	font-size: 1.6em;
	padding: 0 2em;
	cursor: pointer;
	transition: 800ms ease all;
	outline: none;
}

button:hover {
	background: rgb(255, 187, 0, 0.6);
	color: #dfc014;
}

button:before, button:after {
	content: '';
	position: absolute;
	top: 0;
	right: 0;
	height: 2px;
	width: 0;
	background: #ceba0a;
	transition: 400ms ease all;
}

/* button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}  */
/* button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
} */
</style>
</head>
<body>


	<form action="Signin" method="post">
		<a href="index.jsp" class="logo"> Where?Sming </a>
		<div class="background"></div>

		<!-- for form container -->
		<div class="container"></div>
</body>

<h2 class="ac_text"></h2>
<!-- wrapper -->
<div id="wrapper">

	<!-- content-->
	<div id="content">

		<!-- ID -->
		<div>
			<h3 class="join_title">
				<label for="id">아이디</label>
			</h3>
			<span class="box int_id"> <input type="text" id="id"
				class="int" maxlength="20" name="id">
			</span> <span class="error_next_box"></span>
		</div>

		<!-- PW1 -->
		<div>
			<h3 class="join_title">
				<label for="pswd1">비밀번호</label>
			</h3>
			<span class="box int_pass"> <input type="password" id="pswd1"
				class="int" maxlength="20" name="pw"> <span id="alertTxt">사용불가</span>
			</span> <span class="error_next_box"></span>
		</div>

		<!-- PW2 -->
		<div>
			<h3 class="join_title">
				<label for="pswd2">비밀번호 재확인</label>
			</h3>
			<span class="box int_pass_check"> <input type="password"
				id="pswd2" class="int" maxlength="20">
			</span> <span class="error_next_box"></span>
		</div>

		<!-- NAME -->
		<div>
			<h3 class="join_title">
				<label for="name">닉네임</label>
			</h3>
			<span class="box int_name"> <input type="text" id="name"
				class="int" maxlength="20" name="nickname">
			</span> <span class="error_next_box"></span>
		</div>


		<!-- EMAIL -->
		<div>
			<h3 class="join_title" style="margin-left: 20px;">
				<label for="email">이메일<span class="optional"></span></label>
			</h3>
			<span class="box int_email"> <input type="text" id="email"
				class="int" maxlength="100" name="email"
				placeholder="양식 : where@sming.com">
			</span> <span class="error_next_box">이메일 주소를 다시 확인해주세요.</span>
		</div>

		<!-- MOBILE -->
		<div>
			<h3 class="join_title" style="margin-left: 5px;">
				<label for="phoneNo">휴대전화번호</label>
			</h3>
			<span class="box int_mobile"> <input type="tel" id="mobile"
				class="int" maxlength="16" name="tel" placeholder="-는 제외하고 작성해주세요">
			</span> <span class="error_next_box"></span>
		</div>


		<!-- JOIN BTN-->
		<div class="btn_area">
			<button type="submit" id="btnJoin" value="Signin">
				<span id="joinment">가입하기</span></a>
			</button>
		</div>
		</form>




	</div>
	<!-- content-->

</div>
<!-- wrapper -->
<script src="main.js"></script>
</body>
</html>