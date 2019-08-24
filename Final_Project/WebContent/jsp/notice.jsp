<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>
<link href="footer.css" rel="stylesheet" type="text/css">

<title>핸쇼</title>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous">
	
</script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous">
	
</script>
<script
	src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll@15.0.0/dist/smooth-scroll.polyfills.min.js">
	
</script>
<style>
#top_button {
	background-color: transparent;
    position: fixed;
    bottom: 0;
    right: 0;
	margin-bottom: 250px;
	margin-right: 20px;
	display: none;
}
</style>
<script>
	var scroll = new SmoothScroll('a[href*="#"]', {
		speed : 1500,
		speedAsDuration : true
	});
</script>
<script>
	// When the user scrolls down 20px from the top of the document, show the button
	window.onscroll = function() {scrollFunction()};

	function scrollFunction() {
  		if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
    		document.getElementById("top_button").style.display = "block";
 		} else {
    		document.getElementById("top_button").style.display = "none";
  		}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
	  document.body.scrollTop = 0;
	  document.documentElement.scrollTop = 0;
	}
</script>
</head>
<body>
	<!-- header -->
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<!-- header 종료 -->

	<!-- main body -->
	<div class="content">
		<div class="container">
			<div class="row">
				<div class="col-3">
					<jsp:include page="supportSideMenu.jsp"></jsp:include>
				</div>

				<div class="col-8">
					<h5>
						<b>공지사항</b>
					</h5>
					<hr>

					<table class="table" style="width: 700px">
						<tr style="height: 20px;">
						</tr>
						<tr>
							<th style="width: 100px">작성일</th>
							<td class="text-left" style="width: 250px">${notice.notice_date}</td>
							<th style="width: 100px">조회수</th>
							<td class="text-left" style="width: 250px">${notice.notice_readcount}</td>
						</tr>
						<tr>
							<th>제목</th>
							<td colspan="3" class="text-left">${notice.notice_title}</td>
						</tr>
						<tr>
							<td colspan="4">
								<img src="noticedownload.do?num=${notice.notice_id}" width="700px"> <br>
								<br>
								<p>${notice.notice_content}</p>
							</td>
						</tr>
					</table>

				</div>
				<div class="col-2"></div>
			</div>
		</div>
	</div>
	<a data-scroll href="#header_nav">
		<button type="button" id="top_button" class="btn btn-secondary">TOP</button>
	</a>

	<hr>

	<!-- main body 종료 -->

	<!-- footer -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- footer 종료 -->
</body>
</html>