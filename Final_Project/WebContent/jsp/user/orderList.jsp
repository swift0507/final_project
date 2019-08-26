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
</head>
<script type="text/javascript">

	$(document).ready(function(){
		$(".receipt_delstatus").each(function(){
			var delstatus = parseInt($(this).val());
			var elem = $(this).parentsUntil("div").find($(".statusText"))
			if(delstatus ==0){
				elem.text("결제 대기")
				$(this).parentsUntil("div").find($(".conditionBtn")).html("<button class = 'btn btn-sm btn-danger cancelOrder'>주문취소</button>")
			}
			else if(delstatus ==1){
				elem.text("결제 완료")
			}
			else if(delstatus ==2){
				elem.text("배송 준비중")
			}
			else if(delstatus ==3){
				elem.text("배송 중")
			}
			else if(delstatus ==4){
				$(this).parentsUntil("div").find($(".conditionBtn")).html("<button class = 'btn btn-sm btn-danger finalizeOrder'>구매확정</button> <button class = 'btn btn-sm btn-danger changeOrder'>교환신청</button>")
				elem.text("배송 완료")
			}
			else if(delstatus ==5){
				elem.text("구매 확정")
			}
			else if(delstatus ==6){
				elem.text("교환 신청")
			}
			else if(delstatus ==7){
				elem.text("교환 완료")
			}
		})
		
		$(".cancelOrder").on("click", function(){
			var r = $(this).parentsUntil("div").find($(".receipt_id")).text().slice(8)
			var receipt_id = parseInt(r);
			alert(receipt_id)
		})
		$(".finalizeOrder").on("click", function(){
			var r = $(this).parentsUntil("div").find($(".receipt_id")).text().slice(8)
			var receipt_id = parseInt(r);
			alert(receipt_id)
		})
		$(".changeOrder").on("click", function(){
			var r = $(this).parentsUntil("div").find($(".receipt_id")).text().slice(8)
			var receipt_id = parseInt(r);
			alert(receipt_id)
			location.href = "changeOrder.do?receipt_id="+receipt_id;
		})
		
	})
</script>
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
				<table style = "width: 700px;">
					<tr>
						<td>
							<h5><b>주문 내역</b></h5>
						</td>
					</tr>
					<tr>
						<td class = "text-right">
							<button class = "btn btn-sm btn-secondary">전체</button>
							<button class = "btn btn-sm btn-secondary">1개월</button>
							<button class = "btn btn-sm btn-secondary">3개월</button>
							<button class = "btn btn-sm btn-secondary">6개월</button>
							<button class = "btn btn-sm btn-secondary">1년</button>
						</td>
					</tr>
					<tr>
						<td><hr></td>
					</tr>
				</table>
				<c:forEach var="receipt" items="${receiptList}">
				<div>
				<table style = "width: 700px;">
				    <tr style = "height: 40px;">
				      <th colspan = 3>
				      	${receipt.receipt_prod}
				      </th>
				      <th class = "text-right conditionBtn">
				      	<!-- <button class = "btn btn-sm btn-danger">주문취소</button> -->
				      </th>
				    </tr>
				    <tr>
				      <td rowspan = 3>
				      	<!--receipt에는 이미지가 없음 <img src = "images/sk.png" width = 100 height = 100> -->
				      </td>
				      <td> </td>
				      <td rowspan = 3>
				      	<h5>${receipt.receipt_price+receipt.receipt_fee}원</h5>
				      </td>
				      
				      <td rowspan = 3 class = "text-right">
				     	<input type="hidden" value="${receipt.receipt_delstatus}" class="receipt_delstatus">
				      	<button type="button" class="btn btn-ml btn-info statusText" disabled></button> 
				      </td>
				    </tr>
				    <tr>
				      <td> 주문날짜 : ${receipt.receipt_orderdate} </td>
				    </tr>
				    <tr>
				      <td class="receipt_id"> 주문번호 : ${receipt.receipt_id} </td>
				    </tr>
				</table>
				
				<br>
				<hr>
				</div>
				</c:forEach>
			<!-- 	
				<table style = "width: 700px;">
				    <tr height = 40>
				      <th colspan = 3>
				      	알록달록 캔들, 보라색 외 3개
				      </th>
				      <th class = "text-right">
				      	
				      </th>
				    </tr>
				    <tr>
				      <td rowspan = 3>
				      	<img src = "images/sk.png" width = 100 height = 100>
				      </td>
				      <td>  </td>
				      <td rowspan = 3>
				      	<h5>1조 2500억 원</h5>
				      </td>
				      
				      <td rowspan = 3 class = "text-right">
				      	<button type="button" class="btn btn-ml btn-success" disabled>구매 확정</button> 
				      </td>
				    </tr>
				    <tr>
				      <td> 주문날짜 : 2019-08-14 </td>
				    </tr>
				    <tr>
				      <td> 주문번호 : 123-456-78910 </td>
				    </tr>
				</table>
				<br>
				<hr> -->
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



