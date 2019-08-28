<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">	
  <title>핸쇼</title>
  <script type="text/javascript">
  
$(document).ready(function(){
	$('#manageMain').on('click', function() {
		location.href='manageMain.do';
	});
	$('#prodManage').on('click', function() {
		location.href='prodManage.do';
	});
	$('#orderManage').on('click', function() {
		location.href='orderManage.do';
	});
	$('#modifyInfoForm').on('click', function() {
		location.href='modifyInfoForm.do';
	});
});
  </script>

</head>
<body>
	<table style = "width: 175px; margin-left: auto; margin-right: auto;">
		<tr style = "height: 30px;"></tr>
		<tr>
			<td>
				<button class = "btn btn-sm btn-outline-secondary btn-block" id="manageMain">
					<i class = "fas fa-home"></i> HOME
				</button>
			</td>
		</tr>
		<tr>
			<td>
				<button class = "btn btn-sm btn-outline-secondary btn-block" id="prodManage">
					<i class = "fas fa-box-open"></i> 등록 상품 관리
				</button>
			</td>
		</tr>
		<tr>
			<td>
				<button class = "btn btn-sm btn-outline-secondary btn-block" id="orderManage">
					<i class = "fas fa-book"></i> 주문 관리
				</button>
			</td>
		</tr>
		<tr>
			<td>
				<button class = "btn btn-sm btn-outline-secondary btn-block">
					<i class = "fas fa-chart-line"></i> 데이터 분석실
				</button>
			</td>
		</tr>
		<tr>
			<td>
				<button class = "btn btn-sm btn-outline-secondary btn-block" id="modifyInfoForm">
					<i class = "fas fa-wrench"></i> 사장님 정보 수정
				</button>
			</td>
		</tr>
	</table>
</body>
</html>