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
<!-- header -->
<header>
	<jsp:include page="/jsp/header.jsp"></jsp:include>
</header>
<!-- header 종료 -->

<!-- main body -->
<div class = "content">
	<div class="container">
	  <div class="row">
	    <div class="col-3">
			<jsp:include page = "userSideMenu.jsp"></jsp:include>
		</div>
	    
	    <div class="col-8">
	    		<h5><b>찜 목록</b></h5>
			    <br><br>
	    	<div class = "row mx-auto">
	    		<c:forEach var="pick" items="${ pickList }">
					<div class="card ml-3 mb-3" style="width : 14rem;">
					<a class="text-decoration-none text-secondary" href="/Final_Project/prodView.do?prod_id=${ pick.prod_id }" target="_blank">
						<img src="/Final_Project/getRepresentivePic.do?prod_id=${pick.prod_id}" class="card-img-top" style="width:100; height:100;">
						<div class="card-body">
							<h5 class="card-title">${ pick.prod_name }</h5>
							<p class="card-text">${ pick.sel_id }</p>
							<h5 class="card-price">${ pick.prod_price }</h5>
						</div>
						<div class="card-footer text-right">
							<i class = "far fa-heart">10</i>
	           	 	 		&nbsp;
	              			<i class = "far fa-comment-dots">12</i>
						</div>
					</a>	
					</div>	
				</c:forEach> 
			
			<br>
			
	      </div>
			<div class="text-center">
				<button class="btn btn-sm btn-secondary"> 더보기  </button>
			</div>	
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