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
				<jsp:include page = "sideBar.jsp"></jsp:include>
			</div>
			<div class = "col-8">
				<!-- 주문 전체 정보 header table -->
				<table style = "width: 700px;">
					<tr style = "height: 30px;"></tr>
					<tr>
						<td>
							<h5><b>주문 내역 상세 보기</b></h5>
							<hr>
						</td>
					</tr>
					<tr>
						<td>
							<h5><b>배송 상태</b></h5> 
						</td>
					</tr>
					<tr>
						<td>
							배송 상태 선택 : 
							<select class="custom-select-sm">
								<option> 결제 완료 </option>
								<option> 배송 중 </option>
								<option> 배송 완료 </option>
							</select>
						</td>
					</tr>
				</table>
				<!-- 주문 전체 정보 header table 종료 -->
				
				<br>
				
				<!-- 주문번호 1 table -->
				<table style = "width: 700px;">
					<tr>
						<td colspan = 6>
							<h5><b>구매 리스트</b></h5>
							<hr>  
						</td>
					</tr>
					
					<tr class = "text-center" style = "background-color: lightgrey" >
						<th style = "width: 50px;"> 번호 </th>
						<th style = "width: 300px;" colspan = 2> 상품정보 </th>
						<th style = "width: 150px;"> 판매가 </th>
						<th style = "width: 50px;"> 수량 </th>
						<th style = "width: 150px;"> 합계 </th>
					</tr>
					
				    <tr>
				      <td rowspan = 3  class = "text-center"> 1 </td>
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
				</table>
				<hr>
				<!-- 주문번호 1 table 종료-->
				
			
				<!-- 주문번호 2 table -->
				<table style = "width: 700px;">
					<tr class = "text-center" style = "background-color: lightgrey" >
						<th style = "width: 50px;"> 번호 </th>
						<th style = "width: 300px;" colspan = 2> 상품정보 </th>
						<th style = "width: 150px;"> 판매가 </th>
						<th style = "width: 50px;"> 수량 </th>
						<th style = "width: 150px;"> 합계 </th>
					</tr>
					
				    <tr>
				      <td rowspan = 3  class = "text-center"> 2 </td>
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
				</table>
				<hr>
				<!-- 주문번호 2 table 종료-->
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
				
				<!-- 결제 정보 table -->
				<h5><b>결제 방법 및 결제 금액</b></h5>
				<table class = "table" style = "width: 700px;">
					<tr>
						<th style = "width: 200px;"> 주문번호 </th>
						<td style = "width: 500px; color: red;"> 1234-56-78910 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 결제일 </th>
						<td style = "width: 500px; color: red;"> 2019-08-20 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 상품가격 </th>
						<td style = "width: 600px; color: red;"> 5조 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 배송비 </th>
						<td style = "width: 500px; color: red;"> 3000 원 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 결제 방법 </th>
						<td style = "width: 500px; color: red;"> 무통장입금 </td>
					</tr>
				</table>
				<!-- 배송 정보 table 종료 -->
				
				<!-- 주문취소 button -->
				<div class = "container text-right">
					<button class = "btn btn-secondary">주문 취소</button>
				</div>
				<!-- 주문취소 button 종료 -->
				
				<br><br>
				
				<!-- 확인 button -->
				<div class = "container text-center">
					<button class = "btn btn-secondary">확인</button>
					<button class = "btn btn-secondary">취소</button>
				</div>
				<!-- 확인 button 종료 -->
				
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