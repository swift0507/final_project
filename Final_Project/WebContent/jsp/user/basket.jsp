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
					elem.innerHTML = "상품명 : "+ data.prod_name
					elem.style.visibility=""
					$(id).attr("src", "../images/noimage.png")
				}
			})
		})
		
		//
		$(".basket_price").each(function(){
			//alert($(this).nextUntil("h5").text())
			//alert(parseInt($(this).closest("h5").text()))
			var eachprice = parseInt($(this).closest("h5").text());
			//alert(eachprice)
			$(this).parent().parent().find($(".prodnum")).text()
			
			var number = parseInt($(this).parent().parent().find($(".prodnum")).text());
			//alert(number)
			var totalprice = eachprice * number
			$(this).closest($(".prodTotal").text(totalprice+" 원"))
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
				<!-- 장바구니 header table -->
				<table style = "width: 800px;">
					<tr style = "height: 30px;"></tr>
					<tr>
						<td colspan = 5>
							<h5><b>장바구니</b></h5>
							<hr>
						</td>
					</tr>
					<tr style = "background-color: lightgrey" >
						<th style = "width: 20%;"> 
							&nbsp;<input class="checkbox text-left" type="checkbox" value="" id="checkAll">&nbsp;&nbsp;&nbsp; 모두 선택
  						</th>
						<th class = "text-center" style = "width: 25%;"> 상품정보 </th>
						<th class = "text-center" style = "width: 20%;"> 판매가 </th>
						<th class = "text-center" style = "width: 15%;"> 수량 </th>
						<th class = "text-center" style = "width: 20%;"> 합계 </th>
					</tr>
				</table>
				<!-- 장바구니 header table 종료 -->
				
			    
				
				<c:forEach var="map" items="${list}">
				<!-- 사장님1 Component -->
				<div class = "seller1"> 
				<!-- 사장님별 장바구니 header table -->
				<table style = "width: 800px;">
					<tr>
						<td colspan = 5 style = "height: 50px;">
							<input class="checkbox" type="checkbox" value="" id="checkSeller1">&nbsp;&nbsp;&nbsp; <b>${map.list[0].sel_id} 사장님</b> 
						</td>
					</tr>
				</table>
				<c:forEach var="basket" items="${map.list}">
				<!-- 사장님별 장바구니 상품 table 2 -->
				<table class="product" style = "width: 800px;">
					<tr style = "height: 20px;">
						<td>
						<input type="hidden" class="prod_id" value="${basket.prod_id}">
						<input type="hidden" value="${basket.basket_id}">
						</td>
					</tr>	
				    <tr>
				      <td rowspan = 3 style = "width: 20%;">
				      	<input class="checkbox" type="checkbox" value="" id="check2">
				      	&nbsp;&nbsp;&nbsp; <img src = "images/sk.png" class="${basket.prod_id}" width = 100 height = 100>
				      </td>
				      <td style = "width: 25%;  visibility: hidden;" class="prod_name"> ${basket.prod_id} </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5 class="basket_price">${basket.basket_price} 원</h5>
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 15%;">
				      	<h5 class="prodnum">1</h5>
				      </td>
				      <td rowspan = 3 class = "text-center" style = "width: 20%;">
				      	<h5 class="prodTotal">합계금액</h5>
				      </td>
				    </tr>
				    <tr>
				      <td> ${basket.basket_option}</td>
				    </tr>
				    <tr>
				    </tr>
				    </c:forEach>
				    <tr style = "height: 20px;"></tr>
				    <tr class = "text-right" style = "background-color: lightgrey">
				      <td>배송비 </td>
				      <td colspan = 3><input type="hidden" value="${map.seller.sel_free}"></td>
				      <td class="eachFee">${map.seller.sel_fee} 원</td>
				    </tr>
				</table>
				<hr>
				<!-- 사장님별 장바구니 상품 table 2 종료 -->
				</div>
				<!-- 사장님1 Component 종료 -->
				</c:forEach>
				
				
				<!-- 총 상품 금액 table -->
				<table style = "width: 800px;">
					<tr class = "text-right">
						<th colspan = 2 style = "width: 400px;">
						<th style = "width: 100px;"> 총 주문 금액  </th>
						<td style = "width: 200px;" class="payPrice"> 5조  </td>
					</tr>
					<tr class = "text-right">
						<th colspan = 2 style = "width: 400px;">
						<th style = "width: 100px;"> 배송비  </th>
						<td style = "width: 200px;" class="totalFee"> 6000 원 </td>
					</tr>
					<tr style = "height: 10px">
						<td colspan = 4>
							<hr>
						</td>
					</tr>
					<tr style = "font-size: 20px;">
						<th colspan = 2 class = "text-left"> 결제 예정 금액 </th>
						
						<th colspan = 2 class = "text-right totalPayPrice"> 5조 6000원</th>
					</tr>
				</table>
				<!-- 총 상품 금액 table 종료 -->
				
				<br><br>
			
				<!-- 확인 button -->
				<div class = "container text-center">
					<button class = "btn btn-secondary" style = "width: 200px;">전체 구매</button>
					<button class = "btn btn-secondary" style = "width: 200px;">선택 구매</button>
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



