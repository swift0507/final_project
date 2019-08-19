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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
  integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
  integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
  crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
  integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
  crossorigin="anonymous"></script>
<style>
	text-center item_header {
		background-color: lightgrey;
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
				<jsp:include page = "userSideMenu.jsp"></jsp:include>
			</div>
			<div class = "col-8">
				<!-- 주문 전체 정보 header table -->
				<table style = "width: 700px;">
					<tr style = "height: 30px;"></tr>
					<tr>
						<td>
							<h5><b>주문 내역 상세 보기</b></h5>
						</td>
					</tr>
					<tr>
						<td>
							<span> 주문번호 : 123-45-678910 </span> &nbsp;&nbsp;&nbsp;
							<span> 주문일 : 2019-08-16 </span>
							<hr> 
						</td>
					</tr>
				</table>
				<!-- 주문 전체 정보 header table 종료 -->
				
				<!-- 사장님별 주문 내용 1 table -->
				<table style = "width: 700px;">
					<tr>
						<td colspan = 5 style = "height: 50px;">
							<h5><b>노라조 사장님</b></h5> 
						</td>
					</tr>
				
					<tr class = "text-center" style = "background-color: lightgrey" >
						<th colspan = 2> 상품정보 </th>
						<th> 판매가 </th>
						<th> 수량 </th>
						<th> 합계 </th>
					</tr>
					
				    <tr>
				      <td rowspan = 3>
				      	<img src = "images/sk.png" width = 100 height = 100>
				      </td>
				      <td> 상품명 : 카레 </td>
				      <td rowspan = 3 class = "text-center">
				      	<h5>1조 2500억 원</h5>
				      </td>
				      <td rowspan = 3 class = "text-center">
				      	1
				      </td>
				      <td rowspan = 3 class = "text-center">
				      	<h5>1조 2500억 원</h5>
				      </td>
				    </tr>
				    <tr>
				      <td> 옵션 1 : 소고기 제외 </td>
				    </tr>
				    <tr>
				      <td> 옵션 2 : 양파, 감자 </td>
				    </tr>
				    <tr class = "text-right" style = "background-color: lightgrey">
				      <td>배송비</td>
				      <td colspan = 3></td>
				      <td>3000 원</td>
				    </tr>
				</table>
				<hr>
				<!-- 사장님별 주문 내용 1 table 종료 -->
				
				<!-- 사장님별 주문 내용 2 table -->
				<table style = "width: 700px;">
					<tr>
						<td colspan = 5><h5><b>노라조 사장님</b></h5> </td>
					</tr>
				
					<tr class = "text-center" style = "background-color: lightgrey" >
						<th colspan = 2> 상품정보 </th>
						<th> 판매가 </th>
						<th> 수량 </th>
						<th> 합계 </th>
					</tr>
					
				    <tr>
				      <td rowspan = 3>
				      	<img src = "images/sk.png" width = 100 height = 100>
				      </td>
				      <td> 상품명 : 카레 </td>
				      <td rowspan = 3 class = "text-center">
				      	<h5>1조 2500억 원</h5>
				      </td>
				      <td rowspan = 3 class = "text-center">
				      	1
				      </td>
				      <td rowspan = 3 class = "text-center">
				      	<h5>1조 2500억 원</h5>
				      </td>
				    </tr>
				    <tr>
				      <td> 옵션 1 : 소고기 제외 </td>
				    </tr>
				    <tr>
				      <td> 옵션 2 : 양파, 감자 </td>
				    </tr>
				    <tr class = "text-right" style = "background-color: lightgrey">
				      <td>배송비</td>
				      <td colspan = 3></td>
				      <td>3000 원</td>
				    </tr>
				</table>
				<hr>
				<!-- 사장님별 주문 내용 2 table 종료 -->
				
				<!-- 총 상품 금액 table -->
				<table style = "width: 700px;">
					<tr class = "text-right">
						<th colspan = 2 style = "width: 400px;">
						<th style = "width: 100px;"> 사용 금액  </th>
						<td style = "width: 200px;"> 2조 5000억 원 </td>
					</tr>
					<tr class = "text-right">
						<th colspan = 2 style = "width: 400px;">
						<th style = "width: 100px;"> 배송비  </th>
						<td style = "width: 200px;"> 6000 원 </td>
					</tr>
					<tr style = "height: 10px">
						<td colspan = 4>
							<hr>
						</td>
					</tr>
					<tr style = "font-size: 20px;">
						<th colspan = 2 class = "text-left"> 총 상품 금액 </th>
						
						<th colspan = 2 class = "text-right"> 2조 5000억 6000원 </th>
					</tr>
				</table>
				<!-- 총 상품 금액 table 종료 -->
				
				<br><br>
				
				<!-- 주문자 정보 table -->
				<h5><b>주문자 정보</b></h5>
				<table class = "table" style = "width: 700px;">
					<tr>
						<th style = "width: 100px;"> 이름 </th>
						<td style = "width: 600px;"> 이기훈 </td>
					</tr>
					<tr>
						<th style = "width: 100px;"> 연락처 </th>
						<td style = "width: 600px;"> 010-0000-0000 </td>
					</tr>
				</table>
				
				<!-- 주문자 정보 table 종료 -->
				
				<br>
				
				<!-- 배송 정보 table -->
				<h5><b>배송 정보</b></h5>
				<table class = "table" style = "width: 700px;">
					<tr>
						<th style = "width: 200px;"> 이름 </th>
						<td style = "width: 500px;"> 이기훈 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 주소 </th>
						<td style = "width: 500px;"> 서울시 강남구 테헤란로 212 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 연락처 </th>
						<td style = "width: 600px;"> 010-0000-0000 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 배송시 요청사항 </th>
						<td style = "width: 500px;"> 부재시 경비실에 맡겨주세요 </td>
					</tr>
				</table>
				
				<!-- 배송 정보 table 종료 -->
				
				<br>
				
				<!-- 입금 정보 table -->
				<h5><b>입금 정보</b></h5>
				<table class = "table" style = "width: 700px;">
					<tr>
						<th style = "width: 200px;"> 은행 </th>
						<td style = "width: 500px; color: red;"> ㅇㅇ은행 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 계좌번호 </th>
						<td style = "width: 500px; color: red;"> 1234-56-789101 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 예금주 </th>
						<td style = "width: 600px; color: red;"> (주) 핸쇼 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 금액 </th>
						<td style = "width: 500px; color: red;"> 2조 5000억 6000원 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 입금 마감 </th>
						<td style = "width: 500px; color: red;"> 2019-08-21 </td>
					</tr>
				</table>
				<!-- 배송 정보 table 종료 -->
				
				<br>
				<!-- 확인 button -->
				<div class = "container text-center">
					<button class = "btn btn-secondary">확인</button>
				</div>
				<!-- 확인 button 종료 -->
				
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



