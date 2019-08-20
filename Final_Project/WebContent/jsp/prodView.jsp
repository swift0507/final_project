<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	<link href = "footer.css" rel="stylesheet" type="text/css">
	
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
	<div class = "content">	
		<div class="container">
		    <div class="row">
			    <div class="col"></div>
			    <div class="col-8">
			    <table style = "width: 700px;">
			        <tr> 
			            <td rowspan = 7 colspan = 5 style = "width: 350px;">
			                <div id = "item_image">
			                    <img src = "images/sk.png">
			                </div>
			            </td>
			            
			            <td>
			                <div id = "item_name">
			                <h3>${ product.prod_name }</h3>
			                </div>
			            </td>
			        </tr>
			        <tr>
			            <td>
			                <div id = "seller_id">
			                <h5>${ product.sel_id } / 조회수 : ${ product.prod_readcount }</h5>
			                </div>
			            </td>
			        </tr>
			        <tr>
			            <td>
			                <span id = "star_rating">
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
			            <td>
			            	<hr>배송비 : ${ product.prod_fee }<hr>
			            </td>
			        </tr>
			        <tr>
			            <td>옵션 &nbsp;&nbsp;&nbsp;
			            	<span id = "selected_opt"></span> 
			            	<hr>
			            </td>
			        </tr>
			        <tr>
			            <td>
			            	<!-- 옵션 선택 부분 -->
			                <div id = "select_option">
				                <c:forEach var="option" items="${ option }">
				               	${ option.opt_name }
				               		<select id = "select_opt" class="custom-select-sm" style="width: 250px;"> 
				               	<c:forEach var="optiondetail" items="${ option.optiondetail }">
				                    <option id = "${ optiondetail.optd_id }">${ optiondetail.optd_choice } </option>
				                    <br>
				               	</c:forEach>
				                </select>
				                <br>
				                </c:forEach>
			                </div>
			                <hr>
			            </td>
			        </tr>
			        
			        <tr>
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
			            <td>
			                <button class="btn btn-sm btn-secondary" style="width: 170px;" id = "add_item_button">장바구니 담기</button>
			                <button class="btn btn-sm btn-secondary" style="width: 170px;">즉시 구매</button>
			            </td>
			        </tr>
			    </table>
			    <hr>
			    <nav>
			        <div class="nav nav-tabs" id="nav-tab" role="tablist">
			            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab">제품정보</a>
			            <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab">구매후기</a>
			            <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab">Q&A</a>
			        </div>
			    </nav>
			        <div class="tab-content" id="nav-tabContent">
			            <div class="tab-pane fade show active" id="nav-home" role="tabpanel">
			                    <div id = "content">
			                    <span>
			                    ${ product.prod_content }
			                    </span>
			                    </div>
			            </div>
			            <div class="tab-pane fade" id="nav-profile" role="tabpanel">
			                
			            </div>
			            <div class="tab-pane fade" id="nav-contact" role="tabpanel">
			                ...
			            </div>
			        </div>
			        <hr>
			        <h5>사장님 판매상품</h5>
			        <br>
			        <div id = "seller_item_slider">
			            <span>
			            <img src = "images/sk.png" style = "width: 100px; height: 100px;">
			            <img src = "images/sk.png" style = "width: 100px; height: 100px;">
			            <img src = "images/sk.png" style = "width: 100px; height: 100px;">
			            <img src = "images/sk.png" style = "width: 100px; height: 100px;">
			            <img src = "images/sk.png" style = "width: 100px; height: 100px;">
			            </span>
			        </div>
			    </div>
			    
			    <div class="col"></div>
		    
		    </div>
	    </div>
	</div>	
	<!-- footer -->
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- footer 종료 -->
</body>
</html>