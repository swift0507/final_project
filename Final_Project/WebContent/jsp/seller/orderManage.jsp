<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<script>
	$(document).ready(function(){	
		
		var sel_id = "${ loginUser }";
		
		function delstatus(status) {
			if(status == 0) return "결제대기";
			else if(status == 1) return "결제완료";
			else if(status == 2) return "배송준비중";
			else if(status == 3) return "배송중";
			else if(status == 4) return "배송완료";
			else if(status == 5) return "구매확정";
			else if(status == 6) return "교환신청";
			else return "교환완료";
		}
		
		function htmlText(data, i) {
			var html = "";
			html += '<table class = "mt-7" style = "width: 700px;">';
			html += '<tr><td style = "width: 55%;"><h5><b>주문 상품 정보</b></h5></td>';
			html += '<td class = "text-right" colspan = 2 style = "width: 45%;">';
			html += '<button class = "btn-secondary">주문 내역 상세보기</button><button class = "btn-danger">주문 취소</button></td></tr>';
					
			html += '<tr style = "height: 20px;"><td colspan = 3></td></tr>';
			
			html += '<tr><th>' + data.receipt[i].receipt_prod + '</th><th class = "text-center" style = "background-color: lightgrey;">결제 금액</th>';
			html += '<th class = "text-center" style = "background-color: lightgrey;">결제 / 배송 상태</th></tr>';
				
			html += '<tr><td> <b>주문날짜 :</b>' + data.receipt[i].receipt_orderdate + '</td><td class = "text-center align-middle" rowspan = 3> <h5><b>' + data.receipt[i].receipt_price + '원</b></h5> </td>';
			html += '<td class = "text-center align-middle" rowspan = 3><button type="button" class="btn btn-ml btn-success" disabled>' + delstatus(data.receipt[i].receipt_delstatus) + '</button></td></tr>';
			html += '<tr><td> <b>주문번호 :</b>' + data.receipt[i].receipt_id + '</td></tr><tr><td colspan = 2> <b>주문자명 :</b>' + data.receipt[i].mem_id + '</td></tr>';
			html += '<tr style = "height: 30px;"><td colspan = 3><hr></td></tr><tr><td style = "width: 55%;"><h5><b>택배 수신인 정보</b></h5></td><td colspan = 2 style = "width: 45%;"></tr>';
			html += '<tr><td> <b>이름 :</b>' + data.receipt[i].receipt_name + '</td><td colspan = 2 rowspan = 2> <b>거래방법 : </b>' + data.receipt[i].receipt_payoption + '</td></tr><tr><td> <b>주소 :</b>' + data.receipt[i].receipt_addr + '</td></tr>';
			html += '<tr><td> <b>휴대폰 번호 :</b>' + data.receipt[i].receipt_phone + '</td><td colspan = 2></td></tr><tr><td> <b>배송지 요청사항 :</b>' + data.receipt[i].receipt_request + '</td><td colspan = 2></td></tr></table><hr>' 
				
			return html;
		}
		
		var page = 1;
		
		function newReceipt(sel_id, page) {
			$.ajax({
		        type		: "POST",
		        url 		: "newReceiptList.do",
		        data		:  {sel_id : sel_id, page : page},
		        success		: function(data) {	 
		        	var newHtml = "";

		        	for(var i = 0; i < data.receipt.length; i++) {
		        		newHtml += htmlText(data, i);
		        		console.log("htmlText : " + htmlText(data, i));
		        	}
		        	console.log("length : " + data.receipt.length);

		        	$('#newReceipt').html(newHtml);
		        }
			});
		}
		
		function deliveryReceipt(sel_id, page) {
			$.ajax({
		        type		: "POST",
		        url 		: "deliveryReceiptList.do",
		        data		:  {sel_id : sel_id, page : page},
		        success		: function(data) {	   
					var deliveryHtml = "";

		        	for(var i = 0; i < data.receipt.length; i++) {
		        		deliveryHtml += htmlText(data, i);
		        	}
		        	console.log("length : " + data.receipt.length);
		        	console.log("deliveryHtml : " + deliveryHtml);

		        	$('#newReceipt').html(deliveryHtml);
		        }
			});
		}
		
		function completedReceipt(sel_id, page) {
			$.ajax({
		        type		: "POST",
		        url 		: "completedReceiptList.do",
		        data		:  {sel_id : sel_id, page : page},
		        success		: function(data) {	   
					var completedHtml = "";

		        	for(var i = 0; i < data.receipt.length; i++) {
		        		completedHtml += htmlText(data, i);
		        	}
		        	
		        	$('#newReceipt').html(completedHtml);
		        }
			});
		}
		
		function applyReceipt(sel_id, page) {
			$.ajax({
		        type		: "POST",
		        url 		: "applyReceiptList.do",
		        data		:  {sel_id : sel_id, page : page},
		        success		: function(data) {	   
					var applyHtml = "";
					
		        	for(var i = 0; i < data.receipt.length; i++) {
		        		applyHtml += htmlText(data, i);
		        	}
		        	
		        	$('#newReceipt').html(applyHtml);
		        }
			});
		}
		
		function exchangeReceipt(sel_id, page) {
			$.ajax({
		        type		: "POST",
		        url 		: "exchangeReceiptList.do",
		        data		:  {sel_id : sel_id, page : page},
		        success		: function(data) {	   
					var exchangeHtml = "";

		        	for(var i = 0; i < data.receipt.length; i++) {
		        		exchangeHtml += htmlText(data, i);
		        	}
		        	
		        	$('#newReceipt').html(exchangeHtml);
		        }
			});
		}
		
		
		
		var totalBoards;
		var status = "";
		var boardsPerPage = 5;    // 한 페이지에 나타낼 데이터 수
	    var offset = 5;        // 한 화면에 나타낼 페이지 수
		
		totalBoards = ${ newTotalBoards };
		newReceipt(sel_id, page);
		if(totalBoards != 0)
			paging(totalBoards, boardsPerPage, offset, 1, "new");
		
		$("#new-tab").on("click", function() {
			$("#myTabContent div table").empty();
			$("#myTabContent div nav").empty();
			totalBoards = ${ newTotalBoards };
			newReceipt(sel_id, page);
			status = "new";
			if(totalBoards != 0)
				paging(totalBoards, boardsPerPage, offset, 1, status);
		});
		
		$("#delivery-tab").on("click", function() {
			$("#myTabContent div table").empty();
			$("#myTabContent div nav").empty();
			totalBoards = ${ deliveryTotalBoards };
			deliveryReceipt(sel_id, page);
			status = "delivery";
			if(totalBoards != 0)
				paging(totalBoards, boardsPerPage, offset, 1, status);
		});
		
		$("#completed-tab").on("click", function() {
			$("#myTabContent div table").empty();
			$("#myTabContent div nav").empty();
			totalBoards = ${ completedTotalBoards };
			completedReceipt(sel_id, page);
			status = "completed";
			if(totalBoards != 0)
				paging(totalBoards, boardsPerPage, offset, 1, status);
		});
		
		$("#apply-tab").on("click", function() {
			$("#myTabContent div table").empty();
			$("#myTabContent div nav").empty();
			totalBoards = ${ applyTotalBoards };
			applyReceipt(sel_id, page);
			status = "apply";
			if(totalBoards != 0)
				paging(totalBoards, boardsPerPage, offset, 1, status);
		});
		
		$("#exchange-tab").on("click", function() {
			$("#myTabContent div table").empty();
			$("#myTabContent div nav").empty();
			totalBoards = ${ exchangeTotalBoards };
			exchangeReceipt(sel_id, page);
			status = "exchange";
			if(totalBoards != 0)
				paging(totalBoards, boardsPerPage, offset, 1, status);
		});
		
	    
	    function paging(totalBoards, boardsPerPage, offset, current, status) {

	        var last = Math.ceil(totalBoards / boardsPerPage);    // 총 페이지 수
	        var pageGroup = Math.ceil(current / offset);    // 페이지 그룹
	        
	        var end = pageGroup * offset;    // 화면에 보여질 마지막 페이지 번호
	        if(end > last)
	            end = last;
	        var start = end - (offset - 1);    // 화면에 보여질 첫번째 페이지 번호
	        if(start < 1)
	        	start = 1;
	        var next = end + 1;
	        var prev = start - 1;
	        var pagingLayout = "";
	        
	        pagingLayout += '<ul class="pagination justify-content-center">';
	        if(prev > 0) {
	        	pagingLayout += '<li class="page-item"><a class="page-link" id="1"><span>&laquo;</span></a></li>';
	            pagingLayout += '<li class="page-item"><a class="page-link" id=' + prev + '>이전</a></li>';
	        }
	        else {
	        	pagingLayout += '<li class="page-item disabled"><a class="page-link" id="1"><span>&laquo;</span></a></li>';
	            pagingLayout += '<li class="page-item disabled"><a class="page-link" id=' + prev + '>이전</a></li>';
	        }
	        
	        for(var i = start; i <= end; i++){       
	        	if(i == current) {
	            	pagingLayout += '<li class="page-item active">';
	            	pagingLayout += '<span class="page-link" id=' + current + '>' + current + '<span class="sr-only">(current)</span></span>';
	            	pagingLayout += '</li>';
	            }
					
				else {
					pagingLayout += '<li class="page-item">';
					pagingLayout += '<a class="page-link" id=' + i  + '>' + i  + '</a>';
					pagingLayout += '</li>';
				}
	        }
	        
	        if((pageGroup * offset) >= last) {
	            pagingLayout += '<li class="page-item disabled"><a class="page-link" id=' + next + '>다음</a></li>';
	            pagingLayout += '<li class="page-item disabled"><a class="page-link" id=' + last + '><span>&raquo;</span></a></li>';
	        }
	        else {
	        	pagingLayout += '<li class="page-item"><a class="page-link" id=' + next + '>다음</a></li>';
	        	pagingLayout += '<li class="page-item"><a class="page-link" id=' + last + '><span>&raquo;</span></a></li>';
	        }
	        pagingLayout += '</ul>';
	            
	        $("#newPaging").html(pagingLayout);    // 페이지 목록 생성
	        /* $("#deliveryPaging").html(pagingLayout);    // 페이지 목록 생성
	        $("#completedPaging").html(pagingLayout);    // 페이지 목록 생성
	        $("#applyPaging").html(pagingLayout);    // 페이지 목록 생성
	        $("#exchangePaging").html(pagingLayout);    // 페이지 목록 생성 */
	       
	        $(".page-link").on("click", function() {
				var CurrentPage = $(this).attr('id');
				if(status == "new")	newReceipt(sel_id, CurrentPage);
				else if (status == "delivery") deliveryReceipt(sel_id, CurrentPage);
				else if (status == "completed")	completedReceipt(sel_id, CurrentPage);
				else if (status == "apply") applyReceipt(sel_id, CurrentPage);
				else exchangeReceipt(sel_id, CurrentPage);
				paging(totalBoards, boardsPerPage, offset, CurrentPage, status);
			});
		
	    };
	    
	});
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
			
				<table style = "width: 700px;">
					<tr style = "height: 30px;"></tr>
					<tr>
						<td>
							<h5><b>주문 관리</b></h5>
							<hr>
						</td>
					</tr>
					<tr>
						<td class = "text-right">
							<button class = "btn-secondary">1개월</button>
							<button class = "btn-secondary">3개월</button>
							<button class = "btn-secondary">6개월</button>
							<button class = "btn-secondary">12개월</button>
							<button class = "btn-secondary">전체</button>
						</td>
					</tr>
					
					<tr style = "height: 20px;"></tr>
				
				</table>
			
			
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item">
						<a class="nav-link active" id="new-tab" data-toggle="tab" href="#data1" role="tab"> 신규 주문 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="delivery-tab" data-toggle="tab" href="#data2" role="tab"> 배송 중 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="completed-tab" data-toggle="tab" href="#data3" role="tab"> 배송 완료 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="apply-tab" data-toggle="tab" href="#data4" role="tab"> 교환 신청 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="exchange-tab" data-toggle="tab" href="#data5" role="tab"> 교환 완료 </a>
					</li>
				</ul>
				
				<div class="tab-content" id="myTabContent">
				
					<!-- tab 1 area -->
					<div class="tab-pane fade show active" role="tabpanel">
					
						<!-- 주문 상품 table 1 -->
						<table class = "mt-3" style = "width: 700px;" id="newReceipt">
							<!-- <tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td class = "text-right" colspan = 2 style = "width: 45%;">
									<button class = "btn-secondary">주문 내역 상세보기</button>
									<button class = "btn-danger">주문 취소</button>
								</td>
							</tr>
							
							<tr style = "height: 20px;">
								<td colspan = 3></td>
							</tr>
							
							<tr>
								<th> 알록달록 캔들 그 외 3개 </th>
								<th class = "text-center" style = "background-color: lightgrey;"> 
									결제 금액
								</th>
								<th class = "text-center" style = "background-color: lightgrey;">
									결제 / 배송 상태
								</th>
							</tr>
							<tr>
								<td> <b>주문날짜 :</b> 2019-08-27 </td>
								<td class = "text-center align-middle" rowspan = 3> <h5><b>15,000 원</b></h5> </td>
								<td class = "text-center align-middle" rowspan = 3>  
									<button type="button" class="btn btn-ml btn-success" disabled>결제 완료</button>	
								</td>
							</tr>
							<tr>
								<td> <b>주문번호 :</b> 1234-5678-90 </td>
							</tr>
							<tr>
								<td colspan = 2> <b>주문자명 :</b> ㅇㅇㅇ </td>
							</tr>
							
							<tr style = "height: 30px;">
								<td colspan = 3>
									<hr>
								</td>
							</tr>
							<tr>
								<td style = "width: 55%;">
									<h5><b>주문 상품 정보</b></h5>
								</td>
								<td colspan = 2 style = "width: 45%;">
							</tr>
							<tr>
								<td> <b>이름 :</b> ㅇㅇㅇ </td>
								<td colspan = 2 rowspan = 2> <b>거래방법 : </b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>주소 :</b> ㅇㅇㅇ </td>
							</tr>
							<tr>
								<td> <b>휴대폰 번호 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr>
							<tr>
								<td> <b>배송지 요청사항 :</b> ㅇㅇㅇ </td>
								<td colspan = 2></td>
							</tr> -->
						</table>
						<nav id="newPaging">
					
						</nav>
						<!-- 주문 상품 table 1 종료-->
					</div>
					
				</div>
				
				<br><br>
				
				<!-- 페이징 처리  -->
				<!-- <div class = "container">
					<nav>
						<ul class="pagination justify-content-center">
							<li class="page-item">
								<a class="page-link" href="#"> 
								<span>&laquo;</span>
								</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">1</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">2</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">3</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#"> 
								<span>&raquo;</span>
								</a>
							</li>
						</ul>
					</nav>
				</div> -->
				<!-- 페이징 처리  종료 -->
				
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