<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

<title>핸쇼</title>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<style>
.checked {
	color: orange;
}

#item_image {
	text-align: center;
}
</style>
<script>
$(document).ready(function(){
	$("#like_button").click(function(){
	    $('#like_item').toggleClass("far fa-heart fas fa-heart");
	});
	
	$("#select_opt").change(function(){
		var s = $("#select_opt").val();
		$("#selected_opt").text(s);
	});
	
	$('#report_button').click(function(){
		Swal.fire(
				  '신고 완료',
				  '신고가 정상적으로 완료되었습니다.',
				  'success'
				)
	});
	
	var s = 0;
	
	$('#add_item_button').click(function(){
		s++;
		$("#cart_amt").text(s);
		
		const Toast = Swal.mixin({
			  toast: true,
			  position: 'top-end',
			  showConfirmButton: false,
			  timer: 3000
		});

		Toast.fire({
			type: 'success',
			title: '장바구니에 아이템이 추가되었습니다.'
		})
	})
})
</script>
</head>
<body>
	<!-- header -->
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<!-- header 종료 -->
	
	<div class="container">
    <div class="row">
    <div class="col"></div>
    <div class="col-8">
    <table width = 700>
        <tr> 
            <td rowspan = 7 colspan = 5 width = 350>
                <div id = "item_image">
                    <img src = "images/sk.png">
                </div>
            </td>
            
            <td>
                <div id = "item_name">
                <h3>카드지갑</h3>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div id = "seller_id">
                <h5>11hertz</h5>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <span id = "star_rating">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star checked"></span>
                <span class="fa fa-star"></span>
                </span>
            </td>
        </tr>
        <tr>
            <td>
                <div id = "like_report">
                	<button class="btn btn-sm btn-secondary" id = "like_button">
                   		<i class="far fa-heart" id = "like_item"></i> 찜하기
                	</button>
               
                	<button class="btn btn-sm btn-danger" id = "report_button"> 
                    	<i class="fa fa-warning"></i> 신고
                	</button>
                </div>
            </td>
        </tr>
        <tr>
            <div id = "delivery_cost">
            <td><hr>배송비 : 2500원<hr></td>
            </div>
        </tr>
        <tr>
            <td>옵션 &nbsp;&nbsp;&nbsp;<span id = "selected_opt"></span> <hr></td>
        </tr>
        <tr>
            <td>
                <div id = "select_option">
               	 사이즈&nbsp;
                <select id = "select_opt" class="custom-select-sm" style="width: 250px;"> 
                    <option value="90 / S">90 / S </option>
                    <option value="95 / M">95 / M</option>
                    <option value="100 / L">100 / L</option>
                </select>
                </div>
                <hr>
            </td>
        </tr>
        
        <tr>
            <div id = "thumbnails">
            <td>
                <img src = "images/sk.png" width = 60 height = 40>
            </td>
            <td>
                <img src = "images/sk.png" width = 60 height = 40>
            </td>
            <td>
                <img src = "images/sk.png" width = 60 height = 40>
            </td>
            <td>
                <img src = "images/sk.png" width = 60 height = 40>
            </td>
            <td>
                <img src = "images/sk.png" width = 60 height = 40>
            </td>
            </div>
            <div id = "add_items_buy_now">
            <td>
                <span id = "add_items">
                <button class="btn btn-sm btn-secondary" style="width: 170px;" id = "add_item_button">장바구니 담기</button>
                </span>
                <span id = "buy_now">
                <button class="btn btn-sm btn-secondary" style="width: 170px;">즉시 구매</button>
                </span>
            </td>
            </div>
        </tr>
    </table>
    <hr>
    <nav>
        <div class="nav nav-tabs" id="nav-tab" role="tablist">
            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">제품정보</a>
            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">구매후기</a>
            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Q&A</a>
        </div>
    </nav>
        <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                    <div id = "content">
                    <span>
                    - check <br>
                    2차 주문 일정: 7월 12일 ~ 15일 <br>
                    2차 일괄 발송: 7월 18일 <br>
                    3차 주문 일정: 7월 19일 ~ 22일 <br>
                    <br><br>
                    - schedule <br>
                   	 금, 토, 일, 월: 주문 및 제작 <br>
                    	화, 수: 제작 <br>
                    	목: 일괄 발송 <br>
                    </span>
                    </div>
            </div>
            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                
            </div>
            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                ...
            </div>
        </div>
        <hr>
        <h5>사장님 판매상품</h5>
        <br>
        <div id = "seller_item_slider">
            <span>
            <img src = "images/sk.png" width = 100 height = 100>
            <img src = "images/sk.png" width = 100 height = 100>
            <img src = "images/sk.png" width = 100 height = 100>
            <img src = "images/sk.png" width = 100 height = 100>
            <img src = "images/sk.png" width = 100 height = 100>
            </span>
        </div>
    </div>
    
    <div class="col"></div>
    
    </div>
    </div>
	
	<!-- footer -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- footer 종료 -->
</body>
</html>