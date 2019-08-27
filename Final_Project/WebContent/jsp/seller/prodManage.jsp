<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
	th {
		background-color : lightgrey;
	}
	</style>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#post").on("click", function(){
			location.href = "prodPost.do";
		})
	})
	</script>
</head>
<body>
<!-- header -->
<header>
	<jsp:include page="/jsp/header.jsp"></jsp:include>
</header>
<!-- header 종료 -->

<!-- main body -->


${ sellerProduct.sel_count[0] }
<div class = "content">
	<div class = "container">
		<div class = "row">
			<div class = "col-3">
				<jsp:include page = "sideBar.jsp"></jsp:include>
			</div>
			<div class = "col-8">
				<!-- 등록 상품 관리 header table -->
				<table class = "mt-4" style = "width: 700px;">
					<tr>
						<td>
							<h5><b>등록 상품 관리</b></h5>
							<hr>
						</td>
					</tr>
					<tr>
						<td class = "text-right">
							<button class = "btn btn-sm btn-secondary" id="post">상품 등록</button>
						</td>
					</tr>
				</table>
				<!-- 등록 상품 관리 header table 종료-->
				<br>
				
				<!-- 등록 상품 List table -->
				<c:forEach var="prod" items="${ sellerProd }" varStatus="i">
				<table style = "width: 700px; height: 175px;">
					<tr class = "text-center">
						<th style = "width: 25%"></th>
						<th style = "width: 30%">상품정보</th>
						<th style = "width: 30%">지불 금액</th>
						<th style = "width: 15%"></th>	
					</tr>
					<tr>
						<td rowspan = 3  class = "text-center">
							<img src = "images/sk.png" style = "width: 125px; height: 125px;">
						</td>
						<td> 상품명 : ${ sellerProduct.prod_name[i.index] }</td>
						<td> 판매수량 : ${ sellerProduct.sel_count[i.index] }개 </td>
						<td>
							<button class = "btn btn-sm btn-warning" style = "width: 100px;"> 편집 </button>
						</td>
					</tr>
					<tr>
						<td> 카테고리 : ${ sellerProduct.prod_category[i.index] } </td>
						<td> 재고 : ${ sellerProduct.sel_remain[i.index] } 개 </td>
						<td>
							<button class = "btn btn-sm btn-danger" style = "width: 100px;"> 일시정지 </button>
						</td>
					</tr>
					<tr>
						<td> 게시일 : ${ sellerProduct.prod_date[i.index] }</td>
						<td> 매출 : ${ sellerProduct.sel_sales[i.index] }원 </td>
						<td>
							<button class = "btn btn-sm btn-info" style = "width: 100px;"> 후기 / Q&A </button>
						</td>
					</tr>
				</table>
				</c:forEach>
				<!-- 등록 상품 List table 종료-->
				
				<br><br>
				
				<!-- 페이징 처리  -->
				<div class = "container">
					<nav>
			<ul class="pagination justify-content-center">
				<li class="page-item <c:if test="${ start == 1 }">disabled</c:if>"><a class="page-link" href="prodManage.do?page=1"> 
				<span aria-hidden="true">&laquo;</span>
				</a></li>
				<li class="page-item <c:if test="${ start == 1 }">disabled</c:if>"><a class="page-link" href="prodManage.do?page=${ start - 1 }">이전</a></li>
				<c:forEach begin="${ start }" end="${ end < last ? end : last }" var="i">
					<c:choose>
						<c:when test="${ i == current }">
							<li class="page-item active" aria-current="page">
      							<span class="page-link">${ current } <span class="sr-only">(current)</span></span>
    						</li></c:when>
						<c:otherwise>
							<li class="page-item"><a class="page-link" href="prodManage.do?page=${ i }">${ i }</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>
				<li class="page-item <c:if test="${ last <= end }">disabled</c:if>"><a class="page-link" href="prodManage.do?page=${ end + 1 }">다음</a></li>
				<li class="page-item <c:if test="${ last <= end }">disabled</c:if>"><a class="page-link" href="prodManage.do?page=${ last }"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>
			</ul>
		</nav>
				</div>
				<!-- 페이징 처리  종료 -->
				
				<br><br>
				<hr>
				
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