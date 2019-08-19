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
				<!-- 결제화면 header table -->
				<table style = "width: 800px;">
					<tr style = "height: 30px;"></tr>
					<tr>
						<td colspan = 4>
							<h5><b>결제화면</b></h5>
							<hr>
						</td>
					</tr>
				</table>
				<!-- 결제화면 header table 종료 -->
				
				<!-- 사장님1 Component -->
				<div class = "seller1"> 
				<!-- 사장님별 결제화면 header table -->
				<table style = "width: 800px;">
					<tr>
						<td colspan = 4 style = "height: 50px;">
							<b>노라조 사장님</b> 
						</td>
					</tr>
					<tr style = "background-color: lightgrey" >
						<th class = "text-center" style = "width: 45%;"> 상품정보 </th>
						<th class = "text-center" style = "width: 20%;"> 판매가 </th>
						<th class = "text-center" style = "width: 15%;"> 수량 </th>
						<th class = "text-center" style = "width: 20%;"> 합계 </th>
					</tr>
				</table>
				<!-- 사장님별 결제화면 header table 종료 -->	
				
				<!-- 사장님별 결제화면 상품 table 1 -->
				<table style = "width: 800px;">
					<tr style = "height: 20px;"></tr>	
				    <tr>
				      <td rowspan = 3 style = "width: 20%;">
				      	<img src = "images/sk.png" width = 100 height = 100>
				      </td>
				      <td style = "width: 25%;"> 상품명 : 카레 </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5>1조 2500억 원</h5>
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 15%;">
				      	1
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5>1조 2500억 원</h5>
				      </td>
				    </tr>
				    <tr>
				      <td> 옵션 1 : 소고기 제외 </td>
				    </tr>
				    <tr>
				      <td> 옵션 2 : 양파, 감자 </td>
				    </tr>
				    <tr style = "height: 20px;"></tr>
				    <tr class = "text-right" style = "background-color: lightgrey">
				      <td>배송비</td>
				      <td colspan = 3></td>
				      <td>3000 원</td>
				    </tr>
				</table>
				<!-- 사장님별 장바구니 상품 table 1 종료 -->
				
				<!-- 사장님별 장바구니 상품 table 2 -->
				<table style = "width: 800px;">
					<tr style = "height: 20px;"></tr>	
				    <tr>
				      <td rowspan = 3 style = "width: 20%;">
				      	<img src = "images/sk.png" width = 100 height = 100>
				      </td>
				      <td style = "width: 25%;"> 상품명 : 카레 </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5>1조 2500억 원</h5>
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 15%;">
				      	1
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5>1조 2500억 원</h5>
				      </td>
				    </tr>
				    <tr>
				      <td> 옵션 1 : 소고기 제외 </td>
				    </tr>
				    <tr>
				      <td> 옵션 2 : 양파, 감자 </td>
				    </tr>
				    <tr style = "height: 20px;"></tr>
				    <tr class = "text-right" style = "background-color: lightgrey">
				      <td>배송비</td>
				      <td colspan = 3></td>
				      <td>3000 원</td>
				    </tr>
				</table>
				<hr>
				<!-- 사장님별 장바구니 상품 table 2 종료 -->
				</div>
				<!-- 사장님1 Component 종료 -->
				
				<!-- 사장님2 Component -->
				<div class = "seller2"> 
				<!-- 사장님별 결제화면 header table -->
				<table style = "width: 800px;">
					<tr>
						<td colspan = 4 style = "height: 50px;">
							<b>노라조 사장님</b> 
						</td>
					</tr>
					<tr style = "background-color: lightgrey" >
						<th class = "text-center" style = "width: 45%;"> 상품정보 </th>
						<th class = "text-center" style = "width: 20%;"> 판매가 </th>
						<th class = "text-center" style = "width: 15%;"> 수량 </th>
						<th class = "text-center" style = "width: 20%;"> 합계 </th>
					</tr>
				</table>
				<!-- 사장님별 결제화면 header table 종료 -->	
				
				<!-- 사장님별 결제화면 상품 table 1 -->
				<table style = "width: 800px;">
					<tr style = "height: 20px;"></tr>	
				    <tr>
				      <td rowspan = 3 style = "width: 20%;">
				      	<img src = "images/sk.png" width = 100 height = 100>
				      </td>
				      <td style = "width: 25%;"> 상품명 : 카레 </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5>1조 2500억 원</h5>
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 15%;">
				      	1
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5>1조 2500억 원</h5>
				      </td>
				    </tr>
				    <tr>
				      <td> 옵션 1 : 소고기 제외 </td>
				    </tr>
				    <tr>
				      <td> 옵션 2 : 양파, 감자 </td>
				    </tr>
				    <tr style = "height: 20px;"></tr>
				    <tr class = "text-right" style = "background-color: lightgrey">
				      <td>배송비</td>
				      <td colspan = 3></td>
				      <td>3000 원</td>
				    </tr>
				</table>
				<!-- 사장님별 장바구니 상품 table 1 종료 -->
				
				<!-- 사장님별 장바구니 상품 table 2 -->
				<table style = "width: 800px;">
					<tr style = "height: 20px;"></tr>	
				    <tr>
				      <td rowspan = 3 style = "width: 20%;">
				      	<img src = "images/sk.png" width = 100 height = 100>
				      </td>
				      <td style = "width: 25%;"> 상품명 : 카레 </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5>1조 2500억 원</h5>
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 15%;">
				      	1
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5>1조 2500억 원</h5>
				      </td>
				    </tr>
				    <tr>
				      <td> 옵션 1 : 소고기 제외 </td>
				    </tr>
				    <tr>
				      <td> 옵션 2 : 양파, 감자 </td>
				    </tr>
				    <tr style = "height: 20px;"></tr>
				    <tr class = "text-right" style = "background-color: lightgrey">
				      <td>배송비</td>
				      <td colspan = 3></td>
				      <td>3000 원</td>
				    </tr>
				</table>
				<hr>
				<!-- 사장님별 장바구니 상품 table 2 종료 -->
				</div>
				<!-- 사장님2 Component 종료 -->
				
				<!-- 총 상품 금액 table -->
				<table style = "width: 800px;">
					<tr class = "text-right">
						<th colspan = 2 style = "width: 400px;">
						<th style = "width: 100px;"> 사용 금액  </th>
						<td style = "width: 200px;"> 5조  </td>
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
						
						<th colspan = 2 class = "text-right"> 5조 6000원</th>
					</tr>
				</table>
				<!-- 총 상품 금액 table 종료 -->
				
				<br><br>
			
				<!-- 주문자 정보 table -->
				<h5><b>주문자 정보</b></h5>
				<table class = "table" style = "width: 800px;">
					<tr>
						<th style = "width: 200px;"> 이름 </th>
						<td style = "width: 600px;"> 이기훈 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 연락처 </th>
						<td style = "width: 600px;"> 010-0000-0000 </td>
					</tr>
				</table>
				<!-- 주문자 정보 table 종료 -->
			
				<br><br>
			
				<!-- 배송 정보 table -->
				<h5><b>배송 정보</b></h5>
				<table class = "table" style = "width: 800px;">
					<tr>
						<td colspan = 3 class = "text-right">
							<input class="checkbox" type="checkbox" value="" id="checkAll"> &nbsp; 주문자 정보와 동일
						</td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 이름 </th>
						<td style = "width: 450px;"> <input type="text" class="form-control" placeholder="이름"> </td>
						<td style = "width: 200px;"> </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 주소 </th>
						<td style = "width: 400px;"> <input type="text" class="form-control" placeholder="주소"> </td>
						<td style = "width: 200px;"> <button class = "btn btn-secondary btn-block">우편번호 검색</button> </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 나머지 주소</th>
						<td style = "width: 400px;"> <input type="text" class="form-control" placeholder="나머지 주소"> </td>
						<td style = "width: 200px;"> </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 연락처 </th>
						<td style = "width: 400px;"> <input type="text" class="form-control" placeholder="ex) 01000000000"> </td>
						<td style = "width: 200px;"> </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 배송시 요청사항 </th>
						<td style = "width: 400px;"> <input type="text" class="form-control" placeholder="40자 이내"> </td>
						<td style = "width: 200px;"> </td>
					</tr>
				</table>
				<!-- 배송 정보 table 종료 -->
			
				<br><br>
				
				<!-- 무통장입금 table -->
				<table class = "table" style = "width: 800px;">
					<tr>
						<th style = "width: 200px;"> 입금계좌 입력 </th>
						<td colspan = 2 style = "width: 400px;">
							<input type="text" class="form-control" placeholder="입금계좌"> 	
						</td>
						<td style = "width: 200px;"> </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 예금주명 </th>
						<td colspan = 2 style = "width: 400px;"> 
							<input type="text" class="form-control" placeholder="예금주"> 	
						</td>
						<td style = "width: 200px;"> </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 입금 기한 </th>
						<td colspan = 3>
							주문일로부터 7일 이내	
						</td>
					</tr>
				</table>
				<!-- 무통장입금 table 종료 -->
			
				<!-- 확인 button -->
				<div class = "container text-center">
					<br><br>
					<button class = "btn btn-secondary" style = "width: 150px;">주문하기</button>
					<button class = "btn btn-secondary" style = "width: 150px;">뒤로가기</button>
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



