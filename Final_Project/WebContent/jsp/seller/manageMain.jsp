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
	<style>
		html, body {
		  height: 100%;
		}
		body {
		  display: flex;
		  flex-direction: column;
		}
		.content {
		  flex: 1 0 auto;
		}
		.footer {
		  flex-shrink: 0;
		}
	</style> 
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
				<jsp:include page = "sideBar.jsp"></jsp:include>
			</div>
			<div class = "col-8">
				<br>
				<!-- 요약 정보 List -->
				<div class="card-deck justify-content-center">
				
					<!-- 매출 요약 정보 -->
					<div class = "card bg-primary text-white text-center" style = "width: 150px;">
	 					<div class="card-body">
	 						<i class = "fas fa-money-bill-wave" style = "font-size: 60px;"></i>
	 						<hr>
	    					<h5 class="card-title"> <b>오늘의 매출</b> </h5>
	    					<hr>
	    					<p class="card-text"> 428,000 원 </p>
	  					</div>
					</div>
					<!-- 매출 요약 정보 종료 -->
					
					<!-- 주문 건수 요약 정보 -->
					<div class = "card bg-info text-white text-center" style = "width: 150px;">
	 					<div class="card-body">
	 						<i class = "fas fa-truck" style = "font-size: 60px;"></i>
	 						<hr>
	    					<h5 class="card-title"> <b>오늘의 주문 건</b> </h5>
	    					<hr>
	    					<p class="card-text"> 82 건 </p>
	  					</div>
					</div>
					<!-- 주문 건수 요약 정보 종료 -->
					
					<!-- 미처리 건수 요약 정보 -->
					<div class = "card bg-warning text-white text-center" style = "width: 150px;">
	 					<div class="card-body">
	 						<i class = "fas fa-comment-slash" style = "font-size: 60px;"></i>
	 						<hr>
	    					<h5 class="card-title"> <b>미답변 후기 / Q&A</b> </h5>
	    					<hr>
	    					<p class="card-text"> 14 개 </p>
	  					</div>
					</div>
					<!-- 미처리 건수 요약 정보 종료 -->
					
				</div>
				<!-- 요약 정보 List 종료 -->
				
				<br>
				
				<!-- 더보기 button -->
				<div class = "more_button text-right">
					<button class = "btn btn-secondary" style = "width: 100px;">더보기</button>
				</div>
				<!-- 더보기 button 종료 -->
			
				<hr>
				
				<!-- 주문 1 카드 table -->
				<div class = "order1">
					<div class = "card">
						<div class = "card-body">
							<table style = "width: 700px;">
								<tr>
									<td> 알록달록 캔들 외 3개 </td>
									<td class = "text-center" rowspan = 2 style = "vertical-align: middle;">
										<button class = "btn btn-success" style = "width: 150px;" disabled> 결제 완료 </button>	
									</td>
								</tr>
								<tr>
									<td> 주문날짜 : 2019-08-18 &nbsp;&nbsp;&nbsp; 주문번호 : 123-45678-9012 </td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<!-- 주문 1 카드 table 종료 -->
				
				<!-- 주문 2 카드 table -->
				<div class = "order2">
					<div class = "card">
						<div class = "card-body">
							<table style = "width: 700px;">
								<tr>
									<td> 알록달록 캔들 외 3개 </td>
									<td class = "text-center" rowspan = 2 style = "vertical-align: middle;">
										<button class = "btn btn-warning" style = "width: 150px;" disabled> 결제 미완료 </button>	
									</td>
								</tr>
								<tr>
									<td> 주문날짜 : 2019-08-18 &nbsp;&nbsp;&nbsp; 주문번호 : 123-45678-9012 </td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<!-- 주문 2 카드 table 종료 -->
				
				<!-- 주문 3 카드 table -->
				<div class = "order3">
					<div class = "card">
						<div class = "card-body">
							<table style = "width: 700px;">
								<tr>
									<td> 알록달록 캔들 외 3개 </td>
									<td class = "text-center" rowspan = 2 style = "vertical-align: middle;">
										<button class = "btn btn-success" style = "width: 150px;" disabled> 결제 완료 </button>	
									</td>
								</tr>
								<tr>
									<td> 주문날짜 : 2019-08-18 &nbsp;&nbsp;&nbsp; 주문번호 : 123-45678-9012 </td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<!-- 주문 3 카드 table 종료 -->
				
				<!-- 주문 4 카드 table -->
				<div class = "order4">
					<div class = "card">
						<div class = "card-body">
							<table style = "width: 700px;">
								<tr>
									<td> 알록달록 캔들 외 3개 </td>
									<td class = "text-center" rowspan = 2 style = "vertical-align: middle;">
										<button class = "btn btn-info" style = "width: 150px;" disabled> 배송중 </button>	
									</td>
								</tr>
								<tr>
									<td> 주문날짜 : 2019-08-18 &nbsp;&nbsp;&nbsp; 주문번호 : 123-45678-9012 </td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<!-- 주문 4 카드 table 종료 -->
				
				<!-- 주문 5 카드 table -->
				<div class = "order5">
					<div class = "card">
						<div class = "card-body">
							<table style = "width: 700px;">
								<tr>
									<td> 알록달록 캔들 외 3개 </td>
									<td class = "text-center" rowspan = 2 style = "vertical-align: middle;">
										<button class = "btn btn-secondary" style = "width: 150px;" disabled> 배송 완료 </button>	
									</td>
								</tr>
								<tr>
									<td> 주문날짜 : 2019-08-18 &nbsp;&nbsp;&nbsp; 주문번호 : 123-45678-9012 </td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<!-- 주문 5 카드 table 종료 -->
				
				<br><br>
				
				<!-- 페이징 처리  -->
				<div class = "container">
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
				<!-- 페이징 처리  종료 -->
				
				<br><br>
				
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