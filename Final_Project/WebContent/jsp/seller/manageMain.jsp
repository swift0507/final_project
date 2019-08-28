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
	
	<script type="text/javascript">
	$(document).ready(function(){
		$(".receipt_delstatus").each(function(){
			var delstatus = parseInt($(this).val());
			var elem = $(this).parentsUntil("div").find($(".statusText"))
			if(delstatus ==0){
				elem.text("결제 대기")
				elem.attr("class", "btn btn-dark statusText")
				
			}
			else if(delstatus ==1){
				elem.text("결제 완료")
				elem.attr("class", "btn btn-primary statusText")
			}
			else if(delstatus ==2){
				elem.text("배송 준비중")
				elem.attr("class", "btn btn-secondary statusText")
			}
			else if(delstatus ==3){
				elem.text("배송 중")
				elem.attr("class", "btn btn-secondary statusText")
			}
			else if(delstatus ==4){
				elem.text("배송 완료")
				elem.attr("class", "btn btn-primary statusText")
			}
			else if(delstatus ==5){
				elem.text("구매 확정")
				elem.attr("class", "btn btn-success statusText")
			}
			else if(delstatus ==6){
				elem.text("교환 신청")
				elem.attr("class", "btn btn-warning statusText")
			}
			else if(delstatus ==7){
				elem.text("교환 완료")
				elem.attr("class", "btn btn-primary statusText")
			}
		})
		
		$("#more").on("click",function(){
			location.href = "prodManage.do"
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
	    					<c:choose>
		    					<c:when test="${todaySales==null}">
		    					<p class="card-text"> 0 원 </p>
		    					</c:when>
		    					<c:otherwise>
		    					<p class="card-text"> ${todaySales} 원 </p>
		    					</c:otherwise>
	    					</c:choose>
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
	    					<p class="card-text"> ${todayOrder} 건 </p>
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
	    					<p class="card-text"> ${noanswer} 개 </p>
	  					</div>
					</div>
					<!-- 미처리 건수 요약 정보 종료 -->
					
				</div>
				<!-- 요약 정보 List 종료 -->
				
				<br>
				
				<!-- 더보기 button -->
				<div class = "more_button text-right">
					<button class = "btn btn-secondary" id="more" style = "width: 100px;">더보기</button>
				</div>
				<!-- 더보기 button 종료 -->
			
				<hr>
				
				<c:forEach var="receipt" items="${receiptList}">
				<!-- 주문 1 카드 table -->
				<div class = "order1">
					<div class = "card">
						<div class = "card-body">
							<table style = "width: 700px;">
								<tr>
									<td> ${receipt.receipt_prod} </td>
									<td class = "text-center" rowspan = 2 style = "vertical-align: middle;">
										<input type="hidden" value="${receipt.receipt_delstatus}" class="receipt_delstatus">
										<button class = "btn btn-success statusText" style = "width: 150px;" disabled> 결제 완료 </button>	
									</td>
								</tr>
								<tr>
									<td> 주문날짜 : ${receipt.receipt_orderdate} &nbsp;&nbsp;&nbsp; 주문번호 : ${receipt.receipt_id} </td>
								</tr>
							</table>
						</div>
					</div>
				</div>
				<!-- 주문 1 카드 table 종료 -->
				</c:forEach>
				
							
				
				<br><br>
				
				<!-- 더보기 button -->
				<div class = "more_button text-right">
					<button class = "btn btn-secondary" style = "width: 100px;" onclick="location.href='orderManage.do'">더보기</button>
				</div>
				<!-- 더보기 button 종료 -->
				
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