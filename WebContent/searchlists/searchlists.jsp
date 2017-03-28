
<%@page import="java.util.Arrays"%>
<%@page import="com.mysql.fabric.xmlrpc.base.Array"%>
<%@page import="com.sunDelivery.web.calc.CompanyCalc"%>
<%@page import="com.sunDelivery.web.calc.resultcalc"%>
<%@page import="com.sunDelivery.web.dao.ParcelDao2"%>
<%@page import="com.sunDelivery.web.dao.mysql.MySQLParcelDao3"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sunDelivery.web.calc.costcalc"%>
<%@page import="com.sunDelivery.web.entity.Parcel"%>
<%@page import="java.util.List"%>
<%@page import="com.sunDelivery.web.dao.mysql.MySQLParcelDao"%>
<%@page import="com.sunDelivery.web.dao.ParcelDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<%
	String _weight = request.getParameter("weight");
	String _size = request.getParameter("size");
	String _location = request.getParameter("location");
	String _locations= request.getParameter("locations");
	String _visit = request.getParameter("visit");
	
	int weight = 0;
	int size=0;
	int cost=0;
	String company="";
	String location="empty";
	String locations="empty";
	String visit="empty";
	
	if(_weight != null && !_weight.equals("")){
		weight = Integer.parseInt(_weight);
	}
	if(_size != null && !_size.equals("")){
		size = Integer.parseInt(_size);
	}
	if(_location != null && !_location.equals("")){
		location =_location;
	}
	if(_locations != null && !_locations.equals("")){
		locations =_locations;
	}
	if(_visit != null && !_visit.equals("")){
		visit =_visit;
	}
	 System.out.println("location: "+location); 
/* 	 System.out.println("weight: "+weight); 
	 System.out.println("size: "+size); 
	 System.out.println("location: "+location); 
	 System.out.println("locations:"+locations);
	 System.out.println("visit:"+visit);
	 */
	 //-----------입력받은 값들--------------
	 resultcalc[] result=new resultcalc[7];
	 CompanyCalc calc= new CompanyCalc();
	 for(int i=0;i<7;++i){
	  result[i]= new resultcalc();
	 }
	 result[0].setCompany("한진");	 
 	 result[1].setCompany("편의점");
	 result[2].setCompany("우체국");
	 result[3].setCompany("롯데");
	 result[4].setCompany("로젠");
	 result[5].setCompany("대신");
	 result[6].setCompany("CJ대한통운"); 
	 //////////////////////////////////택배회사 입력부
	 for(int i=0;i<7;++i){
	String tmp=result[i].getCompany();
	cost=calc.getcost(tmp, weight, size, visit);
	result[i].setCost(cost);
	 }
	 Arrays.sort(result); //가격순으로 정렬
	 
	 
	 /////
	 String url="http://map.daum.net/link/search/"+location+" 편의점택배";
	
%>
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
			
			open("<%=url%>","_blank");
			
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
			<h1><%=result[0].getCompany() %> 
			 <%=result[0].getCost() %>원</h1>
	</div>
	<div id="close-div">
		<input id="map-button" type="submit" value="가까운 지점 찾기" />
	</div>
	<div class="notice margin">
		<h3 class="hidden">공지목록</h3>
		<table class="table notice-table">
			<thead>
				<tr>
					<td>순위</td>
					<td>회사명</td>
					<td>가격</td>
				</tr>
			</thead>
			<tbody>
			<%for(int i=0;i<7;++i){ %>
				<tr>
					<td><%=i+1 %></td>		
					<td><%=result[i].getCompany()%></td>
					<td><%=result[i].getCost() %></td>
				</tr>
				<%} %>
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