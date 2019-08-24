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
	<link href = "../footer.css" rel="stylesheet" type="text/css">
	
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
	<jsp:include page="/jsp/header.jsp"></jsp:include>
</header>
<!-- header 종료 -->

<!-- main body -->
<div class = "content">
	<div class = "container">
		<div class = "row">
			<div class = "col-3">
				<jsp:include page = "/jsp/supportSideMenu.jsp"></jsp:include>
			</div>
			
			<div class = "col-8">
				<h5><b>나의 문의 내역</b></h5>
			
				<table class = "table" style = "width: 800px;">
					<tr>
						<td colspan = 5 class = "text-right">
							<button class="btn btn-sm btn-secondary"> 문의하기 </button>
						</td>
					</tr>
					
					<tr style = "height: 10px";></tr>
					
					<tr class = "text-center">
						<th>문의 유형</th>
						<th>상품명</th>
						<th>제목</th>
						<th>문의일</th>
						<th>답변 상태</th>
					</tr>
					
					<tr>
						<td>배송 관련</td>
						<td>비누</td>
						<td>샤워샤워 아이샤워</td>
						<td>2019-08-16</td>
						<td>답변 대기중</td>
					</tr>
					
					<tr>
						<td>배송 관련</td>
						<td>사이다</td>
						<td>갈증이 사라진다 사이다</td>
						<td>2019-08-16</td>
						<td>답변 완료</td>
					</tr>
					
					<tr>
						<td>배송 관련</td>
						<td>카레</td>
						<td>양파넣고 감자넣고 소고기는 넣지 않아 나마스테</td>
						<td>2019-08-16</td>
						<td>답변 대기중</td>
					</tr>
				</table>
				
				<nav>
					<ul class="pagination justify-content-center">
						<li class="page-item">
							<a class="page-link" href="#"> 
								<span>&laquo;</span>
							</a>
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
							<a class="page-link" href="#"> 
								<span>&raquo;</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>
<!-- main body 종료 -->

<!-- footer -->
<footer>
	<jsp:include page="/jsp/footer.jsp"></jsp:include>
</footer>
<!-- footer 종료 -->
</body>
</html>