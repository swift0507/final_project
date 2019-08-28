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
		$(".prod_name").each(function(){
			var prod = this.innerHTML;
			var elem = this;
			//alert(prod);
			$.ajax({
				url : "/Final_Project/user/findProdName.do",
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
	$("#submit").on("click", function(){
		//alert($("#delstatus").val())
		$.ajax({
			url : "updateDelStatus.do",
			data : {delstatus : $("#delstatus").val(), receipt_id : "${receipt.receipt_id}"},
			type : "get",
			success : function(data){
				alert("수정되었습니다.")
				location.href = "orderManage.do";
			}
		})
	})
	//이제 주문취소만 하면 됌
	$("#cancel").on("click", function(){
		$.ajax({
			url : "deleteReceipt.do",
			data : {receipt_id : "${receipt.receipt_id}"},
			typr : "get",
			success : function(){
				alert("주문이 취소되었습니다.")
				location.href = "orderManage.do";
			}
		})
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
							배송 상태 변경 : 
							<select id="delstatus" class="custom-select-sm">
								<option value="1"> 결제 완료 </option>
								<option value="2"> 배송준비 중 </option>
								<option value="3"> 배송 중 </option>
								<option value="4"> 배송 완료 </option>
								<option value="7"> 교환 완료 </option>
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
				</table>
				<c:forEach var="receiptorder" items="${list}" varStatus="status">
				<table style = "width: 700px;">
					<tr class = "text-center" style = "background-color: lightgrey" >
						<th style = "width: 50px;"> 번호 </th>
						<th style = "width: 300px;" colspan = 2> 상품정보 </th>
						<th style = "width: 150px;"> 판매가 </th>
						<th style = "width: 50px;"> 수량 </th>
						<th style = "width: 150px;"> 합계 </th>
					</tr>
					
				    <tr>
				      <td rowspan = 3  class = "text-center"> ${status.index+1} </td>
				      <td rowspan = 3>
				      	<img src = "images/sk.png" class="${receiptorder.prod_id}" width = 100 height = 100>
				      </td>
				      <td style = "width: 25%;  visibility: hidden;" class="prod_name">${receiptorder.prod_id}</td>
				      <td rowspan = 3 class = "text-center">
				      	<h5>${receiptorder.order_price}</h5>
				      </td>
				      <td rowspan = 3 class = "text-center">
				      	${receiptorder.order_quantity}
				      </td>
				      <td rowspan = 3 class = "text-center">
				      	<h5>${receiptorder.order_price*receiptorder.order_quantity}</h5>
				      </td>
				    </tr>
				    <tr>
				      <td> 옵션 1 : ${receiptorder.order_opt} </td>
				    </tr>
				    <tr>
				      <td></td>
				    </tr>
				</table>
				<hr>
				<!-- 주문번호 1 table 종료-->
				</c:forEach>	
			
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
				
				<!-- 결제 정보 table -->
				<h5><b>결제 방법 및 결제 금액</b></h5>
				<table class = "table" style = "width: 700px;">
					<tr>
						<th style = "width: 200px;"> 주문번호 </th>
						<td style = "width: 500px; color: red;"> ${receipt.receipt_id} </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 결제일 </th>
						<td style = "width: 500px; color: red;"> ${receipt.receipt_orderdate} </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 상품가격 </th>
						<td style = "width: 600px; color: red;"> ${receipt.receipt_price} 원 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 배송비 </th>
						<td style = "width: 500px; color: red;"> ${receipt.receipt_fee} 원 </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 결제 방법 </th>
						<td style = "width: 500px; color: red;"> ${receipt.receipt_payoption} </td>
					</tr>
				</table>
				<!-- 배송 정보 table 종료 -->
				
				<!-- 주문취소 button -->
				<div class = "container text-right">
					<button class = "btn btn-secondary" id="cancel">주문 취소</button>
				</div>
				<!-- 주문취소 button 종료 -->
				
				<br><br>
				
				<!-- 확인 button -->
				<div class = "container text-center">
					<button class = "btn btn-secondary" id="submit">확인</button>
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