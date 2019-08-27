<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>핸쇼</title>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#notice").on("click", function(){
			location.href = "/Final_Project/noticeList.do"
		})
		$("#faq").on("click", function(){
			location.href = "/Final_Project/faq.do"
		})
		$("#contactWrite").on("click", function(){
			location.href = "/Final_Project/user/contactWriteForm.do"
		})
		$("#myContact").on("click", function(){
			location.href = "/Final_Project/user/myContact.do"
		})
	})
	</script>
</head>
<body>
	<table style = "width: 175px; margin-left: auto; margin-right: auto;">
		<tr>
			<td>
				<button class="btn btn-sm btn-outline-secondary btn-block" id = "notice">
					<i class="fas fa-info-circle"></i> 공지사항
				</button>
			</td>
		</tr>
		<tr>
			<td>
				<button class="btn btn-sm btn-outline-secondary btn-block" id="faq">
					<i class="far fa-question-circle"></i> 자주 묻는 질문
				</button>
			</td>
		</tr>
		<tr>
			<td>
				<button class="btn btn-sm btn-outline-secondary btn-block" id="contactWrite">
					<i class="fas fa-mail-bulk"></i> 1:1 문의
				</button>
			</td>
		</tr>
		<tr>
			<td>
				<button class="btn btn-sm btn-outline-secondary btn-block" id="myContact">
					<i class="fas fa-clipboard-list"></i> 나의 문의 내역
				</button>
			</td>
		</tr>
	</table>
</body>
</html>