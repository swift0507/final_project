<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<link href = "footer.css" rel="stylesheet" type="text/css">
	
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
</head>
<body>
	<!-- header -->
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<!-- header 종료 -->

	<div class="container">
		<nav aria-label="breadcrumb">
  			<ol class="breadcrumb">
    			<li class="breadcrumb-item"><a href="#">홈</a></li>
    			<li class="breadcrumb-item"><a href="#">의류</a></li>
    			<li class="breadcrumb-item active" aria-current="page">여성복</li>
 			</ol>
		</nav>
		<hr>
		<div class="dropdown text-right">
			<button class="btn btn-secondary dropdown-toggle" type="button"
					data-toggle="dropdown">정렬 기준</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
				<button class="dropdown-item" type="button">인기순</button>
				<button class="dropdown-item" type="button">등록일 순</button>
				<button class="dropdown-item" type="button">후기 많은 순</button>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="card-deck">
				<div class="card">
					<img src="images/sk.png" class="card-img-top" alt="..." width="200"
						height="200">
					<div class="card-body">
						<h5 class="card-title">1st</h5>
						<p class="card-text">SK Wyverns</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">Last updated 3 mins ago</small>
					</div>
				</div>
				<div class="card">
					<img src="images/kw.png" class="card-img-top" alt="..." width="200"
						height="200">
					<div class="card-body">
						<h5 class="card-title">2nd</h5>
						<p class="card-text">Kiwoom Heroes</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">Last updated 3 mins ago</small>
					</div>
				</div>
				<div class="card">
					<img src="images/ds.png" class="card-img-top" alt="..." width="200"
						height="200">
					<div class="card-body">
						<h5 class="card-title">3rd</h5>
						<p class="card-text">Doosan Bears</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">Last updated 3 mins ago</small>
					</div>
				</div>
				<div class="card">
					<img src="images/lg.png" class="card-img-top" alt="..." width="200"
						height="200">
					<div class="card-body">
						<h5 class="card-title">4th</h5>
						<p class="card-text">LG Twins</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">Last updated 3 mins ago</small>
					</div>
				</div>
				<div class="card">
					<img src="images/nc.png" class="card-img-top" alt="..." width="200"
						height="200">
					<div class="card-body">
						<h5 class="card-title">5th</h5>
						<p class="card-text">NC Dinos</p>
					</div>
					<div class="card-footer">
						<small class="text-muted">Last updated 3 mins ago</small>
					</div>
				</div>
			</div>
		</div>
	</div>
	&nbsp;
		<nav>
			<ul class="pagination justify-content-center">
				<li class="page-item">
					<a class="page-link" href="#"><span>&laquo;</span></a>
				</li>
				<li class="page-item">
					<a class="page-link" href="#">1</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="#">2</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="#">3</a>
				</li>
				<li class="page-item">
					<a class="page-link" href="#"><span>&raquo;</span></a>
				</li>
			</ul>
		</nav>

	<!-- footer -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- footer 종료 -->
</body>
</html>