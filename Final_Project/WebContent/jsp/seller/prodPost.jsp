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
	
		/* file 추가  폼 */
		var input_photo_form = '<tr id = "added_photo">';
			input_photo_form += '<td>';
			input_photo_form += '<input type="file" class="form-control-file">';
			input_photo_form += '</td>';
			input_photo_form += '</tr>';
		/* file 추가 폼 종료 */
		
		
		var photo_count = 1;
		
		/* 사진 첨부 입력 폼 추가 Script */
		$('#add_photo').click(function(){
			if(photo_count < 5) {
				photo_count += 1;
				$('#photo_table').append(input_photo_form);
			} else {
			    alert('사진은 최대 5개까지만 첨부 가능합니다.');
			}
		})
		/* 사진 첨부 입력 폼 추가 Script 종료 */
		
		/* 사진 첨부 삭제 폼 추가 Script */
		$('#del_photo').click(function(){
			if(photo_count > 1) {
				photo_count -= 1;
				$('#added_photo:last-of-type').detach();
			} else {
				alert('한 개 이상의 사진을 등록하셔야 합니다.');	
			}
		})
		/* 사진 첨부 삭제 폼 추가 Script 종료 */
		
		
		var detail_count = 1;
		
		/* detail 입력 폼 추가 Script */
		$('#add_detail').click(function(){
			detail_count += 1;
		
			/* detail 추가 폼 */
			var input_detail_form = '<tr id = "detail' + (detail_count) + '">';
				input_detail_form += '<td style = "width: 5%;" class= "text-center">';
				input_detail_form += '<input type = "checkbox">'
				input_detail_form += '</td>'
				input_detail_form += '<td style = "width: 30%;">'
				input_detail_form += '<input type="text" class="form-control" placeholder = "항목명" style = "width: 175px;"' + 'id = "detail_name' + (detail_count) + '">'
				input_detail_form += '</td>'
				input_detail_form += '<td style = "width: 65%;">'
				input_detail_form += '<input type="text" class="form-control" placeholder = "설명"' + 'id = "detail_explain' + (detail_count) + '">';
				input_detail_form += '</td>'
				input_detail_form += '</tr>'
			/* detail 추가 폼 종료 */
			
			$('#detail_table').append(input_detail_form);
		})
		/* detail 입력 폼 추가 Script 종료 */
		
		/* detail 입력 폼 삭제 Script */
		$('#del_detail').click(function(){
			if(detail_count > 1) {
				detail_count -= 1;
				$('#detail_table tr').last().detach();
			} else {
				alert('한 개 이상의 옵션을 지정하셔야 합니다.');	
			}
		})
		/* detail 입력 폼 삭제 Script 종료 */
		
		/* 옵션 사용 여부 Script */
		$('#use_option').click(function(){
   			$('#select_opt_use').css('display', '');
   		})
   			
   		$('#unused_option').click(function(){
   			$('#select_opt_use').css('display', 'none');
   		})
   		/* 옵션 사용 여부 Script 종료 */
		
		
		var option_count = 1;
        var suboption_count = 1;
        	
        /* 옵션 폼 추가 Script */
        	$('#add_option').on('click', function(){
        		option_count += 1;
    			
        		var option = '<table style = "width: 700px;" id = "option_table'+ (option_count) +'">';
        		option += '<tr style = "height: 75px;">';
        		option += '<td class= "text-center" style = "width: 50px;">';
        		option += '<input type = "checkbox">';
        		option += '</td>';
        		option += '<td colspan = 2 style = "width: 275px;">';
        		option += '<input type="text" class="form-control" id = "opt_name'+ (option_count) + '" placeholder = "옵션명">';
        		option += '</td>';
        		option += '<td class = "text-right" colspan = 4 style = "width: 200px;">';
        		option += '<button class = "btn-secondary" id = "add_optionDetail">상세옵션 추가</button>';
        		option += '&nbsp;'
        		option += '<button class = "btn-danger" id = "del_optionDetail">삭제</button>';
        		option += '</td>';
        		option += '</tr>';
        		option += '<tr>';
        		option += '<td style = "width: 50px;"></td>';
        		option += '<td style = "width: 200px;">';
        		option += '<input type="text" class="form-control" id = "optd_choice' + (option_count) + '_' + (suboption_count) + '" placeholder = "상세옵션명">';
        		option += '</td>';
        		option += '<th class = "text-center" style = "width: 75px;"> 추가 금액 </th>';
        		option += '<td style = "width: 150px;">';
        		option += '<input type="text" class="form-control" id = "optd_price' + (option_count) + '_' + (suboption_count) + '" placeholder = "추가 금액">';
        		option += '</td>';
        		option += '<th class = "text-center" style = "width: 75px;"> 수량 </th>';
        		option += '<td class = "text-center" style = "width: 75px;">';
        		option += '<input type="text" class="form-control" id = "optd_quantity' + (option_count) + '_' + (suboption_count) + '" placeholder = "수량">';
        		option += '</td>';
        		option += '</tr>';
        		option += '</table>';
        		
        		$('.option_area').append(option);	
        	})
        	/* 옵션 폼 추가 Script 종료 */
        	
        	
        	/* 옵션 폼 삭제 Script */
        	$('#del_option').on('click', function(){
        		option_count -= 1;
        		
        		$('.option_area table').last().remove();
        	})
        	/* 옵션 폼 삭제 Script 종료 */
        	
        	
        	/* 상세 옵션 폼 추가 Script */
        	$(document).on('click','#add_optionDetail', function(){
        		suboption_count += 1;
        		
        		var sub_option = '<tr>';
        		sub_option += '<td style = "width: 50px;"></td>';
        		sub_option += '<td style = "width: 200px;">';
        		sub_option += '<input type="text" class="form-control" id = "optd_choice' + (option_count) + '_' + (suboption_count) + '" placeholder = "상세옵션명">';
        		sub_option += '</td>';
        		sub_option += '<th class = "text-center" style = "width: 75px;"> 추가 금액 </th>';
        		sub_option += '<td style = "width: 150px;">';
        		sub_option += '<input type="text" class="form-control" id = "optd_price' + (option_count) + '_' + (suboption_count) + '" placeholder = "추가 금액">';
        		sub_option += '</td>';
        		sub_option += '<th class = "text-center" style = "width: 75px;"> 수량 </th>';
        		sub_option += '<td class = "text-center" style = "width: 75px;">';
        		sub_option += '<input type="text" class="form-control" id = "optd_quantity' + (option_count) + '_' + (suboption_count) + '" placeholder = "수량">';
        		sub_option += '</td>';
        		sub_option += '</tr>';
        		
        		$(this).parent().parent().parent().last().append(sub_option);
        		
        	})
			/* 상세 옵션 폼 추가 Script 종료 */

        	
        	/* 상세 옵션 폼 삭제 Script */
        	$(document).on('click', '#del_optionDetail', function(){
        		suboption_count -= 1;
        		
        		$(this).parent().parent().siblings().last().remove();
        	})
        	/* 상세 옵션 폼 삭제 Script 종료 */
        	
		})
		</script>
	
		<!-- 대표 사진 미리보기 Script -->
		<script>
		function readURL(input) {
	    	if (input.files && input.files[0]) {
	   			var reader = new FileReader();
	
	   		reader.onload = function (e) {
	    		$('#rep_image').attr('src', e.target.result);
	    	};
	
	    	reader.readAsDataURL(input.files[0]);
	    	}
	    }
		</script>
		<!-- 대표 사진 미리보기 Script 종료 -->
		
	<!-- 미리보기 사진 크기 설정 -->	
	<style>
		img{
	  		max-width: 150px;
	  		max-height: 175px;
		}
	</style>
	<!-- 미리보기 사진 크기 설정 종료 -->	
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
			
			<!-- 상품명, 가격, 수량, 배송비 입력  table -->	
			<table style = "width: 700px;" class= "mt-4">
				<tr>
					<td rowspan = 5 style = "width: 30%; height: 175px;">
						<img id = "rep_image" src = "images/noimage.png" style = "width: 150px; height: 175px;">
					</td>
					<th colspan = 2 style = "width: 70%;"> 상품명 </th>
				</tr>
				<tr>
					<td colspan = 2>
						<input type = "text" class = "form-control" placeholder = "상품명을 입력하세요">
					</td>
				</tr>
				<tr>
					<th>
						가격
					</th>
					<th>
						수량
					</th>
				</tr>
				<tr>
					<td>
						<input type = "text" class = "form-control" placeholder = "가격 입력">
					</td>
					<td>
						<input type = "text" class = "form-control" placeholder = "수량 입력">
					</td>
				</tr>
				<tr>
					<th>
						배송비
					</th>
					<td>
						<div class="custom-control custom-radio custom-control-inline">
							<input type = "radio" id="free" value="1" name = "delivery_cost" class = "custom-control-input"> 
							<label class = "custom-control-label text-secondary" for = "free">무료</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type = "radio" id="charge" value="2" name = "delivery_cost" class = "custom-control-input"> 
							<label class = "custom-control-label text-secondary" for = "charge">유료</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type = "radio" id="cod" value="3" name = "delivery_cost" class = "custom-control-input"> 
							<label class = "custom-control-label text-secondary" for = "cod">착불</label>
						</div>
					</td>
				</tr>
			</table>	
			<!-- 상품명, 가격, 수량, 배송비 입력  table 종료 -->
				
			<br>
			
			<!-- 은행, 예금주, 계좌번호 입력 table -->	
			<table  style = "width: 700px;">
				<tr>
					<th style = "width: 30%;"> 은행 선택 </th>
					<th colspan = 2 style = "width: 70%;"> 예금주 </th>
				</tr>
				<tr>
					<td>
						<select class="custom-select" style = "width: 150px;">
							<option value="">신한</option>
							<option value="">우리</option>
							<option value="">국민</option>
							<option value="">하나</option>
						</select>
					</td>
					<td>
						<input type = "text" class = "form-control" placeholder = "예금주명 입력">
					</td>
				</tr>
				
				<tr style = "height: 10px;"></tr>
				
				<tr>
					<td></td>
					<th>
						계좌 번호
					</th>
				</tr>
				<tr>
					<td></td>
					<td>
						<input type = "text" class = "form-control" placeholder = "계좌번호 입력">
					</td>
			</table>
			<!-- 은행, 예금주, 계좌번호 입력 table 종료 -->
			<br>
			
			<!-- 대표 사진 첨부  table -->
			<table style = "width: 700px;">
				<tr>
					<th colspan = 2>
						대표 사진
					</th>
				</tr>
				<tr>
					<td colspan = 2>
						<input type="file" class="form-control-file" onchange="readURL(this);">
					</td>
				</tr>
			</table>
			<!-- 대표 사진 첨부 table 종료 -->
			<hr>
			
			<!-- 사진 첨부  table -->
			<table  style = "width: 700px;" id = "photo_table">
				<tr style = "height: 10px;"></tr>
				<tr>
					<th>
						첨부 사진
					</th>
					<td class = "text-right">
						<button class = "btn-secondary" id = "add_photo">사진 추가</button>
						<button class = "btn-danger" id = "del_photo">사진 삭제</button>
					</td>
				</tr>
				<tr id = "added_photo">
					<td colspan = 2>
						<input type="file" class="form-control-file">
					</td>
				</tr>
			</table>		
			<!-- 사진 첨부  table 종료-->
				
			<hr>
			
			<!-- 카테고리 선택 table -->
			<table style = "width: 700px;">
				<tr>
					<th>
						<h5><b> 상품 상세 정보 </b></h5>
					</th>
				</tr>
				
				<tr>
					<th style = "height: 40px;"> 카테고리 </th>
				</tr>
				
				<tr>
					<td>
						<select class="custom-select" style = "width: 200px;">
							<option value="">카테고리 1</option>
							<option value="">카테고리 2</option>
							<option value="">카테고리 3</option>
							<option value="">카테고리 4</option>
						</select>
					</td>
				</tr>
			</table>
			<!-- 카테고리 선택 table 종료 -->
			<br>
			
			<table style = "width: 700px;">
				<tr>
					<td colspan = 3>
						<button class = "btn-secondary" id = "add_detail">추가</button>
						<button class = "btn-danger" id = "del_detail">삭제</button>
					</td>
				</tr>
				<tr style = "height: 10px"></tr>
			</table>
		
			<!-- detail 추가 table -->
			<table style = "width: 700px;" id = "detail_table">
				<tr id = "detail1">
					<td style = "width: 5%;" class= "text-center">
						<input type = "checkbox">
					</td>
					<td style = "width: 30%;">
						<input type="text" class="form-control" placeholder = "항목명" style = "width: 175px;" id = "detail_name1">
					</td>
					<td style = "width: 65%;">
						<input type="text" class="form-control" placeholder = "설명" id = "detail_explain1">
					</td>
				</tr>
			</table>
			<!-- detail 추가 table 종료 -->
			
			<br>
			
			<!-- 옵션 사용 여부 설정 table -->
			<table style = "width: 700px;">
				<tr style = "height: 50px;">
					<th> 옵션 </th>
				</tr>
				<tr>
					<td>
						<div class="custom-control custom-radio custom-control-inline">
							<input type = "radio" id="use_option" value="1" name = "use_option" class = "custom-control-input"> 
							<label class = "custom-control-label text-secondary" for = "use_option">사용</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type = "radio" id="unused_option" value="0" name = "use_option" class = "custom-control-input"> 
							<label class = "custom-control-label text-secondary" for = "unused_option">미사용</label>
						</div>
					</td>
				</tr>
			</table>
			<!-- 옵션 사용 여부 설정 table 종료 -->
			
			<br>
			
			<!-- 옵션 추가 여부 설정 table -->
			<div id = "select_opt_use" style = "display: none;">
				<table style = "width: 700px;">
					<tr>
						<td colspan = 5>
							<button class = "btn-secondary" id = "add_option">추가</button>
							<button class = "btn-danger" id = "del_option">삭제</button>
						</td>
					</tr>
				</table>
				<!-- 옵션 추가 영역 -->
				<div class = "option_area">
				<table style = "width: 700px;" id = "option_table1">
					<tr style = "height: 75px;">
						<td class= "text-center" style = "width: 50px;">
							<input type = "checkbox">
						</td>
						<td colspan = 2 style = "width: 275px;">
							<input type="text" class="form-control" id = "opt_name1" placeholder = "옵션명">
						</td>
						<td class = "text-right" colspan = 4 style = "width: 200px;">
							<button class = "btn-secondary" id = "add_optionDetail">상세옵션 추가</button>
							<button class = "btn-danger" id = "del_optionDetail">삭제</button>
						</td>
					</tr>
					<!-- 상세옵션 추가 영역 -->
					<tr>
						<td style = "width: 50px;"></td>
						
						<td style = "width: 200px;">
							<input type="text" class="form-control" id = "optd_choice1_1" placeholder = "상세옵션명">
						</td>
						<th class = "text-center" style = "width: 75px;"> 추가 금액 </th>
						
						<td style = "width: 150px;">
							<input type="text" class="form-control" id = "optd_price1_1" placeholder = "추가 금액" >	
						</td>
						
						<th class = "text-center" style = "width: 75px;"> 수량 </th>
						
						<td class = "text-center" style = "width: 75px;">
							<input type="text" class="form-control" id = "optd_quantity1_1" placeholder = "수량">	
						</td>
					</tr>
					<!-- 상세옵션 추가 영역 종료 -->
				</table>
				</div>
			</div>
				<!-- 옵션 추가 영역 종료 -->
			<br><br>
			
			<!-- 상품 상세정보 textarea -->
			<table style = "width: 700px;">
				<tr>
					<th> 상품 상세정보 입력 </th>
				</tr>
				<tr>
					<td>
						<textarea class = "form-control" rows = "20"></textarea>
					</td>
				</tr>
			</table>
			<!-- 상품 상세정보 textarea 종료 -->
			
			<br><br>
			
			<!-- 등록 / 취소 button -->
			<div class = "text-center">
				<button class = "btn-secondary"> 등록 </button>
				<button class = "btn-secondary"> 취소 </button>
			</div>
			<!-- 등록 / 취소 button 종료-->
			
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