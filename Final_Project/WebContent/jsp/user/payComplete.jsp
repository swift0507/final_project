<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/gh/cferdinandi/smooth-scroll@15.0.0/dist/smooth-scroll.polyfills.min.js"></script>
</head>
<body>
	<!-- header -->
	<header>
		<jsp:include page="/jsp/header.jsp"></jsp:include>
	</header>
	<!-- header 종료 -->
	
<!-- main body -->
<div class = "content">
	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col-8">
				<h5><b>주문 완료</b></h5>
				<hr>
				<i class = "far fa-thumbs-up" style = "font-size: 30px;"> 주문이 완료되었습니다.</i> <br>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<b class = "indent">주문내역은 [마이페이지 > 구매내역] 에서 확인 가능합니다.</b>
				<br><br>
				
				<table style = "width: 700px;">
					<tr>
						<th rowspan = 3 class = "align-top"> 배송정보 </th>
						<td colspan = 2> 이기훈 </td>
					</tr>
					<tr>
						<td> 010-1234-5678 </td>
					</tr>
					<tr>
						<td> 01234 서울시 강남구 테헤란로 212</td>
					</tr>
					
					<tr style = "height: 30px;"></tr>
				
					<tr>
						<th rowspan = 2 class = "align-top"> 결제정보 </th>
						<td> 작품금액 </td>
					</tr>
					<tr>
						<td> 배송비 </td>
					</tr>
					
					<tr style = "height: 30px;"></tr>
					
					<tr>
						<th rowspan = 5 class = "align-top"> 입금정보 </th>
						<td> 은행 : ㅇㅇ은행 </td>
					</tr>
					<tr>
						<td> 계좌번호 : 1234-567890-1234 </td>
					</tr>
					<tr>
						<td> 예금주 : ㅁㅁㅁ</td>
					</tr>
					<tr>
						<td> 금액 : 1조 2500억원</td>
					</tr>
					<tr>
						<td> 입금 마감일 : 2019-08-21</td>
					</tr>
					<tr style = "height: 20px;"></tr>
					<tr>
						<td colspan = 2 class = "text-center">
							<button class="btn btn-sm btn-secondary" type="button">주문내역 / 배송조회 </button>
							<button class="btn btn-sm btn-secondary" type="button">쇼핑 계속하기 </button>
						</td>
					</tr>
				</table>
			</div>
			<div class="col"></div>
		</div>
	</div>
</div>
<!-- main body 종료-->
	<!-- footer -->
	<footer>
		<jsp:include page="/jsp/footer.jsp"></jsp:include>
	</footer>
	<!-- footer 종료 -->
</body>
</html>