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
</head>
<body>
	<table style = "width: 400px; margin-left: auto; margin-right: auto;">
		<tr style = "height: 50px;"></tr>
		<tr>
			<td>
				<h5><b>후기 신고</b></h5>
			</td>
		</tr>
		<tr>
			<td> 
				<hr> 
			</td>
		</tr>
		<tr>
			<td>
				<select class="custom-select" style = "width: 400px;">
					<option value="rreport_reason_01"> 욕설, 폭언 </option>
					<option value="rreport_reason_02"> 광고글, 선정적 </option>
					<option value="rreport_reason_03"> 도배 </option>
					<option value="rreport_reason_04"> 무분별 상품 비판 </option>
					<option value="rreport_reason_05"> 기타 </option>
				</select>
			</td>
		</tr>
		<tr>
			<td>
				<textarea class = "form-control" rows = "10" id = "comment" placeholder = "내용을 입력해주세요"></textarea>
			</td>
		</tr>
		<tr style = "height: 20px;"></tr>
		<tr>
			<td class = "text-center">
				<button class="btn btn-sm btn-secondary" style = "width: 75px;" type="submit">등록</button>
				<button class="btn btn-sm btn-secondary" style = "width: 75px;" type="button">취소</button>
			</td>
		</tr>
	</table>	
</body>
</html>