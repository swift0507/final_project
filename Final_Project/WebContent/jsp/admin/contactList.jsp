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
			
			<div class = "row mx-auto">
				<div class= "col px-md-5 mt-5">
					<!-- 1:1문의 header table -->
					<table class="mx-auto mt-2 mb-2" style = "width: 800px;">
						<tr>
							<td colspan = 4>
								<h5><b>1:1문의</b></h5>
								<hr>
							</td>
						</tr>
						<tr>
			    			<td style = "width: 45%;">
			    				<input type="checkbox" value="" id="noanswer" class = "ml-3">
								<label for="noanswer">
									미답변 문의만 보기
								</label>
			    			</td>
			    			<td class = "text-center" style = "width: 20%;">
			    				<select class = "custom-select" id = "" style = "width: 150px;">
									<option value="제목">제목</option>
									<option value="문의유형">문의유형</option>
									<option value="작성자">작성자</option>
									<option value="상태">상태</option>
									<option value="작성일">작성일</option>
								</select>
			    			</td>
			    			<td class = "align-right" style = "width: 25%;">
			    				<input class="form-control" type="search" placeholder="Search" style = "width: 200px;">
			    			</td>
			    			<td class = "text-center" style = "width: 10%;">
			    				<button class="btn btn-outline-success" type="submit">Search</button>
			    			</td>
			    		</tr>
					</table>
					<!-- 1:1문의 header table 종료-->
					
				
					<!-- 1:1문의 내용 table -->
					<table class="table mx-auto text-center" style = "width: 800px;">
					    <tr class = "text-center">
					      <th style = "width: 8%"> 번호 </th>
					      <th style = "width: 32%"> 제목 </th>
					      <th style = "width: 15%"> 문의유형 </th>
					      <th style = "width: 15%"> 작성자 </th>
					      <th style = "width: 15%"> 상태 </th>
					      <th style = "width: 15%"> 작성일</th>
					    </tr>
					    <tr>
					      <th>1</th>
					      <td>문의는 정관장이 좋은데</td>
					      <td>상품관련</td>
					      <td>매미킴</td>
					      <td>미답변</td>
					      <td>2019-09-05</td>
					</table>
					<!-- 1:1문의 내용 table 종료 -->
				</div>
			</div>
			
			<br><br>
			<!-- 페이징 처리 -->
			<div class = "row mx-auto">
			
			</div>
			<!-- 페이징 처리 종료-->
			<br><br>
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