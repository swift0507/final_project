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
	<jsp:include page="header.jsp"></jsp:include>
</header>
<!-- header 종료 -->

<!-- main body -->
	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col-6">
				<h4>회원 정보 수정</h4>
				<hr>
				<br>
				<div id = "input_pw">
					<input type="password" class="form-control" placeholder="비밀번호" style = "width: 250px;">
				</div>
				<br><br>
				<div id = "buttons">
					<button class="btn btn-sm btn-secondary" type="submit" style = "width: 100px;">확인</button>
    				<button class="btn btn-sm btn-secondary" type="button" onclick="history.go(-1)" style = "width: 100px;">취소</button>
				</div>
			</div>
			<div class="col"></div>
		</div>
	</div>
	<!-- main body 종료 -->

<!-- footer -->
<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
<!-- footer 종료 -->
</body>
</html>