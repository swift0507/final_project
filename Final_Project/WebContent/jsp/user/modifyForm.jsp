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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#findZipcode").on("click",function(){
   	     new daum.Postcode({
   	            oncomplete: function(data) {
   	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

   	                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
   	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
   	                var addr = ''; // 주소 변수

   	                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
   	                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
   	                    addr = data.roadAddress;
   	                } else { // 사용자가 지번 주소를 선택했을 경우(J)
   	                    addr = data.jibunAddress;
   	                }
   	               
   	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
   	                document.getElementById('mem_zipcode').value = data.zonecode;
   	                document.getElementById("mem_addr").value = addr;
   	                //$("#mem_zipcode").attr("readonly", "readonly");
   	                //$("#mem_addr").attr("readonly", "readonly");
   	                
   	                // 커서를 상세주소 필드로 이동한다.
   	                document.getElementById("mem_remainaddr").focus();
   	                addrCheck = true;
   	            }
   	        }).open();
   	});
		
		//엔터키랑 
		$("#mem_pw").keyup(function(key){
			if(key.keyCode==13){
				$("#resetPw").trigger("click");
			}
		})
		
		$("#resetPw").on("click", function(){
			if($("#resetPw").val()==""){
				alert("비밀번호를 입력하세요")
				return 
			}
			$.ajax({
				url : "passCheck.do",
				data : {mem_pw : $("#mem_pw").val()},
				type : "post",
				success : function(data){
					if(!data){
						alert("비밀번호가 틀립니다.")
					}
					else{
						 window.open("/Final_Project/resetPwForm.do?mem_id="+$("#mem_id").text(), "비밀번호 재설정",'width=500, height=500')
					}
				}
			})
		})
		$("#mem_pw").focus();
		
		//제출버튼
		$("#submit").on("click", function(){
			if($("#mem_email").val()==""){
				alert("이메일을 입력해주세요.")
			}
			else if($("#mem_phone").val()==""){
				alert("휴대폰 번호를 입력해주세요.")
			}
			else if($("#mem_remainaddr").val()==""){
				alert("주소를 입력해주세요.")
			}
			else{
				$.ajax({
					url : "modify.do",
					data : {mem_id : $("#mem_id").text(), mem_email : $("#mem_email").val(),
						mem_phone : $("#mem_phone").val(), mem_zipcode : $("#mem_zipcode").val(),
						mem_addr : $("#mem_addr").val(), mem_remainaddr : $("#mem_remainaddr").val()},
					type : "post",
					success : function(data){
						alert("수정이 완료되었습니다.")
						history.go(-1);
					}
				})
			}
		})
	})
	
	</script>
</head>
<body>
	<table style = "width: 350px; margin-left: auto; margin-right: auto;">
		<tr style = "width: 30px;"></tr>
		<tr>
			<td colspan = 2 class = "text-center" style = "height: 100px;">
				<a class="navbar-brand" href="/Final_Project/main.do">
					<img src = "../images/logo.png" style = "width: 160px; height: 60px;">
				</a>
			</td>
		</tr>
		<tr>
			<td colspan = 2 class = "text-left">
				<h4>
					<b>회원 정보 수정</b>
				</h4>
				<hr>
			</td>
		</tr>
		<tr>
			<th> 아이디 :  </th> 
			<td id="mem_id">${member.mem_id}</td>
		</tr>
		<tr style = "height: 10px;"></tr>
		<tr>
			<th> 이름 :  </th> 
			<td> ${member.mem_name} </td>
		</tr>
		<tr style = "height: 10px;"></tr>
		<tr style = "height: 40px;">
			<td colspan = 2>
				<input type = "password" id="mem_pw" class = "form-control" placeholder = "비밀번호">
			</td>
		</tr>
		<tr style = "height: 10px;"></tr> 
		<tr style = "height: 40px;">
			<td colspan = 2>
				<input type = "button" id="resetPw" class = "form-control btn-info" value="비밀번호 재설정">
			</td>
		</tr>
		<!-- <tr>
			<td colspan = 2>
				<input type = "password" class = "form-control" placeholder = "새 비밀번호 확인">
			</td>
		</tr> -->
		<tr style = "height: 20px;"></tr>
		<tr>
			<td colspan = 2>
				<input type = "email" class = "form-control" id="mem_email" placeholder="이메일" value="${member.mem_email}">
			</td>
		</tr>
		<tr style = "height: 50px;">
			<td colspan = 2>
				<input type = "text" class = "form-control" id="mem_phone" placeholder = "휴대전화" value="${member.mem_phone}">
			</td>
		</tr>
		<tr style = "height: 20px;"></tr>
		<tr style = "height: 50px;">
			<td style = "width: 150px;">
				<input type = "text" class = "form-control" id="mem_zipcode" readonly="readonly" value="${member.mem_zipcode}" placeholder = "우편번호">
			</td>
			<td style = "width: 150px;">
				<button class = "btn btn-sm btn-secondary btn-block" type = "button" id="findZipcode">우편번호 찾기</button>
			</td>
		</tr>
		<tr>
			<td colspan = 2>
				<input type = "text" class = "form-control" id="mem_addr" readonly="readonly" value="${member.mem_addr}" placeholder = "주소" >
			</td>
		</tr>
		<tr>
			<td colspan = 2>
				<input type = "text" class = "form-control" id="mem_remainaddr" value="${member.mem_remainaddr}" placeholder = "나머지 주소">
			</td>
		</tr>

		<tr style = "height: 20px;"></tr>
		<tr>
			<td colspan = 2>
				<button class = "btn btn-sm btn-secondary" type = "button" id="submit" style = "width: 170px;">수정</button>
				<button class = "btn btn-sm btn-secondary" type = "button"
						onclick = "history.go(-1)" style = "width: 170px;">취소</button>
			</td>
		</tr>
	</table>
</body>
</html>