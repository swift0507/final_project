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
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<style>
		text-center item_header {
			background-color: lightgrey;
		}
	</style>
	
	<script type="text/javascript">
	$(document).ready(function(){
		var addrCheck = false;
		
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
					$(id).attr("src", "/Final_Project/getRepresentivePic.do?prod_id="+data.prod_id)
				}
			})
		})
		
		//개수에 따른 가격설정
		$(".basket_price").each(function(){
			var eachprice = parseInt($(this).closest("h5").text());
			var number = parseInt($(this).parent().parent().find($(".prodnum")).text());
			var totalprice = eachprice * number
			$(this).parentsUntil("table").find($(".prodTotal")).text(totalprice+" 원")
		})
		
		//결제금액계산
		var payPrice = 0
		$(".prodTotal").each(function(){
			payPrice += parseInt($(this).text())
		})
		$("#payPrice").text(payPrice+" 원")
		
		//총 배송비 계산
		var totalFee = 0
		$(".eachFee").each(function(){
			totalFee +=parseInt($(this).text())
		})
		$("#totalFee").text(totalFee+" 원")
		
		//총 결제금액 계산
		var totalPayPrice = payPrice + totalFee
		$("#totalPayPrice").text(totalPayPrice+" 원")
		
		//주문자정보와동일 
		$("#sameAddr").on("click", function(){
			if($(this).is(":checked")){
				//alert("${member.mem_name}")
				$("#receipt_name").val("${member.mem_name}")
				$("#receipt_zipcode").val("${member.mem_zipcode}")
				$("#addr").val("${member.mem_addr}")
				$("#remainAddr").val("${member.mem_remainaddr}")
				$("#receipt_phone").val("${member.mem_phone}")
				addrCheck = true;
			}
			else{
				$("#receipt_name").val("")
				$("#receipt_zipcode").val("")
				$("#addr").val("")
				$("#remainAddr").val("")
				$("#receipt_phone").val("")
				addrCheck = false;
			}
			})
		
			$("#findZipcode").on("click",function(){
	    	     new daum.Postcode({
	    	        oncomplete: function(data) {
	    	           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	    	           // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	    	           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	    	           var addr = ''; // 주소 변수

	    	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	    	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	    	                    addr = data.roadAddress;
	    	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
	    	                    addr = data.jibunAddress;
	    	                }
	    	               
	    	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	    	                document.getElementById('receipt_zipcode').value = data.zonecode;
	    	                document.getElementById("addr").value = addr;
	    	                //$("#mem_zipcode").attr("readonly", "readonly");
	    	                //$("#mem_addr").attr("readonly", "readonly");
	    	                
	    	                // 커서를 상세주소 필드로 이동한다.
	    	                document.getElementById("remainAddr").focus();
	    	                addrCheck = true;
	    	            }
	    	        }).open();
	    	});
		
		//여기서 해야할 것은 receipt객체와 receiptOrder 객체를 만드는 것. 
		//우선 receiptOrder부터 만들기
		
		
		$("#order").on("click", function(){
			//줘야하는 데이터는 사장님 id와 basket_id로 하나의 receipt과 주문 상품 개수에 맞는 receiptOrder를 만들어야 한다.
			
			//유효성검증
			if($("#receipt_name").val()==""){
				alert("이름을 입력해주세요.")
				$("#receipt_name").focus();
				return
			}
			else if(!addrCheck){
				alert("우편번호를 입력해주세요")
				$("#findZipcode").focus();
				return
			}
			else if($("#remainAddr").val()==""){
				alert("나머지 주소를 입력해주세요")
				$("#remainAddr").focus();
				return
			}
			else if($("#receipt_phone").val()==""){
				alert("연락처를 입력해주세요")
				$("#receipt_phone").focus();
				return
			}
			else if($("#receipt_request").val()==""){
				alert("요구사항을 입력해주세요")
				$("#receipt_request").focus();
				return
			}
			else if($("#receipt_account").val()==""){
				alert("계좌번호를 입력해주세요")
				$("#receipt_account").focus();
				return
			}
			else if($("#receipt_bank").val()==""){
				alert("은행을 선택해주세요")
				$("#receipt_bank").focus();
				return
			}
			else if($("#receipt_depositor").val()==""){
				alert("예금주를 입력해주세요")
				$("#receipt_depositor").focus();
				return
			}
			
			//받아오는 receipt_id
			var idArray = new Array();
			
			$(".sel_id").each(function(){
				//여기서 가져갈 건 배송비와 가격,사장님id 총가격임 여기는 사장님별 위치
				//사장님id
				var sel_id = $(this).val();
				
				//상품
				var baskets = new Array();
				
				//배송비
				var fee = 0;
				fee = parseInt($(this).parentsUntil("div").siblings().find($(".eachFee")).text())
				
				//총 가격 총 가격은 합계를 합해서 가져온다. 
				var receiptPrice = 0;
				$(this).parentsUntil("div").siblings().find($(".prodTotal")).each(function(){
					receiptPrice += parseInt($(this).text());
				})
				
				//상품이름설정
				var receipt_prod;
				var prodLength = $(this).parentsUntil("div").siblings().find($(".prod_name")).length;
				//$(this).parentsUntil("div").siblings().find($(".prod_name")).first().text()
				if(prodLength == 1){
					receipt_prod = $(this).parentsUntil("div").siblings().find($(".prod_name")).text()
				}
				else{
					prodLength--;
					receipt_prod = $(this).parentsUntil("div").siblings().find($(".prod_name")).first().text() + " 외 " + prodLength +"개" 
				}
				
				//사장님별 상품의 내용을 담을 곳 
				$(this).parentsUntil("div").siblings().find($(".basket_id")).each(function(){
					//alert($(this).val())
					baskets.push($(this).val());
				})
				
				//상품별 개수 인덱스로 구분
				var prodnum = new Array();
				$(this).parentsUntil("div").siblings().find($(".prodnum")).each(function(){
					prodnum.push($(this).text())
				})
				
				//주소 합치기
				var addr = $("#addr").val() + " " + $("#remainAddr").val()
				
				//값을 다 담았고 ajax로 보내보기
				$.ajax({
					url : "order.do",
					data: {prodnum : prodnum, sel_id : sel_id, baskets : baskets, receipt_price : receiptPrice, 
						receipt_fee : fee, mem_id : "${member.mem_id}", receipt_prod : receipt_prod,
						receipt_name : $("#receipt_name").val(), receipt_zipcode : $("#receipt_zipcode").val(),
						receipt_addr : addr, receipt_phone : $("#receipt_phone").val(), receipt_request : $("#receipt_request").val(),
						receipt_payoption : "무통장", receipt_bank : $("#receipt_bank").val(), receipt_account : $("#receipt_account").val(),
						receipt_depositor : $("#receipt_depositor").val()},
					type : "post",
					async : false,
					success : function(data){
						var id = data;
						//alert(id);
						idArray.push(id)
					}
				})
			})
			//console.log(idArray)
			var query = ""
			for(var receipt_id of idArray){
				query += "receipt_id="+receipt_id+"&"
			}
			location.href = "payComplete.do?"+query
			
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
				<!-- 결제화면 header table -->
				<table style = "width: 800px;">
					<tr style = "height: 30px;"></tr>
					<tr>
						<td colspan = 4>
							<h5><b>결제화면</b></h5>
							<hr>
						</td>
					</tr>
				</table>
				<!-- 결제화면 header table 종료 -->

				<c:forEach var="map" items="${list}">
				<div> 
				<!-- 사장님별 결제화면 header table -->
				<table style = "width: 800px;">
					<tr>
						<td colspan = 4 style = "height: 50px;">
							<b>${map.seller.sel_id} 사장님</b> 
							<input type="hidden" class="sel_id" value="${map.seller.sel_id}">
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
				<c:forEach var="basket" items="${map.list}">
				<!-- 사장님별 장바구니 상품 table -->
				<table class="${basket.sel_id}" style = "width: 800px;">
					<tr style = "height: 20px;">
						<td>
						<input type="hidden" class="basket_id" value="${basket.basket_id}">
						</td>
					</tr>	
				    <tr>
				      <td rowspan = 3 style = "width: 20%;">
				      	<%-- <input class="checkbox prodCheck" type="checkbox" value="${basket.prod_id}"> --%>
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
				      	<h5 class="prodTotal"></h5>
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
						<td style = "width: 200px;" id="payPrice">   </td>
					</tr>
					<tr class = "text-right">
						<th colspan = 2 style = "width: 400px;">
						<th style = "width: 100px;"> 배송비  </th>
						<td style = "width: 200px;" id="totalFee">  </td>
					</tr>
					<tr style = "height: 10px">
						<td colspan = 4>
							<hr>
						</td>
					</tr>
					<tr style = "font-size: 20px;">
						<th colspan = 2 class = "text-left"> 결제 예정 금액 </th>
						
						<th colspan = 2 class = "text-right" id= "totalPayPrice"> </th>
					</tr>
				</table>
				<!-- 총 상품 금액 table 종료 -->
				
				<br><br>
			
				<!-- 주문자 정보 table -->
				<h5><b>주문자 정보</b></h5>
				<table class = "table" style = "width: 800px;">
					<tr>
						<th style = "width: 200px;"> 이름 </th>
						<td style = "width: 600px;"> ${member.mem_name} </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 연락처 </th>
						<td style = "width: 600px;"> ${member.mem_phone} </td>
					</tr>
				</table> 
				<!-- 주문자 정보 table 종료 -->
			
				<br><br>
			
				<!-- 배송 정보 table -->
				<h5><b>배송 정보</b></h5>
				<table class = "table" style = "width: 800px;">
					<tr>
						<td colspan = 3 class = "text-right">
							<input class="checkbox" type="checkbox" value="" id="sameAddr"> &nbsp; 주문자 정보와 동일
						</td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 이름 </th>
						<td style = "width: 450px;"> <input type="text" id="receipt_name" class="form-control" placeholder="이름"> </td>
						<td style = "width: 200px;"> </td>
					</tr>
					<tr style = "height: 50px;">
						<th style = "width: 300px;">우편번호</th>
						<td style = "width: 150px;">
							<input type = "text" class = "form-control" id="receipt_zipcode" readonly="readonly" placeholder = "우편번호">
						</td>
						<td style = "width: 150px;">
							<button class = "btn btn-secondary btn-block" id="findZipcode">우편번호 검색</button>
						</td>
					</tr>
					<tr>
						
						<th style = "width: 200px;"> 주소 </th>
						<td style = "width: 400px;"> <input type="text" class="form-control" id="addr" readonly="readonly" placeholder="주소"> </td>
						<td style = "width: 200px;"></td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 나머지 주소</th>
						<!-- 주소 합쳐서 receipt_addr로 보내야 한다.  -->
						<td style = "width: 400px;"> <input type="text" class="form-control" id="remainAddr" placeholder="나머지 주소"> </td>
						<td style = "width: 200px;"> </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 연락처 </th>
						<td style = "width: 400px;"> <input type="text" class="form-control" id="receipt_phone" placeholder="ex) 01000000000"> </td>
						<td style = "width: 200px;"> </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 배송시 요청사항 </th>
						<td style = "width: 400px;"> <input type="text" class="form-control" id="receipt_request" placeholder="40자 이내"> </td>
						<td style = "width: 200px;"> </td>
					</tr>
				</table>
				<!-- 배송 정보 table 종료 -->
			
				<br><br>
				
				<!-- 무통장입금 table -->
				<table class = "table" style = "width: 800px;">
					<tr>
						<th style = "width: 200px;"> 입금계좌 입력 </th>
						<td colspan = 2 style = "width: 400px;">
							<input type="text" class="form-control" id="receipt_account" placeholder="입금계좌"> 	
						</td>
						<td style = "width: 200px;">
							<select id="receipt_bank">
								<option value="우리">우리</option>
								<option value="신한">신한</option>
								<option value="국민">국민</option>
							</select> 
						</td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 예금주명 </th>
						<td colspan = 2 style = "width: 400px;"> 
							<input type="text" class="form-control" id="receipt_depositor" placeholder="예금주"> 	
						</td>
						<td style = "width: 200px;"> </td>
					</tr>
					<tr>
						<th style = "width: 200px;"> 입금 기한 </th>
						<td colspan = 3>
							주문일로부터 7일 이내	
						</td>
					</tr>
				</table>
				<!-- 무통장입금 table 종료 -->
			
				<!-- 확인 button -->
				<div class = "container text-center">
					<br><br>
					<button class = "btn btn-secondary" id="order" style = "width: 150px;">주문하기</button>
					<button class = "btn btn-secondary" style = "width: 150px;">뒤로가기</button>
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



