<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>핸쇼</title>
	<style>
			.header_table {
				width: 100%; 
				height: 100px;
				table-layout: fixed;
			}
			
			.blank {
				width: 15%;
			}
			
			.search_form {
				width: 35%;
				nowrap;
			}
			
			.logo text-center, .icon text-center {
				width: 15%;
			}
			
			.header_main {
				align: center;
			}
			
		</style>
</head>
<body>
	<div class = "header_main">
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="collapse navbar-collapse flex-grow-1 text-right" id="header_nav">
				<ul class="navbar-nav ml-auto flex-nowrap">
					<li class="nav-item">
						<a href="#" class="nav-link" id="">이용자 페이지 열기</a>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-link">로그아웃</a>
					</li>
				</ul>
			</div>
		</nav>
	
		<table class = "header_table">
			<tr>
				<td class = "align-bottom text-right"style = "width: 40%;">
					<a class="navbar-brand" href="#">
						<img src="/Final_Project/images/logo.png" id="logo" style = "width: 150px; height: 50px;">
					</a>
				</td>
				<td class = "align-bottom" style = "width: 62%;">
					<h5><b>Admin</b></h5>
				</td>
			</tr>
		</table>
		
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
				<div class="navbar-nav">
					
					<a class="nav-item nav-link mr-5 ml-5" href="#">게시판 관리</a>
					
					<a class="nav-item nav-link mr-5 ml-5" href="#">상품 관리</a>
				
					<a class="nav-item nav-link mr-5 ml-5" href="#">회원 관리</a>
					
					<a class="nav-item nav-link mr-5 ml-5" href="#">메인 관리</a>
					
					<a class="nav-item nav-link mr-5 ml-5" href="#">통계</a>
					
					
				</div>
			</div>
		</nav>
	</div>
</body>
</html>