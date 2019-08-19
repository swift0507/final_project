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
<div class = "content">
	<div class="container">
		<div class="row">
			<div class="col"></div>
			<div class="col-8">
				<h4>회원 탈퇴</h4>
				<div class="alert alert-danger">
					<p>
						회원탈퇴 신청하기 전에 확인해주세요. <br> 
						탈퇴 후 회원정보 및 이용기록은 모두 삭제되며, 다시 복구 할 수 없습니다. <br> 
						작성한 구매후기와 결제 내역은 이용약관과 관련법에 의해 보관됩니다. <br>
					</p>
					<hr>
					<p class="mb-0">동일한 SNS계정과 이메일을 사용한 재가입은 24시간 이내에는 불가능합니다.</p>
				</div>
				<div id = "input_pw">
					<input type="password" class="form-control" placeholder="비밀번호" style = "width: 250px;">
					<input type="password" class="form-control" placeholder="비밀번호 확인" style = "width: 250px;">
				</div>
				<br>
				<div id = "buttons">
					<button class="btn btn-sm btn-secondary" type="submit">회원탈퇴</button>
    				<button class="btn btn-sm btn-secondary" type="button" onclick="history.go(-1)">취소</button>
				</div>
			</div>
			<div class="col"></div>
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