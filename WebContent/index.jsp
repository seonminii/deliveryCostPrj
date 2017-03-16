<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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
<title>택배비 계산기 | 내 택배비는 얼마?</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>

	<!-- Header -->
	<header id="header" class="clearfix">
		<h1>택배비 계산기</h1>
		<p>내 택배비는 얼마?</p>
	</header>

	<!-- Signup Form -->
	<form id="signup-form" method="post" action="index" class="clearfix">
		<p>*무게 단위는 g입니다.</p>
		<input type="text" name="weight" id="weight" placeholder="무게를 입력하세요" /><br />
		<p>*크기는 세 변의 합입니다.</p>
		<input type="text" name="size" id="size" placeholder="크기를 입력하세요" /><br />
		<p>*현재 위치를 입력해주세요.(ex.신촌, 강남)</p>
		<input type="text" name="location" id="location"
			placeholder="지역을 입력하세요" /><br />
		<div>
			<input type="radio" name="locations" value="same-location"
				autocomplete="off" checked>동일권역 <input type="radio"
				name="locations" value="diff-location" autocomplete="off">타지역
			<input type="radio" name="locations" value="jeju-island"
				autocomplete="off">제주<br />
		</div>

		<div>
			<input type="checkbox" name="visit" value="visit">방문접수
		</div>

		<div id="signup-sub">
			<input type="submit" value="Enter" />
		</div>
	</form>

	<!-- Footer -->
	<footer id="footer">
		<ul class="copyright">
			<li><a href="">Manager ver.</a></li>
			<li>Credits: <a href="http://blog.naver.com/k_seonmin">SM
					LAB.</a></li>
		</ul>
	</footer>

	<!-- Scripts -->
	<script src="assets/js/common.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>