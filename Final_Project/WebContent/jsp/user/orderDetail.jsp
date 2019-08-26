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
	<style>
		text-center item_header {
			background-color: lightgrey;
		}
	</style>
	
	<script type="text/javascript">
	$(document).ready(function(){
		
		//마감날짜 설정
		var date = new Date($("#duedate").text());
		date.setDate(date.getDate()+7)
		var month = date.getMonth()+1
		var stringDate = date.getFullYear()+"-"+month+"-"+date.getDate();
		$("#duedate").text(stringDate);
		
		$(".prod_name").each(function(){
			var prod = this.innerHTML;
			var elem = this;
			//alert(prod);
			$.ajax({
				url : "findProdName.do",
				data : {prod_id : prod},
				type : "get",
				success : function(data){
					var id = "."+data.prod_id;
					//alert(data.prod_name);
					elem.innerHTML = data.prod_name
					elem.style.visibility=""
					$(id).attr("src", "../images/noimage.png")
				}
			})
		})
		
		$(".receiptOrder_price").each(function(){
			var num = parseInt($(this).parentsUntil("div").find(".prodnum").text())
			var totalprice = parseInt($(this).parentsUntil("div").find(".prodTotal").text())
			var eachprice = totalprice / num;
			$(this).text(eachprice+"원")
		})
		//배송비 한 쪽으로 쏠린거 해결 안됌 
		
		$("#check").on("click", function(){
			location.href="orderList.do"
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
							<span> 주문번호 : ${receipt.receipt_id} </span> &nbsp;&nbsp;&nbsp;
							<span> 주문일 : ${receipt.receipt_orderdate } </span>
							<hr> 
						</td>
					</tr>
				</table>
				
				<div> 
				<!-- 사장님별 결제화면 header table -->
				<table style = "width: 800px;">
					<tr>
						<td colspan = 4 style = "height: 50px;">
							<b>${receipt.sel_id} 사장님</b> 
							<input type="hidden" class="sel_id" value="${receipt.sel_id}">
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
				
				<!-- 사장님1 Component -->
				<c:forEach var="receiptOrder" items="${list}">
				<!-- 사장님별 장바구니 상품 table -->
				<div>
				<table style = "width: 800px;">
					<tr style = "height: 20px;">
						<td>
						<%-- <input type="hidden" class="basket_id" value="${recei.basket_id}"> --%>
						</td>
					</tr>	
				    <tr>
				      <td rowspan = 3 style = "width: 20%;">
				      	<%-- <input class="checkbox prodCheck" type="checkbox" value="${basket.prod_id}"> --%>
				      	&nbsp;&nbsp;&nbsp; <img src = "images/sk.png" class="${receiptOrder.prod_id}" width = 100 height = 100>
				      </td>
				      <td style = "width: 25%;  visibility: hidden;" class="prod_name"> ${receiptOrder.prod_id} </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5 class="receiptOrder_price">원</h5>
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 15%;">
				      	<h5 class="prodnum">${receiptOrder.order_quantity }</h5>
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5 class="prodTotal">${receiptOrder.order_price} 원</h5>
				      </td>
				    </tr>
				    <tr>
				      <td> ${receiptOrder.order_opt}</td>
				    </tr>
				    <tr>
				    </tr>
				    </table>
				    </div>
				    </c:forEach>
				<table style = "width: 800px;">
				    <tr style = "height: 20px;"></tr>
				    <tr class = "text-right" style = "background-color: lightgrey">
				      <td>배송비 </td>
				      <td colspan = 3></td>
				      <td class="eachFee">${receipt.receipt_fee} 원</td>
				    </tr>
				</table>
				<hr>
				<!-- 사장님별 장바구니 상품 table 2 종료 -->
				</div>
				<!-- 사장님1 Component 종료 -->
				
					
				
				
				<!-- 총 상품 금액 table -->
				<table style = "width: 800px;">
					<tr class = "text-right">
						<th colspan = 2 style = "width: 400px;">
						<th style = "width: 100px;"> 총 주문 금액  </th>
						<td style = "width: 200px;" id="payPrice"> ${receipt.receipt_price}원 </td>
					</tr>
					<tr class = "text-right">
						<th colspan = 2 style = "width: 400px;">
						<th style = "width: 100px;"> 배송비  </th>
						<td style = "width: 200px;" id="totalFee"> ${receipt.receipt_fee}원 </td>
					</tr>
					<tr style = "height: 10px">
						<td colspan = 4>
							<hr>
						</td>
					</tr>
					<tr style = "font-size: 20px;">
						<th colspan = 2 class = "text-left"> 결제 금액 </th>
						
						<th colspan = 2 class = "text-right" id= "totalPayPrice"> ${receipt.receipt_price+receipt.receipt_fee}원</th>
					</tr>
				</table>
				
				<!-- 총 상품 금액 table 종료 -->
				
				<br><br>
				
				<!-- 주문자 정보 table -->
				<h5><b>주문자 정보</b></h5>
				<table class = "table" style = "width: 700px;">
					<tr>
						<th style = "width: 100px;"> 이름 </th>
						<td style = "width: 600px;"> ${member.mem_name} </td>
					</tr>
					<tr>
						<th style = "width: 100px;"> 연락처 </th>
						<td style = "width: 600px;"> ${member.mem_phone} </td>
					</tr>
				</table>
				
				<!-- 주문자 정보 table 종료 -->
				
				<br>
				
				<!-- 배송 정보 table -->
				<h5><b>배송 정보</b></h5>
				<table class = "table" style = "width: 700px;">
					<tr>
						<th style = "width: 200px;"> 이름 </th>
						<td style = "width: 500px;"> ${receipt.receipt_name} </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 주소 </th>
						<td style = "width: 500px;"> ${receipt.receipt_addr} </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 연락처 </th>
						<td style = "width: 600px;"> ${receipt.receipt_phone} </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 배송시 요청사항 </th>
						<td style = "width: 500px;"> ${receipt.receipt_request} </td>
					</tr>
				</table>
				
				<!-- 배송 정보 table 종료 -->
				
				<br>
				
				<!-- 입금 정보 table -->
				<h5><b>입금 정보</b></h5>
				<table class = "table" style = "width: 700px;">
					<tr>
						<th style = "width: 200px;"> 은행 </th>
						<td style = "width: 500px; color: red;"> ${seller.sel_bank}은행 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 계좌번호 </th>
						<td style = "width: 500px; color: red;"> ${seller.sel_account} </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 예금주 </th>
						<td style = "width: 600px; color: red;"> ${seller.sel_id} </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 금액 </th>
						<td style = "width: 500px; color: red;"> ${receipt.receipt_price+receipt.receipt_fee}원 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 입금 마감 </th>
						<td style = "width: 500px; color: red;" id="duedate"> ${receipt.receipt_orderdate} </td>
					</tr>
				</table>
				<!-- 배송 정보 table 종료 -->
				
				<br>
				<!-- 확인 button -->
				<div class = "container text-center">
					<button class = "btn btn-secondary" id="check">확인</button>
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



