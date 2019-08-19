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
	<link href = "/footer.css" rel="stylesheet" type="text/css">
	
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

<!-- main body -->
<div class = "content">
	<div class = "container">
		<div class = "row">
			<div class = "col-3">
				<jsp:include page = "supportSideMenu.jsp"></jsp:include>
			</div>
			
			<div class = "col-8">
				<h5><b>고객 센터</b></h5>
				<hr>
				
				<div class = "data1">
					<table style = "width: 700px;">
						<tr>
							<td colspan = 2> <b>공지사항</b> </td>
							<td class = "text-right">
								<button class="btn btn-sm btn-secondary"> 더보기 </button>
							</td>
						</tr>
						<tr height = 10>
						</tr>
						<tr>
							<td colspan = 3>
								<ul class="list-group">
		  							<li class="list-group-item">[공지] 내용내용내용내용</li>
		  							<li class="list-group-item">[공지] 내용내용내용내용</li>
									<li class="list-group-item">[공지] 내용내용내용내용</li>
									<li class="list-group-item">[공지] 내용내용내용내용</li>
									<li class="list-group-item">[공지] 내용내용내용내용</li>
								</ul>
							</td>
						</tr>
					</table>
				</div>
			
				<br>
				
				<br>
				
				<div class = "data2">
					<table style = "width: 700px;">
						<tr>
							<td colspan = 2> <b>자주 묻는 질문 </b> </td>
							<td class = "text-right">
								<button class="btn btn-sm btn-secondary"> 더보기 </button>
							</td>
						</tr>
						<tr height = 10></tr>
						<tr>
							<td colspan = 3>
								<ul class="list-group">
		  							<li class="list-group-item">Q. 질문질문질문질문</li>
		  							<li class="list-group-item">Q. 질문질문질문질문</li>
									<li class="list-group-item">Q. 질문질문질문질문</li>
									<li class="list-group-item">Q. 질문질문질문질문</li>
									<li class="list-group-item">Q. 질문질문질문질문</li>
								</ul>
							</td>
						</tr>
					</table>
				</div>
			</div>
			
		</div>
	</div>
</div>
<!-- main body 종료 -->

<!-- footer -->
<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
<!-- footer 종료 -->
</body>
</html>