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
<link href="footer.css" rel="stylesheet" type="text/css">
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
	<div class = "container">
		<div class = "row">
			<div class = "col-3">
				<jsp:include page = "userSideMenu.jsp"></jsp:include>
			</div>
			<div class = "col-8">
				<table style = "width: 700px;">
					<tr>
						<td>
							<h5><b>주문 내역</b></h5>
						</td>
					</tr>
					<tr>
						<td class = "text-right">
							<button class = "btn btn-sm btn-secondary">전체</button>
							<button class = "btn btn-sm btn-secondary">1개월</button>
							<button class = "btn btn-sm btn-secondary">3개월</button>
							<button class = "btn btn-sm btn-secondary">6개월</button>
							<button class = "btn btn-sm btn-secondary">1년</button>
						</td>
					</tr>
					<tr>
						<td><hr></td>
					</tr>
				</table>
				
				<table style = "width: 700px;">
				    <tr style = "height: 40px;">
				      <th colspan = 3>
				      	알록달록 캔들, 보라색 외 3개
				      </th>
				      <th class = "text-right">
				      	<button class = "btn btn-sm btn-danger">주문취소</button>
				      </th>
				    </tr>
				    <tr>
				      <td rowspan = 3>
				      	<img src = "images/sk.png" width = 100 height = 100>
				      </td>
				      <td> 상품명 : SK Wyverns </td>
				      <td rowspan = 3>
				      	<h5>1조 2500억 원</h5>
				      </td>
				      
				      <td rowspan = 3 class = "text-right">
				      	<button type="button" class="btn btn-ml btn-info" disabled>배송 준비중</button> 
				      </td>
				    </tr>
				    <tr>
				      <td> 주문날짜 : 2019-08-14 </td>
				    </tr>
				    <tr>
				      <td> 주문번호 : 123-456-78910 </td>
				    </tr>
				</table>
				
				<br>
				<hr>
				
				<table style = "width: 700px;">
				    <tr height = 40>
				      <th colspan = 3>
				      	알록달록 캔들, 보라색 외 3개
				      </th>
				      <th class = "text-right">
				      	
				      </th>
				    </tr>
				    <tr>
				      <td rowspan = 3>
				      	<img src = "images/sk.png" width = 100 height = 100>
				      </td>
				      <td> 상품명 : SK Wyverns </td>
				      <td rowspan = 3>
				      	<h5>1조 2500억 원</h5>
				      </td>
				      
				      <td rowspan = 3 class = "text-right">
				      	<button type="button" class="btn btn-ml btn-success" disabled>구매 확정</button> 
				      </td>
				    </tr>
				    <tr>
				      <td> 주문날짜 : 2019-08-14 </td>
				    </tr>
				    <tr>
				      <td> 주문번호 : 123-456-78910 </td>
				    </tr>
				</table>
				<br>
				<hr>
			</div>
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



