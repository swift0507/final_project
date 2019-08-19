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
	<table width=350 style="margin-left: auto; margin-right: auto;">
		<tr height=30></tr>
		<tr>
			<td colspan=2 align="center" height=100><img
				src="images/logo.png" width=160 height=60></td>
		</tr>
		<tr>
			<td colspan=2 align="left">
				<h4>
					<b>회원 정보 수정</b>
				</h4>
				<hr>
			</td>
		</tr>
		<tr>
			<th> 아이디 :  </th> <td>11hertz</td>
		</tr>
		<tr height = 10></tr>
		<tr>
			<th> 이름 :  </th> <td>이기훈</td>
		</tr>
		<tr height = 10></tr>
		<tr height=40>
			<td colspan=2><input type="password" class="form-control"
				placeholder="비밀번호" aria-describedby="sizing-addon1"></td>
		</tr>
		<tr height=30></tr>
		<tr height=40>
			<td colspan=2><input type="password" class="form-control"
				placeholder="새 비밀번호" aria-describedby="sizing-addon1"></td>
		</tr>
		<tr>
			<td colspan=2><input type="password" class="form-control"
				placeholder="새 비밀번호 확인" aria-describedby="sizing-addon1"></td>
		</tr>
		<tr height=20></tr>
		<tr>
			<td colspan=2><input type="email" class="form-control"
				id="exampleInputEmail1" aria-describedby="emailHelp"
				placeholder="이메일"></td>
		</tr>
		<tr height=50>
			<td colspan=2><input type="text" class="form-control"
				placeholder="휴대전화" aria-describedby="sizing-addon1"></td>
		</tr>
		<tr height=20></tr>
		<tr height=50>
			<td width=150><input type="text" class="form-control"
				placeholder="우편번호" aria-describedby="sizing-addon1"></td>
			<td width=150><button id="btn-Yes"
					class="btn btn-sm btn-secondary btn-block" type="button">우편번호
					찾기</button></td>
		</tr>
		<tr>
			<td colspan=2><input type="text" class="form-control"
				placeholder="주소" aria-describedby="sizing-addon1"></td>
		</tr>
		<tr>
			<td colspan=2><input type="text" class="form-control"
				placeholder="나머지 주소" aria-describedby="sizing-addon1"></td>
		</tr>

		<tr height=20></tr>
		<tr>
			<td colspan=2>
				<button class="btn btn-sm btn-secondary" type="submit" style = "width: 170px;">수정</button>
				<button class="btn btn-sm btn-secondary" type="button"
						onclick="history.go(-1)" style = "width: 170px;">취소</button>
			</td>
		</tr>
	</table>
</body>
</html>