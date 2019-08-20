<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<!-- header -->
<header>
	<jsp:include page="header.jsp"></jsp:include>
</header>
<!-- header 종료 -->

<!-- main body -->

	<div class = "container">
		<div class = "row">
			<div class = "col-3">
				<jsp:include page = "supportSideMenu.jsp"></jsp:include>
			</div>
			
			<div class = "col-8">
				<h5><b>공지사항</b></h5>
				<hr>
			
				<div class = "data1">
					<p>
					ㅁ 핸쇼 지원 OS 버전 안내 드립니다. <br>
					<br>
					안녕하세요 핸쇼입니다. <br>
					
					원활하고 안정적인 서비스 제공을 위해 구버전 OS의 지원을 중단할 예정입니다. <br>
					더 나은 서비스를 위한 결정임을 이해 부탁드립니다. <br>
					<br>
					자세한 내용은 아래와 같습니다. <br>
					<br>
					<br>
					권장 사용 OS 환경 <br>
					<br>
					iOS <br>
					- iOS 10.0 이상 <br>
					<br>
					Android <br>
					- Android OS 4.4 이상 <br>
					<br> 
					위 버전보다 낮은 OS를 사용하시는 경우, 아이디어스 앱의 최신 버전 업데이트가 불가능하지만 <br>
					서비스 이용을 못하게 되는 것을 의미하지는 않습니다. <br>
					다만, OS 업그레이드가 지속적으로 진행되지 않을 경우, <br> 
					사용 중인 아이디어스 앱이 지원 중단 버전에 포함되어 서비스 이용이 어려울 수 있습니다. <br>
					<br>
					최신 OS로 업데이트하여 더욱 안정적인 서비스를 이용 부탁드립니다. <br>
					<br>
 					감사합니다.<br>
					</p>
				</div>
				
			</div>
			
		</div>
	</div>

<!-- main body 종료 -->

<!-- footer -->
<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
<!-- footer 종료 -->
</body>
</html>