<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<img id="logo" src="../images/logofinal.png" alt="" class="header-logo" style="cursor: pointer;"/>
		</div>
	</header>
	<div id="adminmain" style="	margin-top: 100px;">
		<h1 id="admin">관리자페이지</h1>
	</div>
	
	<div id="signup-sub" >
		<form id="search-form">
			<div class="form-group">
				<label>회사명: </label><input type="text" value="" />
			</div>
			<div>
				<input type="submit" value="검색" />
			</div>
		</form>
	</div>
	
	<div class="notice margin">
		<h3 class="hidden">공지목록</h3>
		<table class="table notice-table">
			<thead>
				<tr>
					<td>회사이름</td>
					<td>크기</td>
					<td>무게(kg 이하)</td>
					<td>동일권역</td>
					<td>타지역</td>
					<td>제주(일반)</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
				</tr>
				<tr>
					<td>우체국</td>
					<td>120</td>
					<td>2</td>
					<td>5000원</td>
					<td>6000원</td>
					<td>8000원</td>
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
	<script src="../assets/js/admin.js"></script>

</body>
</html>