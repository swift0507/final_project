<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>핸쇼</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	if(location.pathname.search("/user") != -1 || location.pathname.search("/seller") != -1){
		$("#footerlogo").attr("src", "../images/logo.png")
	}
});

</script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
			<div class="navbar-nav">
				<a class="nav-item nav-link" href="/Final_Project/noticeList.do">공지사항</a> 
				<a class="nav-item nav-link" href="/Final_Project/user/contactWriteForm.do">문의하기</a> 
				<a class="nav-item nav-link" href="/Final_Project/faq.do">FAQ</a>
				<a class="nav-item nav-link" href="/Final_Project/privacyTerms.do">개인정보취급방침</a> 
				<a class="nav-item nav-link" href="/Final_Project/useTerms.do">이용약관</a>
			</div>
		</div>
	</nav>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="mx-auto d-sm-flex d-block flex-sm-nowrap">
			<div class="collapse navbar-collapse flex-grow-1 text-left text-white id = "header_nav">
				<table>
					<tr>
						<td style = "width: 300px;">
							<img src="images/logo.png" id="footerlogo" style = "width: 150px; height: 50px;">
						</td>
						<td style = "width: 500px;">
							<large>(주) 핸쇼</large>
							<address>서울시 강남구 테헤란로 212</address> 
							<small>대표번호 : 1234 - 5678</small> <br> 
							<small>사업자등록번호 : 123 - 45 - 67890</small> <br>
							<small>Copyright 2019 핸쇼 All rights reserved.</small> <br>
						</td>
						<td style = "width: 200px;"></td>
					</tr>
				</table>
			</div>
		</div>
	</nav>
</body>
</html>