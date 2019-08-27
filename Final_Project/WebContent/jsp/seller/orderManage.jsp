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
			
				<table style = "width: 700px;">
					<tr style = "height: 30px;"></tr>
					<tr>
						<td>
							<h5><b>주문 관리</b></h5>
							<hr>
						</td>
					</tr>
					<tr>
						<td class = "text-right">
							<button class = "btn-secondary">1개월</button>
							<button class = "btn-secondary">3개월</button>
							<button class = "btn-secondary">6개월</button>
							<button class = "btn-secondary">12개월</button>
							<button class = "btn-secondary">전체</button>
						</td>
					</tr>
					
					<tr style = "height: 20px;"></tr>
				
				</table>
			
			
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="data1-tab" data-toggle="tab" href="#data1" role="tab"> 신규 주문 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="data2-tab" data-toggle="tab" href="#data2" role="tab"> 배송 중 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="data3-tab" data-toggle="tab" href="#data3" role="tab"> 배송 완료 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="data4-tab" data-toggle="tab" href="#data4" role="tab"> 교환 신청 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="data5-tab" data-toggle="tab" href="#data5" role="tab"> 교환 완료 </a>
					</li>
				</ul>
				
				<div class="tab-content" id="myTabContent">
				
					<!-- tab 1 area -->
					<div class="tab-pane fade show active" id="data1" role="tabpanel">
					
						<!-- 주문 상품 table 1 -->
						<table class = "mt-3" style = "width: 700px;">
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td class = "text-right" colspan = 2 style = "width: 45%;">
									<button class = "btn-secondary">주문 내역 상세보기</button>
									<button class = "btn-danger">주문 취소</button>
								</td>
							</tr>
							
							<tr style = "height: 20px;">
								<td colspan = 3></td>
							</tr>
							
							<tr>
								<th> 알록달록 캔들 그 외 3개 </th>
								<th class = "text-center" style = "background-color: lightgrey;"> 
									결제 금액
								</th>
								<th class = "text-center" style = "background-color: lightgrey;">
									결제 / 배송 상태
								</th>
							</tr>
							<tr>
								<td> <b>주문날짜 :</b> 2019-08-27 </td>
								<td class = "text-center align-middle" rowspan = 3> <h5><b>15,000 원</b></h5> </td>
								<td class = "text-center align-middle" rowspan = 3>  
									<button type="button" class="btn btn-ml btn-success" disabled>결제 완료</button>	
								</td>
							</tr>
							<tr>
								<td> <b>주문번호 :</b> 1234-5678-90 </td>
							</tr>
							<tr>
								<td colspan = 2> <b>주문자명 :</b> ㅇㅇㅇ </td>
							</tr>
							
							<tr style = "height: 30px;">
								<td colspan = 3>
									<hr>
								</td>
							</tr>
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td colspan = 2 style = "width: 45%;">
							</tr>
							<tr>
								<td> <b>이름 :</b> ㅇㅇㅇ </td>
								<td colspan = 2 rowspan = 2> <b>거래방법 : </b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>주소 :</b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>휴대폰 번호 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
							<tr>
								<td> <b>배송지 요청사항 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
						</table>
						<!-- 주문 상품 table 1 종료-->
					</div>
					<!-- tab 1 area 종료 -->
					
					<!-- tab 2 area -->
					<div class="tab-pane fade" id="data2" role="tabpanel">
					
						<!-- 주문 상품 table 1 -->
						<table class = "mt-3" style = "width: 700px;">
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td class = "text-right" colspan = 2 style = "width: 45%;">
									<button class = "btn-secondary">주문 내역 상세보기</button>
									<button class = "btn-danger">주문 취소</button>
								</td>
							</tr>
							
							<tr style = "height: 20px;">
								<td colspan = 3></td>
							</tr>
							
							<tr>
								<th> 알록달록 캔들 그 외 3개 </th>
								<th class = "text-center" style = "background-color: lightgrey;"> 
									결제 금액
								</th>
								<th class = "text-center" style = "background-color: lightgrey;">
									결제 / 배송 상태
								</th>
							</tr>
							<tr>
								<td> <b>주문날짜 :</b> 2019-08-27 </td>
								<td class = "text-center" rowspan = 2> <h5><b>15,000 원</b></h5> </td>
								<td class = "text-center" rowspan = 2>  
									<button type="button" class="btn btn-ml btn-success" disabled>결제 완료</button>	
								</td>
							</tr>
							<tr>
								<td> <b>주문번호 :</b> 1234-5678-90 </td>
							</tr>
							<tr>
								<td colspan = 3> <b>주문자명 :</b> ㅇㅇㅇ </td>
							</tr>
							
							<tr style = "height: 30px;">
								<td colspan = 3>
									<hr>
								</td>
							</tr>
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td colspan = 2 style = "width: 45%;">
							</tr>
							<tr>
								<td> <b>이름 :</b> ㅇㅇㅇ </td>
								<td colspan = 2 rowspan = 2> <b>거래방법 : </b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>주소 :</b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>휴대폰 번호 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
							<tr>
								<td> <b>배송지 요청사항 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
						</table>
						<!-- 주문 상품 table 1 종료-->
					</div>
					<!-- tab 2 area 종료 -->
					
					<!-- tab 3 area -->
					<div class="tab-pane fade" id="data3" role="tabpanel">
					
						<!-- 주문 상품 table 1 -->
						<table class = "mt-3" style = "width: 700px;">
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td class = "text-right" colspan = 2 style = "width: 45%;">
									<button class = "btn-secondary">주문 내역 상세보기</button>
									<button class = "btn-danger">주문 취소</button>
								</td>
							</tr>
							
							<tr style = "height: 20px;">
								<td colspan = 3></td>
							</tr>
							
							<tr>
								<th> 알록달록 캔들 그 외 3개 </th>
								<th class = "text-center" style = "background-color: lightgrey;"> 
									결제 금액
								</th>
								<th class = "text-center" style = "background-color: lightgrey;">
									결제 / 배송 상태
								</th>
							</tr>
							<tr>
								<td> <b>주문날짜 :</b> 2019-08-27 </td>
								<td class = "text-center" rowspan = 2> <h5><b>15,000 원</b></h5> </td>
								<td class = "text-center" rowspan = 2>  
									<button type="button" class="btn btn-ml btn-success" disabled>결제 완료</button>	
								</td>
							</tr>
							<tr>
								<td> <b>주문번호 :</b> 1234-5678-90 </td>
							</tr>
							<tr>
								<td colspan = 3> <b>주문자명 :</b> ㅇㅇㅇ </td>
							</tr>
							
							<tr style = "height: 30px;">
								<td colspan = 3>
									<hr>
								</td>
							</tr>
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td colspan = 2 style = "width: 45%;">
							</tr>
							<tr>
								<td> <b>이름 :</b> ㅇㅇㅇ </td>
								<td colspan = 2 rowspan = 2> <b>거래방법 : </b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>주소 :</b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>휴대폰 번호 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
							<tr>
								<td> <b>배송지 요청사항 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
						</table>
						<!-- 주문 상품 table 1 종료-->
					</div>
					<!-- tab 3 area 종료 -->
					
					<!-- tab 4 area -->
					<div class="tab-pane fade" id="data4" role="tabpanel">
					
						<!-- 주문 상품 table 1 -->
						<table class = "mt-3" style = "width: 700px;">
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td class = "text-right" colspan = 2 style = "width: 45%;">
									<button class = "btn-secondary">주문 내역 상세보기</button>
									<button class = "btn-danger">주문 취소</button>
								</td>
							</tr>
							
							<tr style = "height: 20px;">
								<td colspan = 3></td>
							</tr>
							
							<tr>
								<th> 알록달록 캔들 그 외 3개 </th>
								<th class = "text-center" style = "background-color: lightgrey;"> 
									결제 금액
								</th>
								<th class = "text-center" style = "background-color: lightgrey;">
									결제 / 배송 상태
								</th>
							</tr>
							<tr>
								<td> <b>주문날짜 :</b> 2019-08-27 </td>
								<td class = "text-center" rowspan = 2> <h5><b>15,000 원</b></h5> </td>
								<td class = "text-center" rowspan = 2>  
									<button type="button" class="btn btn-ml btn-success" disabled>결제 완료</button>	
								</td>
							</tr>
							<tr>
								<td> <b>주문번호 :</b> 1234-5678-90 </td>
							</tr>
							<tr>
								<td colspan = 3> <b>주문자명 :</b> ㅇㅇㅇ </td>
							</tr>
							
							<tr style = "height: 30px;">
								<td colspan = 3>
									<hr>
								</td>
							</tr>
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td colspan = 2 style = "width: 45%;">
							</tr>
							<tr>
								<td> <b>이름 :</b> ㅇㅇㅇ </td>
								<td colspan = 2 rowspan = 2> <b>거래방법 : </b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>주소 :</b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>휴대폰 번호 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
							<tr>
								<td> <b>배송지 요청사항 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
						</table>
						<!-- 주문 상품 table 1 종료-->
					</div>
					<!-- tab 4 area 종료 -->
					
					<!-- tab 5 area -->
					<div class="tab-pane fade" id="data5" role="tabpanel">
					
						<!-- 주문 상품 table 1 -->
						<table class = "mt-3" style = "width: 700px;">
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td class = "text-right" colspan = 2 style = "width: 45%;">
									<button class = "btn-secondary">주문 내역 상세보기</button>
									<button class = "btn-danger">주문 취소</button>
								</td>
							</tr>
							
							<tr style = "height: 20px;">
								<td colspan = 3></td>
							</tr>
							
							<tr>
								<th> 알록달록 캔들 그 외 3개 </th>
								<th class = "text-center" style = "background-color: lightgrey;"> 
									결제 금액
								</th>
								<th class = "text-center" style = "background-color: lightgrey;">
									결제 / 배송 상태
								</th>
							</tr>
							<tr>
								<td> <b>주문날짜 :</b> 2019-08-27 </td>
								<td class = "text-center" rowspan = 2> <h5><b>15,000 원</b></h5> </td>
								<td class = "text-center" rowspan = 2>  
									<button type="button" class="btn btn-ml btn-success" disabled>결제 완료</button>	
								</td>
							</tr>
							<tr>
								<td> <b>주문번호 :</b> 1234-5678-90 </td>
							</tr>
							<tr>
								<td colspan = 3> <b>주문자명 :</b> ㅇㅇㅇ </td>
							</tr>
							
							<tr style = "height: 30px;">
								<td colspan = 3>
									<hr>
								</td>
							</tr>
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td colspan = 2 style = "width: 45%;">
							</tr>
							<tr>
								<td> <b>이름 :</b> ㅇㅇㅇ </td>
								<td colspan = 2 rowspan = 2> <b>거래방법 : </b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>주소 :</b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>휴대폰 번호 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
							<tr>
								<td> <b>배송지 요청사항 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
						</table>
						<!-- 주문 상품 table 1 종료-->
					</div>
					<!-- tab 5 area 종료 -->
				</div>
				
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