<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	
	String _weight = request.getParameter("weight");
	String _size = request.getParameter("size");
	String location = request.getParameter("location");
	String[] locations = request.getParameterValues("locations");
	
	int weight = 0;
	int size = 0;
	
	if (_weight != null && !_weight.equals("")) // weight에 전달된 값이 있다면
		weight = Integer.parseInt(_weight);
	if (_size != null && !_size.equals(""))// size에 전달된 값이 있다면
		size = Integer.parseInt(_size);
%>
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" />
<title>택배비 계산기 | 계산 결과</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/searchlists.css" />
<script type="text/javascript">
	window.addEventListener("load", function(e) {
		var mapButton = document.querySelector("#map-button");
		mapButton.onclick = function() {
			open("http://map.daum.net/link/search/신촌 편의점택배","_blank");
			
		}
	});
	
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
			<img id="logo" src="../images/logofinal.png" alt="" class="header-logo" style="cursor: pointer;"/>
		</div>
	</header>
	<div id="resultmain" style="	margin-top: 100px;">
		<h1 id="resultpage">편의점택배</h1>
			<h1><%=weight %></h1>
	</div>
	<div id="close-div">
		<input id="map-button" type="submit" value="가까운 지점 찾기" />
	</div>
	<div class="notice margin">
		<h3 class="hidden">공지목록</h3>
		<table class="table notice-table">
			<thead>
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성일</td>
					<td>조회수</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>44</td>
					<td>서적과 사이트 개편에 대한 안내</td>
					<td>admin</td>
					<td>2016-09-21</td>
					<td>776</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
				<tr>
					<td>43</td>
					<td>리눅스 강의 7월 1일부터 업로드 할 예정입니다.</td>
					<td>admin</td>
					<td>2016-06-30</td>
					<td>854</td>
				</tr>
			</tbody>
		</table>
	</div>



	<!-- Footer -->
	<footer id="footer">
		<ul class="copyright">
			<li><a href="">Manager ver.</a></li>
			<li>Credits: <a href="http://blog.naver.com/k_seonmin">SM
					LAB.</a></li>
		</ul>
	</footer>
	<!-- Scripts -->
	<script src="../assets/js/searchlists.js"></script>
</body>
</html>