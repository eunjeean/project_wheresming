 <%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.wheresming.member.MemberDTO" %>
<%@page import="com.wheresming.member.LoginDAO" %>
<!DOCTYPE html>
<html>
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

</head>
<body>
  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <nav class="main-nav">
                      
            <!-- ***** Logo Start ***** -->
            <a href="index.jsp" class="logo">
              Where?Sming
            </a>
            <!-- ***** Logo End ***** -->
            <!-- ***** Menu Start ***** -->
            <ul class="nav">

 <!-- 검색창시작 -->
 <li class="search" style = "height: 40px">
  <div class="search-box">
  <form action="../../Searching" method="get">
    <input class="search-txt" type="text" placeholder="검색어를 입력해 주세요" name="mv_title">
    <button class="search-btn" onclick="location.href='searchList.jsp'" type="submit" value="Searching">
      <i class="fas fa-search"></i>
    </button>
   </form>
  </div>
</li>
<!-- 검색창끝 -->
			
				<c:choose>
					<c:when test="${empty loginMember }">
						<li class="picks"><a href="picks.jsp">pick!</a></li>
						<li class="login"><a href="login.jsp">로그인</a></li>
					</c:when>
					<c:otherwise>
						<!-- 단순 if문 조건 1개일때 -->
						<c:if test="${loginMember.mb_type eq 'A'}">
							<li class="mypage"><a href="index.jsp">전체회원정보</a></li>
						</c:if>
							<li class="mypage"><a href="picks.jsp">PICK!</a></li>
							<li class="mypage"><a href="mypage.jsp">MYPAGE</a></li>
							<li class="logout"><a href="Logout">LOGOUT</a></li>
					</c:otherwise>
				</c:choose>
				

						
				
    
              
				
            </ul>
            <a class='menu-trigger'>
              <span>Menu</span>
            </a>
            <!-- ***** Menu End ***** -->
          </nav>
        </div>
      </div>
    </div>
  </header>
  <!-- ***** Header Area End ***** -->
</body>
</html>