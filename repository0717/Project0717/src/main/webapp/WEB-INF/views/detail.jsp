<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/detail.css">
<link rel="shortcut icon" href="./img/favicon.ico" type="image/x-icon">
<link rel="icon" href="./img/favicon.ico" type="image/x-con">
</head>
<body>
<%@ include file = "menu.jsp" %>
		<h1>디테일이디</h1>
		<!--  20230718 / 데이터베이스 구현 / 메뉴만들기, 글쓰기 -->
		<div class="detail-content">
			<div class="title">${dto.bno }/ ${dto.btitle }</div>
			<div class="name-bar">
			<div class="name">${dto.bwrite }님</div>
			<div class="like">${dto.blike }</div>
			<div class="date">${dto.bdate }</div>
			<div class="ip">아직없음</div>
		</div>
		<div class="content">${dto.bcontent }</div>
	</div>






</body>
</html>