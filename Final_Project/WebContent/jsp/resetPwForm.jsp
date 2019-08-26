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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
 
 <script type="text/javascript">
 $(document).ready(function(){
	$("#cancel").on("click", function(){
		window.close();
	})
	 
	$("#resetPw").on("click", function(){
		   if($("#password").val()==""){
			   alert("비밀번호를 입력하세요")
		   }
		   else if($("#passwordCheck").val()==""){
			   alert("비밀번호 확인을 입력하세요.")
		   }
		   else if($("#password").val()!=$("#passwordCheck").val()){
			   alert("비밀번호가 일치하지 않습니다.")
		   }
		   else{
			   $.ajax({
				   url : "resetPw.do",
				   data : {mem_pw : $("#password").val(), mem_id : $("#mem_id").val()},
				   type : "post",
				   success : function(data){
					   if(data){
						   alert("비밀번호 변경이 완료되었습니다.")
						   window.opener.parent.location.href="loginForm.do";
						   //window.opener.parent.history.go(-1);
						   window.close();
					   }
				   }
			   })
		   }
	   })
 });
 
 </script>
</head>
<body>
	<input type="hidden" id="mem_id" value="${mem_id}">
	<table width=350 style="margin-left: auto; margin-right: auto;">
		<tr height=30></tr>
		<tr>
			<td colspan=2 align="center" height=100><img
				src="images/logo.png" width=160 height=60></td>
		</tr>
		<tr>
			<td colspan=2 align="left">
				<h4>
					<b>비밀번호 재설정</b>
				</h4>
				<hr>
			</td>
		</tr>
		<tr height=10></tr>
		<tr height=40>
			<td colspan=2><input type="password" class="form-control"
				placeholder="새 비밀번호" id="password" aria-describedby="sizing-addon1"></td>
		</tr>
		<tr>
			<td colspan=2><input type="password" class="form-control"
				placeholder="새 비밀번호 확인" id="passwordCheck" aria-describedby="sizing-addon1"></td>
		</tr>
		<tr height=10></tr>
	
		<tr height=20></tr>
		<tr>
			<td colspan=2>
				<button class="btn btn-sm btn-secondary" id="resetPw" style = "width: 170px;">확인</button>
				<button class="btn btn-sm btn-secondary" type="button"
						id="cancel" style = "width: 170px;">취소</button>
			</td>
		</tr>
	</table>
</body>
</html>