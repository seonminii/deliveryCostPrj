<%@page import="com.sunDelivery.web.entity.Parcel"%>
<%@page import="java.util.List"%>
<%@page import="com.sunDelivery.web.dao.ParcelDao"%>
<%@page import="com.sunDelivery.web.dao.mysql.MySQLParcelDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	ParcelDao parceldao = new MySQLParcelDao();
	List<Parcel> list = parceldao.getList();
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<title>택배비 계산기 | 관리자페이지</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/admin.css" />
<script>
	window.addEventListener("load", function() {
		var logo = document.querySelector("#logo");
		logo.onclick = function() {
			open("../index.jsp","_self");
		}
	});
</script>
</head>
<body>

	<!-- Header -->
	<header id="header">
		<div id="header-logo">
			<img id="logo" src="../images/logofinal.png" alt=""
				class="header-logo" style="cursor: pointer;" />
		</div>
	</header>
	<div id="adminmain" style="margin-top: 100px;">
		<h1 id="admin">관리자페이지</h1>
	</div>

	<of id="signup-sub">
	<form id="search-form">
		<fieldset>
			<legend class="hidden">검색필드</legend>
			<label class="hidden">검색분류</label>
			<div class="form-group">
				<label>회사명</label><input type="text" value="" />
			</div>
			<div>
				<input type="submit" value="검색" />
			</div>
		</fieldset>
	</form>
	</div>

	<div class="notice margin">
		<h3 class="hidden">공지목록</h3>
		<table class="table notice-table">
			<thead>
				<tr>
					<td>번호</td>
					<td>회사명</td>
					<td>회사 디테일</td>
					<td>크기</td>
					<td>무게</td>
					<td>동일권역</td>
					<td>타지역</td>
				</tr>
			</thead>
			<tbody>
				<template id="manage-row">
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				</template>
				<%
					for(Parcel p:list) {
				%>
				<tr>
					<td><%=p.getPriceCode() %></td>
					<td><%=p.getCompany()%></td>
					<td><a href=""><%=p.getComdetail() %></a></td>
					<td><%=p.getBoxSize() %></td>
					<td><%=p.getBoxWeigtht() %></td>
					<td><%=p.getSameCity() %></td>
					<td><%=p.getOtherCity() %></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>



	<!-- Footer --> <footer id="footer">
		<ul class="copyright">
			<li><a href="">Manager ver.</a></li>
			<li>Credits: <a href="http://blog.naver.com/k_seonmin">SM
					LAB.</a></li>
		</ul>
	</footer> <!-- Scripts --> <script src="../assets/js/admin.js"></script>
</body>
</html>