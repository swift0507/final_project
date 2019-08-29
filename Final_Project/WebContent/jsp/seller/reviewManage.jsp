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
	<script src = "https://cdn.jsdelivr.net/npm/sweetalert2@7.33.1/dist/sweetalert2.all.min.js"></script>
	<script>
		$(document).ready(function(){
			$('#report_button').click(function(){
				Swal.fire(
						  '신고 완료',
						  '신고가 정상적으로 완료되었습니다.',
						  'success'
						)
			});	
			$(document).on('click', '#add_Reply', function(){
				$('.review_answer').toggle();
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
						<a class="nav-link active" id="review-tab" data-toggle="tab" href="#review" role="tab"> 후기 </a>
					</li>
					<li class="nav-item">
						<a class="nav-link" id="qna-tab" data-toggle="tab" href="qna" role="tab"> Q&A </a>
					</li>
				</ul>
				
				<div class="tab-content" id="myTabContent">
					<!-- 후기 영역 -->
					<c:forEach var="review" items="${ review }" varStatus="i">
						<div class="tab-pane fade show active" id="review${ i.index }" role="tabpanel">
						<!-- 후기 table 1 -->
						<table class = "mt-5" style="width: 700px;">
						<tr>
							<td style = "width: 20%;">
								<img src="images/sk.png" style="width: 50px; height: 50px;">
							</td>
							<th >
								${ review.prod_name }
							</th>
							<th class="text-right" style = "width: 30%;">
								<button class="btn btn-sm btn-danger" id = "report_button">
									<i class="fa fa-warning"></i> 신고
								</button>
							</th>
						</tr>
						
						<tr style="height: 10px;">
							<td></td>
						</tr>
						
						<tr>
							<td>${ review.review_writer }</td>
							<td></td>
							<td rowspan = 5 class = "text-center">
								<img src = "" style = "width: 150px; height: 200px;">
							</td>
						</tr>
						
						<tr>
							<td>
								<span id="star_rating"> 
									<span class="fa fa-star checked"></span> 
									<span class="fa fa-star checked"></span> 
									<span class="fa fa-star checked"></span> 
									<span class="fa fa-star checked"></span> 
									<span class="fa fa-star"></span>
								</span>
							</td>
							<td></td>
						</tr>
						<tr style="height: 10px;"></tr>
						<tr>
							<td colspan = 2>
								${ review.review_date }
							</td>
						</tr>
						<tr>
							<td colspan = 2>
								${ review.review_content }
							</td>
						</tr>
						
						<tr style = "height: 50px;">
							<td colspan = 3 class = "text-right">
								<input type = "button" id = "add_Reply" class = "btn btn-sm btn-secondary" value = "▽">
							</td>
						</tr>
						
						<tr style = "display: none;">
							<td colspan = 3>
								<span class="badge badge-success">답변</span>
							</td>
						</tr>
						
						<tr style = "display: none;">
							<td colspan = 3>
								<textarea class="review_answer form-control" rows="5"></textarea>
							</td>
						</tr>
						<tr style = "display: none;">
							<td colspan = 3 class = "text-right">
								<button class = "answer_button btn-sm btn-secondary">작성</button>
							</td>
						</tr>
					</table>
					</div>
					</c:forEach>
					
				
						<!-- 페이징 처리  종료 -->
					<!-- 후기 table 1 종료-->
					<!-- 후기 영역 종료-->
					
					<div class="tab-pane fade" id="qna" role="tabpanel">
						<!-- Q&A 영역 -->
						
						<!-- Q&A 영역 종료-->
					</div>
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