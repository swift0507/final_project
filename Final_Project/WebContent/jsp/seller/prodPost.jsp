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
			var input_detail_form = '<div id = "detail_table">';
				input_detail_form += '<table style = "width: 700px;">';
				input_detail_form += '<tr id = "detail">';
				input_detail_form += '<td style = "width: 5%;" class= "text-center">';
				input_detail_form += '<input type = "checkbox">'
				input_detail_form += '</td>'
				input_detail_form += '<td style = "width: 30%;">'
				input_detail_form += '<input type="text" class="form-control detail_name" placeholder = "항목명" style = "width: 175px;"' + 'id = "detail_name">';
				input_detail_form += '</td>'
				input_detail_form += '<td style = "width: 65%;">'
				input_detail_form += '<input type="text" class="form-control detail_explain" placeholder = "설명"' + 'id = "detail_explain">';
				input_detail_form += '</td>'
				input_detail_form += '</tr>'
				input_detail_form += '</table>'
				input_detail_form += '</div>'
			/* detail 추가 폼 종료 */
			
			$('#detail_table').append(input_detail_form);
		})
		/* detail 입력 폼 추가 Script 종료 */
		
		/* detail 입력 폼 삭제 Script */
		$('#del_detail').click(function(){
			if(detail_count > 1) {
				detail_count -= 1;
				$('#detail_table tr').last().remove();
			} else {
				alert('한 개 이상의 옵션을 지정하셔야 합니다.');	
			}
		})
		/* detail 입력 폼 삭제 Script 종료 */
		
		
		/* 옵션 사용시 기본으로 생성될 테이블 */
		var opt_default = '<div>';
		opt_default += '<table style = "width: 700px;" class = "opt_add_del">';
		opt_default += '<tr>';
		opt_default += '<td colspan = 5>';
		opt_default += '<button class = "btn-secondary" id = "add_option">추가</button>';
		opt_default += '&nbsp;';
		opt_default += '<button class = "btn-danger" id = "del_option">삭제</button>';
		opt_default += '</td>';
		opt_default += '</tr>';
		opt_default += '</table>';
		opt_default += '<table style = "width: 700px;" class = "option_table">';
		opt_default += '<tr style = "height: 75px;">';
		opt_default += '<td class= "text-center" style = "width: 50px;">';
		opt_default += '<input type = "checkbox">';
		opt_default += '</td>';
		opt_default += '<td colspan = 2 style = "width: 275px;">';
		opt_default += '<input type="text" class="form-control opt_name" id = "opt_name" placeholder = "옵션명">';
		opt_default += '</td>';
		opt_default += '<td class = "text-right" colspan = 4 style = "width: 200px;">';
		opt_default += '<input type = "hidden" value = 1>';
		opt_default += '<button class = "btn-secondary" id = "add_optionDetail">상세옵션 추가</button>';
		opt_default += '&nbsp;';
		opt_default += '<button class = "btn-danger" id = "del_optionDetail">삭제</button>';
		opt_default += '</td>';
		opt_default += '</tr>';
		opt_default += '';
		opt_default += '<tr class = "sub_option">';
		opt_default += '<td style = "width: 50px;"></td>';
		opt_default += '<td style = "width: 200px;">';
		opt_default += '<input type="text" class="form-control optd_choice" id = "optd_choice" placeholder = "상세옵션명">';
		opt_default += '</td>';
		opt_default += '<th class = "text-center" style = "width: 75px;"> 추가 금액 </th>';
		opt_default += '<td style = "width: 150px;">';
		opt_default += '<input type="text" class="form-control optd_price" id = "optd_price" placeholder = "추가 금액">';
		opt_default += '</td>';
		opt_default += '<th class = "text-center" style = "width: 75px;"> 수량 </th>';
		opt_default += '<td class = "text-center" style = "width: 75px;">';
		opt_default += '<input type="text" class="form-control optd_quantity" id = "optd_quantity" placeholder = "수량">	';
		opt_default += '</td>';
		opt_default += '</tr>';
		opt_default += '</table>';
		opt_default += '</div>';
		/* 옵션 사용시 기본으로 생성될 테이블 종료 */
		
		/* 옵션 사용 여부 Script */
		$(document).on('click', '#use_option', function(){
   			$('.option_area').append(opt_default);
   		})
   			
   		$(document).on('click', '#unused_option', function(){
   			$('.option_area').children().remove();
   		})
   		/* 옵션 사용 여부 Script 종료 */
		
		
		var option_count = 1;
		
        /* 옵션 폼 추가 Script */
        	$(document).on('click', '#add_option', function(){
        		option_count += 1;
    			
        		var option = '<div>';
        		option += '<table style = "width: 700px;" class = "option_table">';
        		option += '<tr style = "height: 75px;">';
        		option += '<td class= "text-center" style = "width: 50px;">';
        		option += '<input type = "checkbox">';
        		option += '</td>';
        		option += '<td colspan = 2 style = "width: 275px;">';
        		option += '<input type="text" class="form-control opt_name" id = "opt_name" placeholder = "옵션명">';
        		option += '</td>';
        		option += '<td class = "text-right" colspan = 4 style = "width: 200px;">';
        		option += '<input type = "hidden" value = 1>';
        		option += '<button class = "btn-secondary" id = "add_optionDetail">상세옵션 추가</button>';
        		option += '&nbsp;';
        		option += '<button class = "btn-danger" id = "del_optionDetail">삭제</button>';
        		option += '</td>';
        		option += '</tr>';
        		option += '<tr>';
        		option += '<td style = "width: 50px;"></td>';
        		option += '<td style = "width: 200px;">';
        		option += '<input type="text" class="form-control optd_choice" id = "optd_choice" placeholder = "상세옵션명">';
        		option += '</td>';
        		option += '<th class = "text-center" style = "width: 75px;"> 추가 금액 </th>';
        		option += '<td style = "width: 150px;">';
        		option += '<input type="text" class="form-control optd_price" id = "optd_price" placeholder = "추가 금액">';
        		option += '</td>';
        		option += '<th class = "text-center" style = "width: 75px;"> 수량 </th>';
        		option += '<td class = "text-center" style = "width: 75px;">';
        		option += '<input type="text" class="form-control optd_quantity" id = "optd_quantity" placeholder = "수량">';
        		option += '</td>';
        		option += '</tr>';
        		option += '</table>';
        		option += '</div>';
        		
        		$('.option_area').last().append(option);

        		console.log(option_count);
        	})
        	/* 옵션 폼 추가 Script 종료 */
        	
        	
        	/* 옵션 폼 삭제 Script */
        	$(document).on('click', '#del_option', function(){
        		if(option_count > 1) {
        			option_count -= 1;
        			$('.option_area table').last().remove();
    			} else {
    				alert('한 개 이상의 옵션을 지정하셔야 합니다.');	
    			}
        	})
        	/* 옵션 폼 삭제 Script 종료 */
        	
        	
        	/* 상세 옵션 폼 추가 Script */
        	$(document).on('click','#add_optionDetail', function(){
    
        		var sub_option = '<tr>';
        		sub_option += '<td style = "width: 50px;"></td>';
        		sub_option += '<td style = "width: 200px;">';
        		sub_option += '<input type="text" class="form-control optd_choice" id = "optd_choice" placeholder = "상세옵션명">';
        		sub_option += '</td>';
        		sub_option += '<th class = "text-center" style = "width: 75px;"> 추가 금액 </th>';
        		sub_option += '<td style = "width: 150px;">';
        		sub_option += '<input type="text" class="form-control optd_price" id = "optd_price" placeholder = "추가 금액">';
        		sub_option += '</td>';
        		sub_option += '<th class = "text-center" style = "width: 75px;"> 수량 </th>';
        		sub_option += '<td class = "text-center" style = "width: 75px;">';
        		sub_option += '<input type="text" class="form-control optd_quantity" id = "optd_quantity" placeholder = "수량">';
        		sub_option += '</td>';
        		sub_option += '</tr>';
        		
        		var suboption_count = parseInt($(this).prev().val());
        		suboption_count += 1;
        		$(this).prev().removeAttr('value');
        		$(this).prev().attr('value', suboption_count);
        		$(this).parent().parent().parent().last().append(sub_option);
        		console.log(suboption_count);
        	})
			/* 상세 옵션 폼 추가 Script 종료 */

        	
        	/* 상세 옵션 폼 삭제 Script */
        	$(document).on('click', '#del_optionDetail', function(){
        		var suboption_count = parseInt($(this).prev().prev().val());
        		if(suboption_count > 1) {
        			suboption_count -= 1;
            		$(this).prev().prev().removeAttr('value');
            		$(this).prev().prev().attr('value', suboption_count);
        			$(this).parent().parent().siblings().last().remove();
    			} else {
    				alert('한 개 이상의 옵션을 지정하셔야 합니다.');	
    			}
        		console.log(suboption_count);
        	})
        	/* 상세 옵션 폼 삭제 Script 종료 */
        	
        	$(document).on("click", "input[name='use_option']:checked", function(){
        	//옵션사용이 안 되면
        		if($(this).val()==0){
        			//옵션명 '상품을 선택하세요' / 상세 옵션명 : 상품이름 / 수량은 수량폼
        			$("#nooption_quantity").attr("readonly", false);
        			$("#nooption_quantity").val("");
        		}
        		else{
        			//수량 disabled
        			$("#nooption_quantity").attr("readonly", "readonly");
        			$("#nooption_quantity").val(" ");
        		}
        	})
        	
        	$(document).on("click", "#post", function(){
        		var prod_id = 6;
        		//상품 넣고
        		
        		/*
        		$.ajax({
        			url : "insertProd.do",
        			data : {sel_id : "${loginUserInfo.mem_id}", prod_name : $("#prod_name").val(),
        				prod_content : $("#prod_content").val(), prod_price : $("#prod_price").val(),
        				category_id : $("#category").val(), prod_bank : $("#prod_bank").val(),
        				prod_account : $("#prod_account").val(), prod_depositor : $("#prod_depositor").val()},
        			type : "post",
        			async : false,
        			success : function(data){
        				//prod_id를 리턴한다. 
        				prod_id = data.prod_id;
        				alert(prod_id)
        			}
        		})
        		*/
        		
        		//배송비조건
        		$('input[name="delivery_cost"]:checked').val();
        		//상품을 다 넣으면 prod_id를 리턴. 받은 prod_id로 사진, 옵션을 넣는다
    			
        		//사진 넣고
        		
        		
        		//alert($('input[name="use_option"]:checked').val()); //이 값이 0이면 미사용 1이면 사용
        		//옵션 미사용이면 옵션 이름은 '상품을 선택하세요' / '위의 수량이 옵션 수량으로'
        		
        		/*
        		//옵션 미사용일 때 작업
        		if($('input[name="use_option"]:checked').val()==0){
        			//alert("상품을 선택하세요") //옵션명 이름으로 들어갈 문자열
        			//alert($("#nooption_quantity").val()) //옵션 수량으로 들어갈 수량
        			//alert($("#prod_name").val()) //상세옵션명으로 들어갈 이름
        			$.ajax({
        				url : "prodoptionInsert.do",
        				data : {prod_id : prod_id, opt_name : "상품을 선택하세요", opt_order : 1},
        				type : "post",
        				success : function(data){
        					//data는 opt_id를 들고 와야 한다. 잘 가져왔다.
        					alert(data.opt_id)
        					//옵션상세 넣기
        					$.ajax({
        						url : "optionDetailInsert.do",
        						data : {opt_id : data.opt_id, optd_choice : $("#prod_name").val(), optd_price : 0, optd_quantity : $("#nooption_quantity").val()},
        						type : "post",
        						success : function(data){
        							alert(data.optd_id)
        						}
        					})
        				}
        			})
        		}
        		
        		//옵션사용일때
        		else{
					//opt_name : 옵션명 / optd_choice : 상세옵션명 / optd_price : 추가금액 / optd_quantity : 수량
	        		//옵션별로 가지고 온다. 
	        		var order = 1;
	        		$(".opt_name").each(function(){
	        			//개수를 구해서 배열의 index로 집어넣는다. 
	        			var length = $(this).parentsUntil("div").find($(".optd_choice")).length
	        			var optd_choice_array =  new Array();
	        			var optd_price_array =  new Array();
	        			var optd_quantity_array =  new Array();
	        			//길이를 기억해두고 배열에 각자 넣고 포문돌면서 넣으면 돼
	        			$(this).parentsUntil("div").find($(".optd_choice")).each(function(){
	        				//얘가 여러 개가 들어감
	        				optd_choice_array.push($(this).val())
	        			})
	        			$(this).parentsUntil("div").find($(".optd_price")).each(function(){
	        				//얘가 여러 개가 들어감
	        				optd_price_array.push($(this).val())
	        			})
	        			$(this).parentsUntil("div").find($(".optd_quantity")).each(function(){
	        				//얘가 여러 개가 들어감
	        				optd_quantity_array.push($(this).val())
	        			})
	        			//여기까지 잘 받아와짐 
	        			//옵션넣기
	        			$.ajax({
        				url : "prodoptionInsert.do",
        				data : {prod_id : prod_id, opt_name : $(this).val(), opt_order : order},
        				type : "post",
        				async : true,
        				success : function(data){
        					//data는 opt_id를 들고 와야 한다. 잘 가져왔다.
        					alert(data.opt_id)
        					//옵션상세 넣기
		        			for(var i=0; i<length; i++){
		        				//이거도 잘 됌 다받아옴
		        				//옵션디테일 넣기
	        					$.ajax({
	        						url : "optionDetailInsert.do",
	        						data : {opt_id : data.opt_id, optd_choice : optd_choice_array[i], optd_price : optd_price_array[i], optd_quantity : optd_quantity_array[i]},
	        						type : "post",
	        						async : true,
	        						success : function(data){
	        							//alert(data.optd_id)
	        						}
	        					})
		        			}
        					
        				}
        				//순서버튼
        			})
        				order++;
	        		})
        		}//else 종료 옵션 넣기 종료 여기까지 테스트 완료 ---------------------------------------------------------------------------------
        		*/
        		
        		//세부설명 넣기
        		//detail_name : 항목명 / detail_explain : 설명
        		$(".detail_name").each(function(){
        			alert($(this).val())
        			alert($(this).parentsUntil("div").find(".detail_explain").val())
        			$.ajax({
        				url : "detailInsert.do",
        				data : {prod_id : prod_id, detail_name : $(this).val(), detail_explain : $(this).parentsUntil("div").find(".detail_explain").val()},
        				type : "post",
        				async : true,
        				success : function(data){
        					alert("성공");
        				}
        			})
        		})
        	})
        	
        	$("#cancel").on("click", function(){
        		history.go(-1)
        	})
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
						<input type = "text" class = "form-control" id="prod_name" placeholder = "상품명을 입력하세요">
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
						<input type = "text" class = "form-control" id="prod_price" placeholder = "가격 입력">
					</td>
					<td>
						<input type = "text" class = "form-control" id="nooption_quantity" placeholder = "수량 입력"> 
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
							<input type = "radio" id="charge" value="2" name = "delivery_cost" checked="checked" class = "custom-control-input"> 
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
						<select class="custom-select" id="prod_bank" style = "width: 150px;">
							<option value="신한">신한</option>
							<option value="우리">우리</option>
							<option value="국민">국민</option>
							<option value="하나">하나</option>
						</select>
					</td>
					<td>
						<input type = "text" class = "form-control" id="prod_depositor" placeholder = "예금주명 입력">
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
						<input type = "text" class = "form-control" id="prod_account" placeholder = "계좌번호 입력">
					</td>
				</tr>
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
						<select class="custom-select" id="category" style = "width: 200px;">
						<c:forEach var="category" items="${categoryList}">
							<option value="${category.category_id}">${category.category_name}</option>
						</c:forEach>
							<!-- <option value="">카테고리 2</option>
							<option value="">카테고리 3</option>
							<option value="">카테고리 4</option> -->
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
			<div id = "detail_table">
			<table style = "width: 700px;">
				<tr id = "detail1">
					<td style = "width: 5%;" class= "text-center">
						<input type = "checkbox">
					</td>
					<td style = "width: 30%;">
						<input type="text" class="form-control detail_name" placeholder = "항목명" style = "width: 175px;" id = "detail_name">
					</td>
					<td style = "width: 65%;">
						<input type="text" class="form-control detail_explain" placeholder = "설명" id = "detail_explain">
					</td>
				</tr>
			</table>
			</div>
			
			
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
							<input type = "radio" id="unused_option" value="0" name = "use_option" checked="checked" class = "custom-control-input optionCheck"> 
							<label class = "custom-control-label text-secondary" for = "unused_option">미사용</label>
						</div>
					</td>
				</tr>
			</table>
			<!-- 옵션 사용 여부 설정 table 종료 -->
			
			<br>
			
			
			<!-- 옵션 추가 영역 -->
			<div class = "option_area">
				
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
						<textarea class = "form-control" rows = "20" id="prod_content"></textarea>
					</td>
				</tr>
			</table>
			<!-- 상품 상세정보 textarea 종료 -->
			
			<br><br>
			
			<!-- 등록 / 취소 button -->
			<div class = "text-center">
				<button class = "btn-secondary" id="post"> 등록 </button>
				<button class = "btn-secondary" id="cancel"> 취소 </button>
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