<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<jsp:include page = "admin_header.jsp"></jsp:include>
</header>
<!-- header 종료-->

<!-- main body -->
	<div class = "content">
		<div class="container">
			<!-- Today, 미처리 현황 -->
			<div class="row mx-auto">
			  <div class="col px-md-5 mt-5">
			    <div class="card">
			      <div class="card-body">
			        <h4 class="card-title"><b>Today</b></h4>
			        <table class= "text-center" style = "width: 400px;">
			        	<tr>
			        		<th>가입 회원 수</th>
			        		<th>탈퇴 회원 수</th>
			        	</tr>
			        	<tr>
			        		<td>
			        			<button type="button" class="btn btn-secondary btn-lg" disabled>13,724 명</button>
			        		</td>
			        		<td>
			        			<button type="button" class="btn btn-secondary btn-lg" disabled>32 명</button>	
			        		</td>
			        	</tr>
			        		
			    		<tr style = "height: 30px;"></tr>
			    			
			        	<tr>
			        		<th>상품 등록 수</th>
			        		<th>주문 건수</th>
			        	</tr>
			        	<tr>
			        		<td>
			        			<button type="button" class="btn btn-secondary btn-lg" disabled>12 개</button>
			        		</td>
			        		<td>
			        			<button type="button" class="btn btn-secondary btn-lg" disabled>78 건</button>
			        		</td>
			        	</tr>
			        </table>
			      </div>
			    </div>
			  </div>
			  <div class="col px-md-5 mt-5">
			      <div class="card">
			      	<div class="card-body">
				        <h4 class="card-title"><b>미처리 현황</b></h4>
				        <table class= "text-center" style = "width: 400px;">
				        	<tr>
				        		<th>상품 신고 내역</th>
				        		<th>후기 신고 내역</th>
				        	</tr>
				        	<tr>
				        		<td>
				        			<button type="button" class="btn btn-secondary btn-lg" disabled>47 건</button>
				        		</td>
				        		<td>
				        			<button type="button" class="btn btn-secondary btn-lg" disabled>19 건</button>	
				        		</td>
				        	</tr>
				        		
				    		<tr style = "height: 30px;"></tr>
				    			
				        	<tr>
				        		<th>1:1 문의 미답변</th>
				        		<th>신고 초과 회원</th>
				        	</tr>
				        	<tr>
				        		<td>
				        			<button type="button" class="btn btn-secondary btn-lg" disabled>31 건</button>
				        		</td>
				        		<td>
				        			<button type="button" class="btn btn-secondary btn-lg" disabled>1 명</button>
				        		</td>
				        	</tr>
				        </table>
			      </div>
			    </div>
			  </div>
			</div>
			<!-- Today, 미처리 현황 종료-->
			
			<br>
			<hr>
			<br>
			<!-- 공지사항 -->
			<h4><b>공지사항</b></h4>
			<hr>
			<div class = "row mx-auto">
				<div class= "col">
					<table class="table text-center">
					  <thead>
					    <tr>
					      <th style = "width: 20%">게시물 번호</th>
					      <th style = "width: 60%">제목</th>
					      <th style = "width: 20%">게시일</th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th>1</th>
					      <td>매우 중요한 공지사항</td>
					      <td>2019-09-05</td>
					  </tbody>
					</table>
				</div>
			</div>
			<!-- 공지사항 종료 -->
			<br><br>
			<!-- 페이징 처리 -->
			<div class = "row mx-auto">
			
			</div>
			<!-- 페이징 처리 종료-->
		</div>
	</div>
<!-- main body 종료 -->

<!-- footer -->
<footer>
	<jsp:include page = "admin_footer.jsp"></jsp:include>
</footer>
<!-- footer 종료 -->


</body>
</html>