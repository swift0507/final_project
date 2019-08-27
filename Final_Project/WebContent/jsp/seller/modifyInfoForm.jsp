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
				<!-- 사장님 정보 수정 header table -->
				<table class = "mt-4" style = "width: 700px;">
					<tr>
						<td>
							<h5><b>사장님 정보 수정</b></h5>
							<hr>
						</td>
					</tr>
				</table>
				<!-- 사장님 정보 수정 header table 종료-->
				
				<!-- 사장님 정보 수정 table -->
				<table style = "width: 700px;">
					<tr>
						<th style = "width: 25%;">아이디 : ID</th>
						<th style = "width: 25%;">이름 : 이름</th>
						<td style = "width: 30%;"></td>
						<td style = "width: 20%;"></td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<th> 
							이메일 : 
						</th>
						<td colspan = 2>
							<input type = "email" class = "form-control" placeholder = "이메일">
						</td>
						<td></td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<th> 
							휴대폰번호 : 
						</th>
						<td colspan = 2>
							<input type = "tel" class = "form-control" placeholder = "휴대폰 번호">
						</td>
						<td></td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<th> 
							개별 배송비 설정 : 
						</th>
						<td colspan = 2>
							<input type = "text" class = "form-control" placeholder = "개별 배송비">
						</td>
						<td class = "text-left">원</td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<th> 
							배송비 무료 조건 : 
						</th>
						<td colspan = 2>
							<input type = "text" class = "form-control" placeholder = "배송비 무료 조건">
						</td>
						<td class = "text-left">원</td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<th> 도서산간 배송비 설정 : </th>
						<td colspan = 2>
							<input type = "text" class = "form-control" placeholder = "도서산간 배송비 설정">
						</td>
						<td class = "text-left">원</td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr class = "text-center" style = "height: 75px;">
						<td colspan = 4>
							<button class = "btn btn-sm btn-secondary"> 저장 </button>
							<button class = "btn btn-sm btn-danger"> 취소 </button>
						</td>
					</tr>
				</table>
				<!-- 사장님 정보 수정 table 종료 -->
				
				
				<!-- 사장님 정보 수정 요청 form -->
				<table class = "mt-5" style = "width: 700px;">
					<tr>
						<th style = "width: 25%"> 
							은행 선택 :
						</th>
						<td style = "width: 25%">
							<select class="custom-select" style = "width: 150px;">
								<option value="">신한</option>
								<option value="">우리</option>
								<option value="">국민</option>
								<option value="">하나</option>
							</select>
						</td>
						<th style = "width: 20%"> 
							예금주 : 
						</th>
						<td style = "width: 30%">
							<input type = "text" class = "form-control" placeholder = "예금주명 입력">
						</td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<th>
							계좌 번호 :
						</th>
						<td colspan = 3>
							<input type = "text" class = "form-control" placeholder = "계좌번호 입력">
						</td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<th>
							신분증 첨부 :
						</th>
						<td colspan = 3>
							<input type = "file" class = "form-control">
						</td>
					</tr>
					<tr>
						<th>
							사업자 등록번호 :
						</th>
						<td colspan = 3>
							<input type = "text" class = "form-control" placeholder = "사업자 등록번호 입력">
						</td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<th>
							상호명 :
						</th>
						<td colspan = 3>
							<input type = "text" class = "form-control" placeholder = "상호명 입력">
						</td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<th>주소 :</th>
						<td colspan = 2>
							<input type = "text" class = "form-control" id="mem_zipcode" readonly="readonly" placeholder = "우편번호">
						</td>
						<td class = "text-center">
							<button class = "btn btn-sm btn-secondary" id="findZipcode" type = "button" style = "width: 125px;">우편번호 찾기</button>
						</td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<td></td>
						<td colspan = 3>
							<input type="text" class="form-control" id="mem_addr" readonly="readonly" placeholder="주소">
						</td>
						
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<td></td>
						<td colspan = 3>
							<input type="text" class="form-control" id="mem_remainaddr" placeholder="나머지 주소">
						</td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr>
						<th>
							사업자 등록증 첨부 :
						</th>
						<td colspan = 3>
							<input type = "file" class = "form-control">
						</td>
					</tr>
					
					<tr style = "height: 10px;"></tr>
					
					<tr class = "text-center" style = "height: 75px;">
						<td colspan = 4>
							<button class = "btn btn-sm btn-secondary"> 저장 </button>
						</td>	
					</tr>
				</table>
				<!-- 사장님 정보 수정 요청 form 종료 -->
				
				
				
				<br>
				
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