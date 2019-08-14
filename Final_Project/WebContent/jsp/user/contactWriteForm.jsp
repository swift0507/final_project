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
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>	
</head>
<body>
<!-- header -->
<header>
	<jsp:include page="/jsp/header.jsp"></jsp:include>
</header>
<!-- header 종료 -->

<!-- main body -->
	<div class = "container">
		<div class = "row">
			<div class = "col-3">
			<br>
			<jsp:include page = "/jsp/supportSideMenu.jsp"></jsp:include>
			</div>
			<div class = "col-7">
			<br>
				<h5><b>1:1 문의</b></h5>
				
				<table class = "table" style = "width: 600px;">
					<tr>
						<th rowspan = 2>문의 유형</th>
						<td>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="customRadioInline1"
								name="customRadioInline1" class="custom-control-input"> 
								<label class="custom-control-label text-secondary"
								for="customRadioInline1">배송 관련</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="customRadioInline2"
								name="customRadioInline1" class="custom-control-input"> 
								<label class="custom-control-label text-secondary"
								for="customRadioInline2">상품 관련</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="customRadioInline3"
								name="customRadioInline1" class="custom-control-input"> 
								<label class="custom-control-label text-secondary"
								for="customRadioInline3">교환/환불/반품</label>
							</div>
						</td>
					</tr>
					<tr>
						<td>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="customRadioInline4"
								name="customRadioInline1" class="custom-control-input"> 
								<label class="custom-control-label text-secondary"
								for="customRadioInline4">회원정보 관련</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="customRadioInline5"
								name="customRadioInline1" class="custom-control-input"> 
								<label class="custom-control-label text-secondary"
								for="customRadioInline5">사이트 이용 관련</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="customRadioInline6"
								name="customRadioInline1" class="custom-control-input"> 
								<label class="custom-control-label text-secondary"
								for="customRadioInline6">건의사항</label>
							</div>	
						</td>
					</tr>
					<tr>
						<th> 관련 상품 선택 </th>
						<td>
							<select class="custom-select custom-select-sm">
	 							<option selected>상품 선택</option>
	  							<option value="item1">Item 1</option>
	  							<option value="item2">Item 2</option>
	  							<option value="item3">Item 3</option>
							</select>
						</td>
					</tr>
					<tr>
						<th> 제목 </th>
						<td>
							<input class="form-control form-control-sm" type="text" placeholder="제목">
						</td>
					</tr>
					<tr>
						<th> 내용 </th>
						<td>
							<textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
						</td>
					</tr>
					<tr>
						<th> 파일 첨부 </th>
						<td>
							<input type="file" class="form-control-file">
						</td>
					</tr>
					<tr>
						<td colspan = 2 class = "text-center">
							<button class = "btn btn-sm btn-secondary btn" type = "submit">문의하기</button>
							<button class = "btn btn-sm btn-secondary btn" type = "button"
									onclick = "history.go(-1)">취소</button>
						</td>
				</table>
			</div>
		</div>
	</div>
<!-- main body 종료-->

<!-- footer -->
<footer>
	<jsp:include page="/jsp/footer.jsp"></jsp:include>
</footer>
<!-- footer 종료 -->
</body>
</html>

