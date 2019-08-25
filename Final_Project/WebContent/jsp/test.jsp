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
    
     
    <script type="text/javascript">
        $(document).ready(function(){
        
        	var option_count = 1;
        	var suboption_count = 1;
        	
        	
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
        	
        	$('#del_option').on('click', function(){
        		option_count -= 1;
        		
        		$('.option_area table').last().remove();
        	})
        	
        	
        	
        	
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
        	
        	$(document).on('click', '#del_optionDetail', function(){
        		suboption_count -= 1;
        		
        		$(this).parent().parent().siblings().last().remove();
        	})
        });
    </script>
</head>
 
<body>

	<table style = "width: 700px;">
		<tr>
			<td colspan = 5>
				<button class = "btn-secondary" id = "add_option">추가</button>
				<button class = "btn-danger" id = "del_option">삭제</button>
			</td>
		</tr>
	</table>
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
	</table>
	</div>
</body>
</html>  
