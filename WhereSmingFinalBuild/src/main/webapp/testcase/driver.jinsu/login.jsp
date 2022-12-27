<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body {
	padding: 0;
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
	color: white;
}

.background {
	background-image: url('./assets/images/movie_image.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	background-color:rgba(0, 0, 0, 0.5);
	background-blend-mode: darken;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	z-index: -1;
	filter: blur(5px);
	min-height: 800px;
}

.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
	width: 500px;
	margin: 10vh auto;
	background: transparent;

}

.container2 {
	display: inline-flex;
	flex-direction: column;
	align-items: center;
	text-align: center;
	width: 100x;
	margin: 10vh auto;
	background: transparent;
}

h2 {
	font-size: 30px;
}

form {
	padding: 10px;
	display: flex;
	flex-direction: column;
	width: 100%;
}

.form-item {
	display: flex;
	width: 90%;
	background: transparent;
	margin: 10px auto;
	border-radius: 15px;
	align-items: center;
	border-bottom: 1px solid rgb(255, 255, 255);
}




.form-item:hover {
	border: 1px solid rgb(255, 255, 255);
}

input {
	background: transparent;
	width: 80%;
	height: 30px;
	outline: none;
	border: none;
	margin: auto;
	color: white;
	font-size: 17px;
}

span {
	user-select: none;
	margin: 5px;
	color: rgb(255, 255, 255);
	background: rgba(85, 81, 81, 0.637);
	padding: 5px;
	border-radius: 18px;
}

button[type="submit"] {
	width: 180px;
	font-size: 20px;
	margin: 10px auto;
	padding: 8px;
	background: rgba(122, 123, 116, 0.72);
	border: none;
	color: white;
	border-radius: 18px;
}

button[type="submit"]:hover {
	background: rgba(255,187,0, 1);
	
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
	font-size: 12px;
	margin: 30px;
}

a {
	color: white;
}

a:hover {
	color: grey;
}

@media screen and (max-width: 550px) {
	.container {
		width: 90%;
	}
}

.logo {
  line-height: 100px;
  margin-left: 50px;
  margin-bottom: 100px;
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
  margin-top: 50px;
}

.logo:hover {
	color: rgb(255, 187, 0, 0.6);
}
</style>

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- For google icons  -->
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons+Outlined"
	rel="stylesheet">

<title>Login form</title>
</head>
<body>
	 
  <!-- ***** Logo Start ***** -->
  <a href="index.jsp" class="logo">
    Where?Sming
  </a>
	<!-- for background -->
	<div class="background"></div>
	<!-- ---------- -->
  <header class="header-area header-sticky">
    <div class="container2">
      
      <div class="row">
        <div class="col-12">

          
          <nav class="main-nav">
            
            
          </nav>
        </div>
      </div>
    </div>
  </header>

	<!-- ---------- -->
	<!-- for form container -->
<form action="Login" method="post">
	<div class="container">
		<h2>Login</h2>

			<div class="form-item">
				<span class="material-icons-outlined"> account_circle </span> <input
					type="text" name="mb_id" id="user" placeholder="id를 입력해주세요">
			</div>

			<div class="form-item">
				<span class="material-icons-outlined"> lock </span> <input
					type="password" name="mb_pw" id="pass" placeholder="password">
			</div>

			<button type="submit" value="Login">LOGIN</button>
			
			<p></p>
			<p>
				WhereSming 회원이 아닌가요? <a href="join.jsp"> 회원가입하러가기</a><br><br>
				<a href="join.html">비밀번호를 잊어버리셨나요?</a>
			</p>
		
	</div>
</form>
</body>
</html>