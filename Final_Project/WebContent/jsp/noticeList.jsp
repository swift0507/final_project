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
</head>
<body>
	<!-- header -->
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<!-- header 종료 -->

	<!-- main body -->
	<div class="container">
		<div class="row">
			<div class="col-3">
				<br>
				<jsp:include page="supportSideMenu.jsp"></jsp:include>
			</div>
			<div class="col-7">
				<br>
				<h5>
					<b>공지사항</b>
				</h5>
				<hr>
				<table class="table table-hover text-center">
					<thead>
						<tr>
							<th scope="col" style="width: 100px;">글번호</th>
							<th scope="col" colspan=2 style="width: 400px;">제목</th>
							<th scope="col">게시일</th>
						</tr>
					</thead>
					<tbody>


						<!-- 자료넣기 -->
						<c:forEach items="${notice}" var="n">
							<tr>
								<th scope="row">${n.notice_id}</th>
								<td><a href="notice.do?notice_id=${n.notice_id}">${n.notice_title}</a></td>
								<td colspan=2>${n.notice_date}</td>
							</tr>
						</c:forEach>

					</tbody>
				</table>

				<nav>
					<ul class="pagination justify-content-center">
						<li class="page-item <c:if test="${ start == 1 }">disabled</c:if>"><a
							class="page-link" href="noticeList.do?page=1"> <span
								aria-hidden="true">&laquo;</span>
						</a></li>
						<li class="page-item <c:if test="${ start == 1 }">disabled</c:if>"><a
							class="page-link" href="noticeList.do?page=${ start - 1 }">이전</a></li>
						<c:forEach begin="${ start }" end="${ end < last ? end : last }"
							var="i">
							<c:choose>
								<c:when test="${ i == current }">
									<li class="page-item active" aria-current="page"><span
										class="page-link">${ current } <span class="sr-only">(current)</span></span>
									</li>
								</c:when>
								<c:otherwise>
									<li class="page-item"><a class="page-link"
										href="noticeList.do?page=${ i }">${ i }</a></li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<li
							class="page-item <c:if test="${ last <= end }">disabled</c:if>"><a
							class="page-link" href="noticeList.do?page=${ end + 1 }">다음</a></li>
						<li
							class="page-item <c:if test="${ last <= end }">disabled</c:if>"><a
							class="page-link" href="notice.do?page=${ last }"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
			</div>
			<div class="col"></div>
		</div>
	</div>

	<!-- main body 종료-->

	<!-- footer -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- footer 종료 -->
</body>
</html>

