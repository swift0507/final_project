<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>핸쇼</title>
</head>
<script type="text/javascript">
$(document).ready(function(){
	$('#pickList').on('click', function() {
		location.href='pickList.do';
	});
	$('#basket').on('click', function() {
		location.href='basket.do';
	});
	$('#orderList').on('click', function() {
		location.href='orderList.do';
	});
	$('#myReview').on('click', function() {
		location.href='myReview.do';
	});
	$('#myQnA').on('click', function() {
		location.href='myQnA.do';
	});
	$('#applySeller').on('click', function() {
		window.open('https://www.naver.com');
	});
	$('#modifyConfirm').on('click', function() {
		location.href='modifyConfirm.do';
	});
	$('#leaveForm').on('click', function() {
		location.href='leaveForm.do';
	});
});
</script>
<body>
		<table style = "width: 175px;">
			
			<tr>
				<th>
					<h5><b><i class = "fas fa-info-circle"></i> &nbsp;&nbsp;쇼핑 이용 정보</b></h5>
				</th>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block" id="pickList">
						<i class="far fa-heart"></i> 찜 목록
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block" id="basket">
						<i class="fas fa-shopping-cart"></i> 장바구니
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block" id="orderList">
						<i class="fa fa-list-alt"></i> 주문 내역
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block" id="myReview">
						<i class="fas fa-pencil-alt"></i> 나의 후기
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block" id="myQnA">
						<i class="far fa-question-circle"></i> 나의 Q&A
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block" id="applySeller">
						<i class="fas fa-user-tie"></i> 사장님 신청
					</button>
				</td>
			</tr>
		</table>
		<br>
		<br>
		<table style = "width: 175px;">
			<tr>
				<th>
					<h5><b><i class = "fas fa-cog"></i> &nbsp; 개인 정보 관리</b></h5>
				</th>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-info btn-block" id="modifyConfirm">
						<i class="fas fa-user-edit"></i> 개인 정보 수정
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-danger btn-block" id="leaveForm">
						<i class="fas fa-sign-out-alt"></i> 회원 탈퇴
					</button>
				</td>
			</tr>
		</table>	
</body>
</html>