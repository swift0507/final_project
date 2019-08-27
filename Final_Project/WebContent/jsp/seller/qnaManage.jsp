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
			$(document).on('click', '#add_Reply', function(){
				$('.answer').toggle();
				$(this).val() == "△" ? play_int() : play_pause();
  
			})
			
			function play_int() {
				$('#add_Reply').val("▽");
				   
				}
				
			function play_pause() {
				$('#add_Reply').val("△");
				 
				}
			
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
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item">
						<a class="nav-link" id="review-tab" data-toggle="tab" href="#review" role="tab"> 후기 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link active" id="qna-tab" data-toggle="tab" href="#qna" role="tab"> Q&A </a>
					</li>
				</ul>
				
				<div class="tab-content" id="myTabContent">
					<!-- 후기 영역 -->
					<div class="tab-pane fade" id="review" role="tabpanel">
						
					</div>
					<!-- 후기 영역 종료-->
					
					<!-- Q&A 영역 -->
					<div class="tab-pane fade show active" id="qna" role="tabpanel">
						<!-- QnA table toggle ver -->
						<table class = "mt-5" style = "width: 700px;">
							<tr>
							    <th colspan = 2>
							    	<img src = "images/sk.png" style = "width: 50px; height: 50px;">
							    	&nbsp;&nbsp;
							      	로즈마리 천연 비누 1개
							    </th>
						    </tr>
						    <tr style = "height: 10px;"></tr>
						    <tr>
						    	<td colspan = 2 style = "width: 700px;">
						    		<span class = "badge badge-primary">질문</span>
						    	</td>
						 
						    </tr>
						    <tr>
						    	<td style = "width: 600px;">
						    		<input type = "text" class = "form-control" style = "width: 600px;" value = "얼굴에 써도 되나요!?" readonly>
						    	</td>
						    	<td class = "text-center">
						    		<input type = "button" id = "add_Reply" class = "btn btn-sm btn-secondary" value = "▽">
						    	</td>
						    </tr>
						  	
						  	<tr style = "height: 10px;"></tr>
						  	
						    <tr class = "answer" style = "display: none;">
						    	<td colspan = 2 style = "width: 700px;">
						    		<span class="badge badge-success">답변</span>
						    	</td>
						    </tr>
						    <tr class = "answer" style = "display: none;">
						    	<td>
						    		<input type = "text" class = "form-control" style = "width: 500px;" placeholder = "답변 작성">
						    	</td>
						    	<td class = "text-center">
						    		<button class = "btn btn-sm btn-secondary">확인</button>
						    		<button class = "btn btn-sm btn-danger">삭제</button>
						    	</td>
						    </tr>
							
						</table>
						<br>
						<hr>
						<!-- QnA table toggle ver 종료 -->
						
						
						
						<!-- QnA table non-toggle ver -->
						<table class = "mt-5" style = "width: 700px;">
							<tr>
							    <th colspan = 2>
							    	<img src = "images/sk.png" style = "width: 50px; height: 50px;">
							    	&nbsp;&nbsp;
							      	로즈마리 천연 비누 1개
							    </th>
						    </tr>
						    <tr style = "height: 10px;"></tr>
						    <tr>
						    	<td colspan = 2 style = "width: 700px;">
						    		<span class = "badge badge-primary">질문</span>
						    	</td>
						 
						    </tr>
						    <tr>
						    	<td style = "width: 500px;">
						    		<input type = "text" class = "form-control" style = "width: 500px;" value = "얼굴에 써도 되나요!?" readonly>
						    	</td>
						    	<td class = "text-center">
						    		
						    	</td>
						    </tr>
						  	
						  	<tr style = "height: 10px;"></tr>
						  	
						    <tr>
						    	<td colspan = 2 style = "width: 500px;">
						    		<span class="badge badge-success">답변</span>
						    	</td>
						    </tr>
						    <tr>
						    	<td>
						    		<input type = "text" class = "form-control" style = "width: 500px;" placeholder = "답변 작성">
						    	</td>
						    	<td class = "text-center" colspan = 2>
						    		<button class="btn btn-sm btn-secondary">답변 달기</button>
						    		<button class = "btn btn-sm btn-danger">삭제</button>
						    	</td>
						    </tr>
							
						</table>
						<br>
						<hr>	
						<!-- QnA table non-toggle ver 종료 -->
						
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
					<!-- Q&A 영역 종료-->
					
				</div>
				
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