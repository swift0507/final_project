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
            	<a class="navbar-brand" href="/Final_Project/main.do">
					<img src="/Final_Project/images/logo.png" id="logo" width=160 height=60>
				</a>
            </td>
        </tr>
        
        <tr>
        	<td colspan = 2>
        		Admin Login
        	</td>
        </tr>
        
        <tr>
            <td colspan = 2>
                <input type="text" id="mem_id" class="form-control" placeholder="아이디">
            </td>
        </tr>
        
        <tr>
            <td colspan = 2>
                <input type="password" id="mem_pw" class="form-control" placeholder="비밀번호">
            </td>
        </tr>
        
        <tr style = "height: 50px;">
            <td><input type="checkbox"> 아이디 저장 </td>
            <td align = "right">
                <a href="" class="text-decoration-none text-secondary"> 아이디 </a>
                / 
                <a href="" class="text-decoration-none text-secondary"> 비밀번호 찾기 </a></td>
        </tr>
        
        <tr style = "height: 50px;">
            <td colspan = 2><button class="btn btn-sm btn-outline-secondary btn-block" type="button" id="">로그인</button></td>
        </tr>
        
        <tr>
            <td colspan = 2><button class="btn btn-sm btn-secondary btn-block" type="button" disabled>관리자 아이디 생성 문의 : 010-0000-000 </button></td>
        </tr>
    </table>
    <!-- </form>	 -->
</body>
</html>