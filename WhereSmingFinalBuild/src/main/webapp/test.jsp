<%@page import="com.wheresming.review.AddReview"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>hello world</p>
<form action="../../AddReview" method="get">
	<%
	HttpSession sessionjs = request.getSession(); 
	int sjs = (int)sessionjs.getAttribute("mv_cnt");
	
	%>
	<%=
	sjs
	%>
	<button type="submit">전송</button>
</form>
</body>
</html>