<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<div class = "content">
<div class="bd-example">
    <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <div class="jumbotron">
            <!-- <h1 class="display-4">Event 1</h1>
            <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention
              to featured content or information.</p>
            <hr class="my-4">
            <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a> -->
            <!-- <img src="images/horizonbanner1.PNG" width=100% height=500px> -->
            <a href="${ mainbanner.banner_url }"><img src="images/${ mainbanner.banner_pict }" width=100%; height=300px;></a>
          </div>
        </div>
        <c:forEach var="banner" items="${ banners }">
        <div class="carousel-item">
          <div class="jumbotron">
            <!-- <h1 class="display-4">Event 2</h1>
            <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention
              to featured content or information.</p>
            <hr class="my-4">
            <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
            <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a> -->
            <a href="${ banner.banner_url }"><img src="images/${ banner.banner_pict }" width=100%; height=300px;></a>
          </div>
        </div>     
        </c:forEach>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
        <span class="carousel-control-next-icon"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>

  <div class="container">
    <h5><b>인기 상품</b></h5>
    <br>
    <div class="row">
      <div class="card-deck">
      <c:forEach var="popular" items="${ popular }">
      	<div class="card">
      	<a class="text-decoration-none text-secondary" href="prodView.do?prod_id=${ popular.prod_id }" target="_blank">
          <img src="getRepresentivePic.do?prod_id=${popular.prod_id}" class="card-img-top" width="200" height="200">
          <div class="card-body">
            <h5 class="card-title">${ popular.prod_name }</h5>
			<p class="card-text">${ popular.sel_id }</p>
			<h5 class="card-price">${ popular.prod_price }원</h5>
          </div>
          <div class="card-footer text-right">
           	<i class = "far fa-heart">${ popular.prod_pickCount }</i>
           	&nbsp;
            <i class = "far fa-comment-dots">${ popular.prod_reviewCount }</i>
          </div>
          </a>
        </div>
      </c:forEach>
        
        <!-- <div class="card">
          <img src="images/kw.png" class="card-img-top" alt="..." width="200" height="200">
          <div class="card-body">
            <h5 class="card-title">2nd</h5>
            <p class="card-text">Kiwoom Heroes</p>
          </div>
          <div class="card-footer text-right">
            <i class = "far fa-heart">10</i>
           	&nbsp;
            <i class = "far fa-comment-dots">12</i>
          </div>
        </div>
        <div class="card">
          <img src="images/ds.png" class="card-img-top" alt="..." width="200" height="200">
          <div class="card-body">
            <h5 class="card-title">3rd</h5>
            <p class="card-text">Doosan Bears</p>
          </div>
          <div class="card-footer text-right">
            <i class = "far fa-heart">10</i>
           	&nbsp;
            <i class = "far fa-comment-dots">12</i>
          </div>
        </div>
        <div class="card">
          <img src="images/lg.png" class="card-img-top" alt="..." width="200" height="200">
          <div class="card-body">
            <h5 class="card-title">4th</h5>
            <p class="card-text">LG Twins</p>
          </div>
          <div class="card-footer text-right">
            <i class = "far fa-heart">10</i>
           	&nbsp;
            <i class = "far fa-comment-dots">12</i>
          </div>
        </div>
        <div class="card">
          <img src="images/nc.png" class="card-img-top" alt="..." width="200" height="200">
          <div class="card-body">
            <h5 class="card-title">5th</h5>
            <p class="card-text">NC Dinos</p>
          </div>
          <div class="card-footer text-right">
            <i class = "far fa-heart">10</i>
          	&nbsp;
          	<i class = "far fa-comment-dots">12</i>
          </div>
        </div> -->
      </div>
    </div>
  </div>

  <hr>

  <div class="container">
      <h5><b>최근 등록 상품</b></h5>
      <br>
      <div class="row">
        <div class="card-deck">
          <c:forEach var="latest" items="${ latest }">
	      	<div class="card">
	      	<a class="text-decoration-none text-secondary" href="prodView.do?prod_id=${ latest.prod_id }" target="_blank">
	          <img src="getRepresentivePic.do?prod_id=${latest.prod_id}" class="card-img-top" width="200" height="200">
	          <div class="card-body">
	            <h5 class="card-title">${ latest.prod_name }</h5>
				<p class="card-text">${ latest.sel_id }</p>
				<h5 class="card-price">${ latest.prod_price }원</h5>
	          </div>
	          <div class="card-footer text-right">
	           	<i class = "far fa-heart">${ latest.prod_pickCount }</i>
	           	&nbsp;
	            <i class = "far fa-comment-dots">${ latest.prod_reviewCount }</i>
	          </div>
	          </a>
	        </div>
	      </c:forEach>
        </div>
      </div>
    </div>
</div>
<hr>
<!-- main body 종료 -->

<!-- footer -->
<footer>
	<jsp:include page="footer.jsp"></jsp:include>
</footer>
<!-- footer 종료 -->
</body>
</html>