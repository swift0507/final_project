<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
		@import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);
	
		fieldset, label { margin: 0; padding: 0; }
		body{ margin: 20px; }
		h1 { font-size: 1.5em; margin: 10px; }
		
		/****** Style Star Rating Widget *****/
		
		.rating { 
		  border: none;
		  float: left;
		}
		
		.rating > input { display: none; } 
		.rating > label:before { 
		  margin: 5px;
		  font-size: 1.25em;
		  font-family: FontAwesome;
		  display: inline-block;
		  content: "\f005";
		}
		
		.rating > .half:before { 
		  content: "\f089";
		  position: absolute;
		}
		
		.rating > label { 
		  color: #ddd; 
		 float: right; 
		}
		
		/***** CSS Magic to Highlight Stars on Hover *****/
		
		.rating > input:checked ~ label, /* show gold star when clicked */
		.rating:not(:checked) > label:hover, /* hover current star */
		.rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */
		
		.rating > input:checked + label:hover, /* hover current star when changing rating */
		.rating > input:checked ~ label:hover,
		.rating > label:hover ~ input:checked ~ label, /* lighten current selection */
		.rating > input:checked ~ label:hover ~ label { color: #FFED85;  } 
	</style>
</head>
<body>

<form action="modifyReview.do" method = "post">
	<input type = "hidden" name = "review_id" value = "${review.review_id}">
	<table style = "width: 500px; margin-left: auto; margin-right: auto;">
		<tr>
			<td>
				<h5><b>후기 작성</b></h5>
			</td>
			<td>
			</td>
		</tr>
		<tr>
			<td colspan = 2> 
				<hr> 
			</td>
		</tr>
		
	
 		<tr>
			<td colspan = 2>
			<h5><b>${review.prod_name}</b></h5>
				<!-- <select class="custom-select" style = "width: 500px;">
					<option value="buy_item_01">내가 산 상품 1 / 옵션 1 / 옵션 2</option>
					<option value="buy_item_02">내가 산 상품 2 / 옵션 1 / 옵션 2</option>
					<option value="buy_item_03">내가 산 상품 3 / 옵션 1 / 옵션 2</option>
				</select> -->
			</td>
		</tr>
		
		<tr style = "height: 75px;">
			<th style = "width: 25%"> 별점 </th>
			<td style = "width: 75%">
				<fieldset class = "rating">
				    <input type = "radio" id = "star5" name = "review_score" value = "10" />
				    <label class = "full" for = "star5"></label>
				    
				    <input type = "radio" id = "star4half" name = "review_score" value = "9" />
				    <label class = "half" for = "star4half"></label>
				    
				    <input type = "radio" id = "star4" name = "review_score" value = "8"/>
				    <label class = "full" for = "star4"></label>
				    
				    <input type = "radio" id = "star3half" name = "review_score" value = "7" />
				    <label class = "half" for = "star3half"></label>
				    
				    <input type = "radio" id = "star3" name = "review_score" value= "6" />
				    <label class = "full" for = "star3"></label>
				    
				    <input type = "radio" id = "star2half" name = "review_score" value = "5" />
				    <label class = "half" for = "star2half"></label>
				    
				    <input type = "radio" id = "star2" name = "review_score" value = "4" />
				    <label class = "full" for = "star2"></label>
				    
				    <input type = "radio" id = "star1half" name = "review_score" value = "3" />
				    <label class = "half" for = "star1half"></label>
				    
				    <input type = "radio" id = "star1" name = "review_score" value = "2" />
				    <label class = "full" for = "star1"></label>
				    
				    <input type = "radio" id = "starhalf" name = "review_score" value = "1" />
				    <label class = "half" for = "starhalf"></label>
				</fieldset>
			</td>
		</tr>
		<tr>
			<th class = "align-text-top">리뷰 내용</th>
			<td>
				<textarea class = "form-control" rows = "10" name = "review_content" id = "review_content" >${review.review_content}</textarea>
			</td>
		</tr>
		<tr style = "height: 20px;"></tr>
		<tr>
			<th> 사진 첨부 </th>
			<td>
				<input type="file" name="review_pict" class="form-control-file" id="review_pict">
				<%-- <img src="reviewdownload.do?num=${review.review_id}" width="700px"> --%>
			</td>
		</tr>
		<tr style = "height: 20px;"></tr>
		<tr>
			<td colspan = 2 class = "text-center">
				<input class="btn btn-sm btn-secondary" style = "width: 75px;" type="submit" value="수정">
				<button class="btn btn-sm btn-secondary" style = "width: 75px;" type="button" onclick="location.href='myReview.do'">취소</button>
			</td>
		</tr>
	</table>
</form>	
</body>
</html>