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
	<style>
		.checked {
			color: orange;
		}
		
		#item_image {
			text-align: center;
		}
	</style>
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
				<!-- 후기 header / 작성 button -->
				<table style = "width: 700px;">
					<tr>
						<td>
							<h5><b>나의 후기</b></h5>
						</td>
						<td class = "text-right">
							<button class = "btn btn-sm btn-secondary">후기 작성</button>
						</td>
					</tr>
					<tr>
						<td><hr></td>
					</tr>
				</table>
				<!-- 후기 header / 작성 button 종료 -->
				
				<!-- 후기 table 1 -->
				<table style = "width: 700px;">
					<tr>
					    <th style = "width: 75px;">
					    	<img src = "images/sk.png" style = "width: 50px; height: 50px;">
					    </th>
					    <th>
					      	로즈마리 천연 비누 1개
					    </th>
					    <th class = "text-right">
					    	<button class = "btn btn-sm btn-secondary">수정</button>
					      	<button class = "btn btn-sm btn-danger">삭제</button>
					    </th>
				    </tr>
				    <tr style = "height: 10px;"></tr>
				    <tr>
				    	<td colspan = 3>
				    		<span id = "star_rating">
			                	<span class="fa fa-star checked"></span>
			                	<span class="fa fa-star checked"></span>
			                	<span class="fa fa-star checked"></span>
			               		<span class="fa fa-star checked"></span>
			                	<span class="fa fa-star"></span>
			                </span>
				    	</td>
				    </tr>
				    <tr style = "height: 10px;"></tr>
				    <tr>
				    	<td colspan = 3>
				    		<p class = "review">
				    			좋습니다. 비누로 세수하면 건조한 느낌이라 싫어하는데 
				    			이 비누는 촉촉하고 피부가 좋아지는 것이 느껴집니다.
				    		</p>
				    	</td>
				    </tr>
				</table>
				<br>
				<hr>
				<!-- 후기 table 1 종료-->
				
				<!-- 후기 table 2 -->
				<table style = "width: 700px;">
					<tr>
					    <th style = "width: 75px;">
					    	<img src = "images/sk.png" style = "width: 50px; height: 50px;">
					    </th>
					    <th>
					      	로즈마리 천연 비누 1개
					    </th>
					    <th class = "text-right">
					    	<button class = "btn btn-sm btn-secondary">수정</button>
					      	<button class = "btn btn-sm btn-danger">삭제</button>
					    </th>
				    </tr>
				    <tr style = "height: 10px;"></tr>
				    <tr>
				    	<td colspan = 3>
				    		<span id = "star_rating">
			                	<span class="fa fa-star checked"></span>
			                	<span class="fa fa-star checked"></span>
			                	<span class="fa fa-star checked"></span>
			               		<span class="fa fa-star checked"></span>
			                	<span class="fa fa-star"></span>
			                </span>
				    	</td>
				    </tr>
				    <tr style = "height: 10px;"></tr>
				    <tr>
				    	<td colspan = 3>
				    		<p class = "review">
				    			좋습니다. 비누로 세수하면 건조한 느낌이라 싫어하는데 
				    			이 비누는 촉촉하고 피부가 좋아지는 것이 느껴집니다.
				    		</p>
				    	</td>
				    </tr>
				</table>
				<br>
				<hr>
				<!-- 후기 table 2 종료-->
				
				<!-- 페이징 처리  -->
				<div class = "container">
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
				</div>
				<!-- 페이징 처리  종료 -->
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



