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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script type="text/javascript">
   $(document).ready(function(){
	   $("#find").on("click", function(){
		   //alert($("#year").val())
		   //alert($("#month").val())
		   //alert($("#day").val())
		   //alert($("#name").val())
		   //alert($("#email").val())
		   if($("#name").val()==""){
			   alert("이름을 입력하세요.")
		   }
		   else if($("#email").val()==""){
			   alert("이메일을 입력하세요.")
		   }
		   else{
			   var date = $("#year").val()+"-"+ $("#month").val()+"-"+$("#day").val();
			   //alert(date);
			   $.ajax({
				   url : "findId.do",
				   data : {mem_name : $("#name").val(), mem_birth : date, mem_email : $("#email").val()},
				   type : "post",
				   success : function(data){
					   alert(data);
				   }
			   })
		   }
	   })
	});
   
   </script>
	
</head>
<body>
	<table width=350 style="margin-left: auto; margin-right: auto;">
		<tr height=30></tr>
		<tr>
			<td colspan=2 align="center" height=100>
					<img src="images/logo.png" id="logo" width=160 height=60>
			</td>
		</tr>
		<tr>
			<td colspan=2 align="left">
				<h4>
					<b>아이디 찾기</b>
				</h4>
				<hr>
			</td>
		</tr>

		<tr>
			<td colspan=2><input type="text" class="form-control"
				id="name" placeholder="이름"></td>
		</tr>
		<tr height=15>
		</tr>
		<tr height=50>
			<th colspan=2>생년월일 &nbsp;&nbsp;&nbsp; <select
				class="custom-select-sm" id="year">
					<option value="1988">1988</option>
					<option value="1989">1989</option>
					<option value="1990">1990</option>
					<option value="1991">1991</option>
					<option value="1992">1992</option>
					<option value="1993">1993</option>
					<option value="1994">1994</option>
					<option value="1995">1995</option>
					<option value="1996">1996</option>
					<option value="1997">1997</option>
					<option value="1998">1998</option>
					<option value="1999">1999</option>
					<option value="2000">2000</option>
			</select> &nbsp; 년 <select class="custom-select-sm" id="month">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
			</select> &nbsp; 월 <select class="custom-select-sm" id="day">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
					<option value="10">10</option>
					<option value="11">11</option>
					<option value="12">12</option>
					<option value="13">13</option>
					<option value="14">14</option>
					<option value="15">15</option>
					<option value="16">16</option>
					<option value="17">17</option>
					<option value="18">18</option>
					<option value="19">19</option>
					<option value="20">20</option>
					<option value="21">21</option>
					<option value="22">22</option>
					<option value="23">23</option>
					<option value="24">24</option>
					<option value="25">25</option>
					<option value="26">26</option>
					<option value="27">27</option>
					<option value="28">28</option>
					<option value="29">29</option>
					<option value="30">30</option>
					<option value="31">31</option>
			</select> 일 &nbsp;
			</th>
		</tr>

		<tr height=50>
			<td colspan=2><input type="email" class="form-control"
				id="email" placeholder="이메일"></td>
		</tr>
		<tr height=30></tr>
		<tr>
			<td>
				<button class="btn btn-sm btn-secondary btn-block"
					id="find">찾기</button>
			</td>
			<td>
				<button class="btn btn-sm btn-secondary btn-block"
					type="button" onclick="history.go(-1)">취소</button>
			</td>
		</tr>
	</table>
</body>
</body>
</html>