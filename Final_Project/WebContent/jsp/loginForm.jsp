<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel='stylesheet'
	href='https://use.fontawesome.com/releases/v5.7.0/css/all.css'
	integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ'
	crossorigin='anonymous'>

<title>핸쇼</title>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#loginCheck").on("click", function(){
		if($("#mem_id").val()==""){
			alert("아이디를 입력해주세요.");
		}
		else if($("#mem_pw").val()==""){
			alert("비밀번호를 입력해주세요.");
		}
		else{
			$.ajax({
				//true면 이동 false면 안이동
				url : "login.do",
				data : {mem_id : $("#mem_id").val(), mem_pw :$("#mem_pw").val()},
				type : "post",
				success : function(data){
					var result = data;
					if(!result){
						alert("아이디 또는 비밀번호가 일치하지 않습니다..")
					}
					else{
						window.location.assign($('#targetURL').attr('value'));
					}
				}
			});
		}
	});
	
	
});
</script>
</head>
<body>
	<input type="hidden" value= '${targetURL}' id='targetURL'>
    <!-- <form action="login.do" method="post"> -->
    <table style="margin-left: auto; margin-right: auto; width : 350px;">
        <tr>
            <td colspan = 2 height = 100></td>
        </tr>
        <tr>
            <td colspan = 2 align = "center" height = 100>
            	<img src = "images/logo.png" width = 160 height = 60>
            </td>
        </tr>
        <tr>
            <td colspan = 2>
                <input type="text" id="mem_id" class="form-control" placeholder="아이디" aria-describedby="sizing-addon1">
            </td>
        </tr>
        <tr>
            <td colspan = 2>
                <input type="password" id="mem_pw" class="form-control" placeholder="비밀번호" aria-describedby="sizing-addon1">
            </td>
        </tr>
        <tr>
            <td height = 50><input type="checkbox"> 아이디 저장 </td>
            <td align = "right">
                <a href="findIdForm.do" class="text-decoration-none text-secondary"> 아이디 </a>
                / 
                <a href="findPwForm.do" class="text-decoration-none text-secondary"> 비밀번호 찾기 </a></td>
        </tr>
        <tr>
            <td colspan = 2><button class="btn btn-sm btn-outline-secondary btn-block" type="button" id="loginCheck">로그인</button></td>
        </tr>
        <tr>
            <td colspan = 2><button class="btn btn-sm btn-outline-secondary btn-block" type="button" onclick="location.href='signUpForm.do'">회원가입</button></td>
        </tr>
    </table>
    <!-- </form>	 -->
</body>
</html>