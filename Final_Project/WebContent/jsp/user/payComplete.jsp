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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		var date = new Date();
		
		
		date.setDate(date.getDate()+7)
		var month = date.getMonth()+1
		var stringDate = date.getFullYear()+"-"+month+"-"+date.getDate();
		$(".sel_id").each(function(){
			var elem = $(this)
			//alert(elem.val())
			$.ajax({
				url : "findSeller.do",
				data : {sel_id : elem.val()},
				type: "get",
				success : function(data){
					elem.parentsUntil("table").siblings().find($(".sel_bank")).text("은행 : "+data.sel_bank)
					elem.parentsUntil("table").siblings().find($(".sel_account")).text("계좌번호 : "+data.sel_account)
					elem.parentsUntil("table").siblings().find($(".sel_depositor")).text("예금주 : "+data.sel_depositor)
				}
			})
			var price = parseInt(elem.parentsUntil("table").siblings().find($(".receipt_price")).val())
			var fee = parseInt(elem.parentsUntil("table").siblings().find($(".receipt_fee")).val())
			var totalpay = price+fee;
			elem.parentsUntil("table").siblings().find($(".totalpay")).text("금액 : "+totalpay+"원")
			elem.parentsUntil("table").siblings().find($(".duedate")).text("입금마감일 : "+stringDate)
		})
		
		$("#orderList").on("click", function(){
			location.href = "orderList.do"
		})
		$("#main").on("click", function(){
			location.href = "/Final_Project/main.do"
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
				<c:forEach var="receipt" items="${receiptList}">
				<table style = "width: 700px; margin-left:auto; margin-right:auto;">
					<tr>
						<th rowspan = 3 class = "align-top"> 배송정보 </th>
						<td colspan = 2> ${receipt.receipt_name} </td>
					</tr>
					<tr>
						<td> ${receipt.receipt_phone} </td>
					</tr>
					<tr>
						<td> ${receipt.receipt_addr}</td>
					</tr>
					
					<tr style = "height: 30px;"></tr>
				
					<tr>
						<th rowspan="3" class = "align-top"> 결제정보  <input type="hidden" class="sel_id" value="${receipt.sel_id}"></th>
						<td>${receipt.receipt_prod}</td>
					</tr>
					<tr>
						<td><input type="hidden" class="receipt_price" value="${receipt.receipt_price}">작품금액 : ${receipt.receipt_price}원</td>
					</tr>
					<tr>
						<td><input type="hidden" class="receipt_fee" value="${receipt.receipt_fee}">배송비 : ${receipt.receipt_fee}원</td>
					</tr>
					
					<tr style = "height: 30px;"></tr>
					
					<tr>
						<th rowspan = 5 class = "align-top"> 입금정보 </th>
						<td class="sel_bank">  </td>
					</tr>
					<tr>
						<td class="sel_account">  </td>
					</tr>
					<tr>
						<td class="sel_depositor"> </td>
					</tr>
					<tr>
						<td class="totalpay"> 금액 : 1조 2500억원</td>
					</tr>
					<tr>
						<td class="duedate"> 입금 마감일 : 2019-08-21</td>
					</tr>
					<tr>
						<td><hr></td>
					</tr>
				</table>
				</c:forEach>
				
				<button class="btn btn-sm btn-secondary" type="button" id="orderList">주문내역 / 배송조회 </button>
				<button class="btn btn-sm btn-secondary" type="button" id="main">쇼핑 계속하기 </button>
				
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