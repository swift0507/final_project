<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
	
	
	<title>핸쇼</title>
	
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.js"
 		integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
 		crossorigin="anonymous">
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
	</script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
	</script>
	<script src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll@15.0.0/dist/smooth-scroll.polyfills.min.js">
	</script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	
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

	<script type="text/javascript">
	
	$(document).ready(function(){
		var loc = "loginForm.do?url="+location.pathname;
	
		$("#targetURL").attr("href", loc)
		
		$("#logout").on("click", function(){
			alert("로그아웃되셨습니다.")
		});
	});
	
	</script>
</head>
<body>
<div class = "header_main">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="collapse navbar-collapse flex-grow-1 text-right" id="header_nav">
			<ul class="navbar-nav ml-auto flex-nowrap">
			<c:choose>
				<c:when test="${loginUserInfo==null}">
					<li class="nav-item">
						<a href="loginForm.do" class="nav-link" id="targetURL">로그인</a>
					</li>
					<li class="nav-item">
						<a href="signUpForm.do" class="nav-link">회원가입</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="nav-item">
						<b class="nav-link" style="color : white;">${loginUserInfo.mem_name}님</b>
					</li>
					<li class="nav-item">
						<a href="logout.do" class="nav-link" id="logout">로그아웃</a>
					</li>
				</c:otherwise>
			</c:choose>
				<li class="nav-item">
					<a href="support.do" class="nav-link">고객센터</a>
				</li>
			</ul>
		</div>
	</nav>

	<table class = "header_table">
		<tr>
			<td class = "blank">
			</td>
			<td class = "logo text-center">
				<a class="navbar-brand" href="main.do">
					<img src="images/logo.png" style = "width: 150px; height: 50px;">
				</a>
			</td>
			<td class = "search_form">
			<form class="form-inline my-2 my-lg-0 justify-content-center" action="search.do" method="get">				
				<input class="form-control mr-sm-2" style="width: 300px;" type="text" name="keyword" placeholder="상품명 또는 사장님 입력" aria-label="Search">
				<input class="btn btn-outline-success my-2 my-sm-0" type="submit" value="검색">
			</form>
			</td>
			<td class = "blank">
			</td>
			<td class= "icon text-center">
				<a href="user/myPage.do" class="text-decoration-none text-dark"><i class = "fas fa-user" style = "font-size: 24px;"></i></a>
				&nbsp;&nbsp;&nbsp;
				<a href="user/basket.do" class="text-decoration-none text-dark"><i class = "fas fa-shopping-cart" style = "font-size: 24px;"><span class="badge badge-pill badge-danger" id = "cart_amt" style='font-size: 12px'>${loginUserInfo.countBasket}</span></i></a>
			</td>
		</tr>
	</table>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
			<div class="navbar-nav">
				<a class="nav-item nav-link" href="popularProd.do">인기 상품</a>
				<a class="nav-item nav-link" href="user/recommend.jsp">나의 추천 상품</a>
				<a class="nav-item nav-link" href="latestProd.do">최근 등록 상품</a>
				<a class="nav-item nav-link" href="eventList.do">이벤트</a>
			</div>
		</div>
	</nav>
</div>
</body>
</html>