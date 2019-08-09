<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="collapse navbar-collapse flex-grow-1 text-right" id="header_nav">
			<ul class="navbar-nav ml-auto flex-nowrap">
				<li class="nav-item">
					<a href="loginForm.jsp" class="nav-link">로그인</a>
				</li>
				<li class="nav-item">
					<a href="signUpForm.jsp" class="nav-link">회원가입</a>
				</li>
				<li class="nav-item">
					<a href="support.jsp" class="nav-link">고객센터</a>
				</li>
			</ul>
		</div>
	</nav>

	<table>
		<tr>
			<td width = 500 height = 100 align = "right">
				<a class="navbar-brand" href="main.jsp">
					<img src="images/logo.png" width=150 height=50>
				</a>
			</td>
			<td width=500>
				<div class="row align-items-center">
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<form class="form-inline my-2 my-lg-0">
						<input class="form-control mr-sm-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success my-2 my-sm-0" type="button"
							onclick="location.href = 'searchResult.jsp'">Search</button>
					</form>
				</div>
			</td>
			<td width=50><i class='fas fa-user' style='font-size: 24px'></i>
			</td>
			<td width=50>
				<i class='fas fa-shopping-cart' style='font-size: 24px'><span class="badge badge-pill badge-danger" id = "cart_amt" style='font-size: 12px'>0</span></i>
			</td>
		</tr>
	</table>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
			<div class="navbar-nav">
				<li class="nav-item">
					<a class="nav-item nav-link" href="#">인기 상품</a>
				</li>
				<li class="nav-item">
					<a class="nav-item nav-link" href="#">나의 추천 상품</a>
				</li>
				<li class="nav-item">
					<a class="nav-item nav-link" href="#">최근 등록 상품</a>
				</li>
				<li class="nav-item">
					<a class="nav-item nav-link" href="#">이벤트</a>
				</li>
			</div>
		</div>
	</nav>
</body>
</html>