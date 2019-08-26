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
		
		$(".custom-select-sm").change(function(){
			var s = $(".custom-select-sm").val();
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
		});
		
		var prod_id = ${ product.prod_id };
		
		var reviewCurrentPage = 1;
		
		var loginUser = "${ loginUser }";
		
		function Review(prod_id, reviewCurrentPage){
			$.ajax({
		        type		: "POST",
		        url 		: "reviewByProd.do",
		        data		:  {prod_id : prod_id, reviewPage : reviewCurrentPage},
		        success		: function(data) {	        	
		        	
		        	var inputReview = "";
		        	for(var i = 0; i < data.review.length; i++) {
		        		var date = new Date(data.review[i].review_date);
		        		inputReview += '<tr style = "height: 10px;"></tr>';
		        		inputReview += '<tr>';
		        		inputReview += '<th style = "width: 75px;" rowspan = 3><img src = "images/sk.png" style = "width: 50px; height: 50px;"></th>';
		        		inputReview += '<th><h5><b>' + data.review[i].prod_name + '</b></h5></th>';	//상품명
		        		if(data.review[i].review_writer == loginUser)
		        			inputReview += '<th class = "text-right"><button id="' + data.review[i].review_id + '" class = "reviewModifyBtn btn-sm btn-secondary">수정</button><button id="' + data.review[i].review_id + '" class = "reviewDeleteBtn btn-sm btn-danger">삭제</button></th>';
		        		else
		        			inputReview += '<th class = "text-right"><button id="' + data.review[i].review_id + '" class = "reviewReportBtn btn-sm btn-danger">신고</button></th>';
		    			inputReview += '</tr><tr style = "height: 10px;"></tr><tr><td><b>' + date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate() + '</b></td>';
		        		inputReview += '<td colspan = 2 class="text-right"><b>작성자 : ' + data.review[i].review_writer + '</b>&nbsp;&nbsp;&nbsp;<span id = "star_rating">';	//별점부분
	                	inputReview += '<span class="fa fa-star checked"></span>';
	                	inputReview += '<span class="fa fa-star checked"></span>';
	                	inputReview += '<span class="fa fa-star checked"></span>';
	                	inputReview += '<span class="fa fa-star checked"></span>';
	                	inputReview += '<span class="fa fa-star checked"></span>';
	                	inputReview += '</span></td></tr><tr style = "height: 10px;"></tr>';
	                	
	                	inputReview += '<tr><td colspan = 3><p>' + data.review[i].review_id + '.' + data.review[i].review_content +'</p></td></tr>'
		    			
		    			
		    			if(data.review[i].answer != null) {
		    				answerDate = new Date(data.review[i].answer.answer_date);
		    				inputReview += '<tr class="table-active">';
			        		inputReview += '<td style="width: 15%; text-align: center">';
			        		inputReview += '<img src="images/commenticon.png" style = "width: 20px; height: 20px;"></td>';
			        		inputReview += '<td colspan="2" style="width: 85%;"><p><h5><b>사장님 답변</b></h5><br><h6><b>' + answerDate.getFullYear() + '-' + (answerDate.getMonth() + 1) + '-' + answerDate.getDate() + '</b></h6>' + data.review[i].answer.answer_content + '</p></td></tr>';
		    			}
		        	}

			    	$('#reviewTable').html(inputReview);
			    	
			    	$(".reviewDeleteBtn").on("click", function() {
			    		var qna_id = $(this).attr('id');
				    	if(confirm('정말로 삭제하시겠습니까?')) {
				    		$.ajax({
						        type		: "POST",
						        url 		: "deleteQnA.do",
						        data		:  {qna_id : qna_id},
						        success		: function(data) {
						        	alert('삭제가 완료되었습니다!');
						        	paging(totalBoards, boardsPerPage, offset, qnaCurrentPage);
									QnA(prod_id, qnaCurrentPage);
					        	}
					        });
						        
				    	}
				    });
		        }
		    });
		}
		
		var qnaCurrentPage = 1;
		
		function QnA(prod_id, qnaCurrentPage){
			$.ajax({
		        type		: "POST",
		        url 		: "qnaByProd.do",
		        data		:  {prod_id : prod_id, qnaPage : qnaCurrentPage},
		        success		: function(data) {	        	
		        	
		        	var inputQnA = "";
		        	
		        	for(var i = 0; i < data.qna.length; i++) {
		        		var date = new Date(data.qna[i].qna_date);
		        		inputQnA += '<tr>';
		        		inputQnA += '<td style="width: 15%; text-align: center"><span class = "badge badge-primary">질문</span></td>';
		        		inputQnA += '<td style="width: 55%">' + data.qna[i].qna_id + '.' + data.qna[i].qna_content;
		        		if(data.qna[i].mem_id == loginUser) 
		        			inputQnA += '<span calss="text-right"><a id="' + data.qna[i].qna_id + '" href="#" class="deleteQnA text-secondary"><small>삭제</small></a></span>';
		        		inputQnA += '</td>'
		        		inputQnA += '<td style="width: 12%; text-align: center">' + data.qna[i].mem_id + '</td>';
		        		inputQnA += '<td style="width: 18%; text-align: center">' + date.getFullYear() + '-' + (date.getMonth() + 1) + '-' + date.getDate() + '</td>';
		    			inputQnA += '</tr>';
		    			
		    			
		    			if(data.qna[i].qnacomment != null) {
		    				commDate = new Date(data.qna[i].qnacomment.comm_date);
		    				inputQnA += '<tr class="table-active">';
			        		inputQnA += '<td style="width: 15%; text-align: center">';
			        		inputQnA += '<img src="images/commenticon.png" style = "width: 20px; height: 20px;">';
			        		inputQnA += '<span class="badge badge-success">답변</span></td>';
			        		inputQnA += '<td style="width: 55%">' + data.qna[i].qnacomment.comm_content + '</td>';
			    			inputQnA += '<td style="width: 12%; text-align: center">판매자</td>';
			    			inputQnA += '<td style="width: 18%; text-align: center">' + commDate.getFullYear() + '-' + (commDate.getMonth() + 1) + '-' + commDate.getDate() + '</td>';
			    			inputQnA += '</tr>';
		    				
		    			}
		        	}
			    	$('#qnaTable').html(inputQnA);
			    	
			    	$(".deleteQnA").on("click", function() {
			    		var qna_id = $(this).attr('id');
				    	if(confirm('정말로 삭제하시겠습니까?')) {
				    		$.ajax({
						        type		: "POST",
						        url 		: "deleteQnA.do",
						        data		:  {qna_id : qna_id},
						        success		: function(data) {
						        	alert('삭제가 완료되었습니다!');
						        	paging(totalBoards, boardsPerPage, offset, qnaCurrentPage);
									QnA(prod_id, qnaCurrentPage);
					        	}
					        });
						        
				    	}
				    });
		        }
		    });
		}
		
		var totalBoards;    // 총 데이터 수
		
		$("#nav-review-tab").on("click", function() {
			totalBoards = ${ reviewTotalBoards };
			Review(prod_id, reviewCurrentPage);
			paging(totalBoards, boardsPerPage, offset, 1);
		});
		
		$("#nav-qna-tab").on("click", function() {
			totalBoards = ${ qnaTotalBoards };
			QnA(prod_id, qnaCurrentPage);
			paging(totalBoards, boardsPerPage, offset, 1);
		});
		
	    var boardsPerPage = 10;    // 한 페이지에 나타낼 데이터 수
	    var offset = 5;        // 한 화면에 나타낼 페이지 수
	    
	    function paging(totalBoards, boardsPerPage, offset, current) {
	        
	        console.log("totalBoards : " + totalBoards);
	        console.log("current : " + current);
	        
	        var last = Math.ceil(totalBoards / boardsPerPage);    // 총 페이지 수
	        var pageGroup = Math.ceil(current / offset);    // 페이지 그룹
	        
	        console.log("pageGroup : " + pageGroup);
	        
	        var end = pageGroup * offset;    // 화면에 보여질 마지막 페이지 번호
	        if(end > last)
	            end = last;
	        var start = end - (offset - 1);    // 화면에 보여질 첫번째 페이지 번호
	        var next = end + 1;
	        var prev = start - 1;
	        
	        console.log("start : " + start);
	        console.log("end : " + end);
	        console.log("next : " + next);
	        console.log("prev : " + prev);
	        console.log("last : " + last);

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
	        
	        if((pageGroup * offset) > last) {
	            pagingLayout += '<li class="page-item disabled"><a class="page-link" id=' + next + '>다음</a></li>';
	            pagingLayout += '<li class="page-item disabled"><a class="page-link" id=' + last + '><span>&raquo;</span></a></li>';
	        }
	        else {
	        	pagingLayout += '<li class="page-item"><a class="page-link" id=' + next + '>다음</a></li>';
	        	pagingLayout += '<li class="page-item"><a class="page-link" id=' + last + '><span>&raquo;</span></a></li>';
	        }
	        pagingLayout += '</ul>';
	            
	        $("#reviewPaging").html(pagingLayout);    // 페이지 목록 생성
	        $("#qnaPaging").html(pagingLayout);    // 페이지 목록 생성
	       
	        $(".page-link").on("click", function() {
				var CurrentPage = $(this).attr('id');
				paging(totalBoards, boardsPerPage, offset, CurrentPage);
				Review(prod_id, CurrentPage);
				QnA(prod_id, CurrentPage);
			});
		
	    };
	    
	    
	   
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
			            <td rowspan = 8 colspan = 5 style = "width: 350px;">
			                <div id = "item_image">
			                    <img src = "images/sk.png">
			                </div>
			            </td>
			            
			            <td>
			                <div id = "item_name" class="mt-5">
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
			        <tr style="height: 70px;">
			        	<td>
			        		<h4>${ product.prod_price }원</h4>
			        	</td>
			        </tr>
			        <tr>
			            <td>
			            	<c:choose>
			            		<c:when test="${ product.sel_id == loginUser }">
			            		</c:when>
			            		<c:otherwise>
			                <div id = "like_report">
			                	<button class="btn btn-sm btn-secondary" id = "like_button">
			                   		<i class="far fa-heart" id = "like_item"></i> 찜하기
			                	</button>
			               
			                	<button class="btn btn-sm btn-danger" id = "report_button"> 
			                    	<i class="fa fa-warning"></i> 신고
			                	</button>
			                </div>
			                </c:otherwise>
			            	</c:choose>
			            </td>
			        </tr>
			        <tr>
			            <td>
			            	<hr>배송비 : ${ product.prod_fee }원<hr>
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
				               		<select id = "${ option.opt_id }" class="custom-select-sm" style="width: 250px;"> 
				               		<option disabled selected hidden>옵션을 선택해주세요</option>
				               	<c:forEach var="optiondetail" items="${ option.optiondetail }">
				                    <option id="${ optiondetail.optd_id }">${ optiondetail.optd_choice }</option>
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
			                
			                <c:choose>
			            		<c:when test="${ product.sel_id == loginUser }">
			            		<button class="btn btn-sm btn-secondary" style="width: 170px;" id = "modify_product">편집</button>
			                <button class="btn btn-sm btn-secondary" style="width: 170px;" id = "delete_product">삭제</button>
			            		</c:when>
			            		<c:otherwise>
			                <button class="btn btn-sm btn-secondary" style="width: 170px;" id = "add_basket">장바구니 담기</button>
			                <button class="btn btn-sm btn-secondary" style="width: 170px;" id = "buy_product">즉시 구매</button>
			                </c:otherwise>
			            	</c:choose>
			            </td>
			        </tr>
			    </table>
			    <hr>
			    <nav>
			        <div class="nav nav-tabs" id="nav-tab" role="tablist">
			            <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab">제품정보</a>
			            <a class="nav-item nav-link" id="nav-review-tab" data-toggle="tab" href="#nav-profile" role="tab">구매후기(${ reviewTotalBoards })</a>
			            <a class="nav-item nav-link" id="nav-qna-tab" data-toggle="tab" href="#nav-contact" role="tab">Q&A(${ qnaTotalBoards })</a>
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
			            	<br>
			                <table class="table" style = "width: 700px;" id="reviewTable">
								<!-- <tr>
								    <th style = "width: 75px;" rowspan = 3>
								    	<img src = "images/sk.png" style = "width: 50px; height: 50px;">
								    </th>
								    <th>
								      	<h5><b>로즈마리 천연 비누 1개</b></h5>

								    </th>
								    <th class = "text-right">
								    작성자아이디&nbsp;&nbsp;&nbsp;
								    	<button class = "btn btn-sm btn-secondary">수정</button>
								      	<button class = "btn btn-sm btn-danger">삭제</button>
								    </th>
							    </tr>
							    <tr style = "height: 10px;"></tr>
							    <tr>
							    	<td>
							    		<b>2019-01-01</b>
							    	</td>
							    	<td class="text-right" colspan = 2>
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
							    		<p>
							    			좋습니다. 비누로 세수하면 건조한 느낌이라 싫어하는데 
							    			이 비누는 촉촉하고 피부가 좋아지는 것이 느껴집니다.
							    		</p>
							    	</td>
							    </tr>
							    <tr class="table-active">
							    	
							    	<td style="width: 15%; text-align: center">
			        					<img src="images/commenticon.png" style = "width: 20px; height: 20px;">
			        					
							    	</td>
							    	<td colspan="2" style="width: 85%;">
							    		<p>
							    			<h5><b>사장님아이디</b></h5>
							    			<br>
							    			<h6><b>2019-01-02</b></h6>
							    			촉촉쓰 개조은 우리비누 사랑해주세요
							    		</p>
							    	</td>
							    </tr> -->
							</table>
							
							<nav id="reviewPaging"></nav>
			            </div>
			            <div class="tab-pane fade" id="nav-contact" role="tabpanel">
			                <table class="table table-bordered" id="qnaTable">
							    <!-- <tr>
							      <td style="width: 15%; text-align: center"><span class = "badge badge-primary">질문</span></td>
							      <td style="width: 55%">내용</td>
							      <td style="width: 12%">아이디</td>
							      <td style="width: 18%">작성일</td>
							    </tr>
							    <tr class="table-active">
							      <td style="width: 15%; text-align: center">
							      	<img src="images/commenticon.png" style = "width: 20px; height: 20px;">
							      	<span class="badge badge-success">답변</span>
							      </td>
							      <td style="width: 55%">내용</td>
							      <td style="width: 12%">아이디</td>
							      <td style="width: 18%">작성일</td>
							    </tr> -->
							</table>
				<nav id="qnaPaging">
					<%-- <ul class="pagination justify-content-center">
						<li class="page-item <c:if test="${ start == 1 }">disabled</c:if>">
							<a class="page-link" id="1"> 
								<span>&laquo;</span>
							</a>
						</li>
							
						<li class="page-item <c:if test="${ start == 1 }">disabled</c:if>">
							<a class="page-link" id="${ start - 1 }">이전</a>
						</li>
						<c:forEach begin="${ start }" end="${ end < last ? end : last }" var="i">
							<c:choose>
								<c:when test="${ i == current }">
									<li class="page-item active" aria-current="page">
		      							<span class="page-link">${ current } <span class="sr-only">(current)</span></span>
		    						</li>
		    					</c:when>
								<c:otherwise>
									<li class="page-item">
										<a class="page-link" id="${ i }">${ i }</a>
									</li>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<li class="page-item <c:if test="${ last <= end }">disabled</c:if>">
							<a class="page-link" id="${ end + 1 }">다음</a>
						</li>
						<li class="page-item <c:if test="${ last <= end }">disabled</c:if>">
							<a class="page-link" id="${ last }">
								<span>&raquo;</span>
							</a>
						</li>
					</ul> --%>
					
				</nav>
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