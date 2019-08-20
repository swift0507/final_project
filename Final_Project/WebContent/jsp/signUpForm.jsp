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
	<link href = "/footer.css" rel="stylesheet" type="text/css">
	
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
	<script>
    $(document).ready(function(){
    	var idCheck = false;
    	var passCheck = false;
    	var addrCheck = false;
    	var genderCheck = false;
    	var gender;
    	var marketing = 0;
		
    	//검증 후 signUp ajax
    	$("#signUp").on("click", function(){
    		if(!idCheck){
    			alert("id를 확인해주세요.")
    			document.getElementById("mem_id").focus();
    		}
    		else if(!passCheck){
    			alert("비밀번호를 확인해주세요")
    			document.getElementById("passCheck").focus();
    		}
    		else if(!genderCheck){
    			alert("성별을 입력해주세요");
    		}
    		else if($("#mem_email").val()==""){
    			alert("email을 입력해주세요.")
    			document.getElementById("mem_email").focus();
    		}
    		else if($("#mem_phone").val()==""){
    			alert("핸드폰번호를 입력해주세요")
    			document.getElementById("mem_phone").focus();
    		}
    		else if(!addrCheck){
    			alert("우편번호를 입력해주세요");
    		}
    		else if($("#mem_remainaddr").val()==""){
    			alert("나머지 주소를 입력해주세요.")
    		}
    		else if(!$(":checkbox[id=infoAgree1]").is(":checked")){
    			alert("개인정보 제 3자 정보동의를 체크해주세요")
    		}
    		else if(!$(":checkbox[id=infoAgree2]").is(":checked")){
    			alert("개인정보 취급방침 동의를 체크해주세요.")
    		}
    		else{
    			var birth = $("#year").val()+"-"+$("#month").val()+"-"+$("#day").val()
    			if($(":checkbox[id=marketingAgree]").is(":checked")){
    				marketing = 1;
    			}
    			else{
    				marketing = 0;
    			}
    			$.ajax({
    				url : "signUp.do",
    				data : {mem_id : $("#mem_id").val(),
    						mem_pw : $("#mem_pw").val(),
    						mem_name : $("#mem_name").val(),
    						mem_birth : birth,
    						mem_email : $("#mem_email").val(),
    						mem_phone : $("#mem_phone").val(),
    						mem_zipcode : $("#mem_zipcode").val(),
    						mem_addr : $("#mem_addr").val(),
    						mem_remainaddr : $("#mem_remainaddr").val(),
    						mem_marketing : marketing,
    						mem_gender : gender
    						},
    				type : "post",
    				success : function(data){
    					alert("회원가입에 성공했습니다.");
    					window.location.assign("/Final_Project/loginForm.do")
    				}
    			})
    		}
    	})
    	
    	
    	//아이디중복확인 ajax
    	$("#mem_id").blur(function(){
    		if($("#mem_id").val()==""){
    			$("#mem_id").attr("class", "form-control")
    			$("#idCheckResult").text("")
    		}
    		else if($("#mem_id").val().search(/\s/) != -1){
    			alert("아이디에 공백이 들어갈 수 없습니다.")
    			$("#mem_id").val("");
    		}
    		else{
	    		$.ajax({
	    			url : "idCheck.do",
	    			data : {mem_id : $("#mem_id").val()},
	    			type : "get",
	    			success : function(data){
	    				if(data){
	    					$("#mem_id").attr("class", "form-control is-valid")
	    					$("#idCheckResult").text("사용가능한 아이디입니다.").attr("class", "valid-feedback");
	    					//.attr("class", "text-success").attr("style", "font-size : 12px")
	    					idCheck = true;
	    				}
	    				else{
	    					$("#mem_id").attr("class", "form-control is-invalid")
	    					$("#idCheckResult").text("중복된 아이디입니다.").attr("class", "invalid-feedback");
	    					idCheck = false;
	    				}
	    			}
	    		})
    		}
    	})
    	
    	//비밀번호 체크
    	$("#mem_pw").keyup(function(){
    		if($("#passCheck").val() != $("#mem_pw").val()){
    			$("#passCheck").attr("class", "form-control is-invalid")
				$("#passCheckResult").text("비밀번호가 일치하지 않습니다.").attr("class", "invalid-feedback");
    			passCheck = false;
    		}
    		else if($("#mem_pw").val()==""){
    			$("#passCheck").attr("class", "form-control")
    			$("#passCheckResult").text("")
    		}
    		
    		else{
    			$("#passCheck").attr("class", "form-control is-valid")
				$("#passCheckResult").text("비밀번호 일치").attr("class", "valid-feedback");
    			passCheck = true;
    		}
    	})
    	
    	$("#passCheck").keyup(function(){
    		//비밀번호가일치하지 않으면
    		if($("#passCheck").val() != $("#mem_pw").val()){
    			$("#passCheck").attr("class", "form-control is-invalid")
				$("#passCheckResult").text("비밀번호가 일치하지 않습니다.").attr("class", "invalid-feedback");
    			passCheck = false;
    		}
    		else if($("#passCheck").val()==""){
    			$("#passCheck").attr("class", "form-control")
    			$("#passCheckResult").text("")
    		}
    		else{
    			$("#passCheck").attr("class", "form-control is-valid")
				$("#passCheckResult").text("비밀번호 일치").attr("class", "valid-feedback");
    			passCheck = true;
    		}
    	});
    	
    	//라디오버튼 검증
    	$(":radio[name=gender]").on("click", function(){
    		gender = this.value;
    		genderCheck = $(":radio[name=gender]").is(":checked");
    		
    	})
    	
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
    	
    	//모두동의버튼
    	$("#agreeAll").on("click", function(){
    		//alert(this.checked)
    		//$("#infoAgree1").attr("checked", true);
    		//$("#infoAgree2").attr("checked", true);
    		//$("#marketingAgree").attr("checked", true);
    		if(this.checked){
	    		$("input:checkbox[name='check']").each(function(){
	    		this.checked = true;
	    		})
    		}
    	});
    	//모두동의하지 않을 시 모두동의버튼 빠지기
    	$("input:checkbox[name='check']").on("click", function(){
    		if(!this.checked){
    			document.getElementById("agreeAll").checked = false;
    		}
    	})
    	
    	//가입버튼
    	$("#signUp").on("click", function(){
    		
    	})
    })
    
</script>
</head>
<body>
	<table style = "width: 350px; margin-left: auto; margin-right: auto;">
		<tr style = "height: 30px;"></tr>
		<tr>
			<td colspan = 2 class = "text-center" style = "height: 100px;">
				<img src = "images/logo.png" style = "width: 160px; height: 60px;">
			</td>
		</tr>
		<tr>
			<td colspan=2 class = "text-left">
				<h4>
					<b>회원가입</b>
				</h4>
				<hr>
			</td>
		</tr>
		<tr class="align-baseline" style = "height:70px;">
			<td colspan=2>
				<input type="text" class="form-control" id="mem_id" placeholder="아이디">
				<div id="idCheckResult" class="valid-feedback"> </div>			 
			</td>
		</tr>
		<tr style = "height: 40px;">
			<td colspan = 2>
				<input type="password" class="form-control" id="mem_pw" placeholder="비밀번호">
			</td>
		</tr>
		<tr class="align-baseline" style = "height:70px;">
			<td colspan = 2>
				<input type="password" class="form-control" id="passCheck" placeholder="비밀번호 확인">
				<div id="passCheckResult" class="valid-feedback"></div>
			</td>
		</tr>
		<tr>
			<td colspan = 2>
				<input type = "text" class = "form-control" id="mem_name" placeholder = "이름">
			</td>
		</tr>
		<tr style = "height: 15px;"></tr>
		<tr>
			<th colspan = 2>생년월일 &nbsp;&nbsp;&nbsp; 
				<select class="custom-select-sm" id="year">
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
				</select> &nbsp; 년 
				<select class="custom-select-sm" id="month">
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
				</select> &nbsp; 월 
				<select class="custom-select-sm" id="day">
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
		<tr style = "height: 50px;">
			<td colspan = 2 class="text-center">
				<div class="custom-control custom-radio custom-control-inline">
					<input type = "radio" id="man" value="1" name = "gender" class = "custom-control-input"> 
					<label class = "custom-control-label text-secondary" for = "man">남자</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
					<input type = "radio" id="woman" value="2" name = "gender" class = "custom-control-input"> 
					<label class = "custom-control-label text-secondary" for = "woman">여자</label>
				</div>
			</td>
		</tr>
		<tr>
			<td colspan = 2>
				<input type = "email" class = "form-control" id = "mem_email" placeholder = "이메일">
			</td>
		</tr>
		<tr style = "height: 50px;">
			<td colspan=2>
				<input type="text" class="form-control" id="mem_phone" placeholder="휴대전화">
			</td>
		</tr>
		<tr style = "height: 50px;">
			<td style = "width: 150px;">
				<input type = "text" class = "form-control" id="mem_zipcode" readonly="readonly" placeholder = "우편번호">
			</td>
			<td style = "width: 150px;">
				<button class = "btn btn-sm btn-secondary btn-block" id="findZipcode" type = "button">우편번호 찾기</button>
			</td>
		</tr>
		<tr>
			<td colspan = 2>
				<input type="text" class="form-control" id="mem_addr" readonly="readonly" placeholder="주소">
			</td>
		</tr>
		<tr>
			<td colspan = 2>
				<input type="text" class="form-control" id="mem_remainaddr" placeholder="나머지 주소">
			</td>
		</tr>
		<tr style = "height: 30px;"></tr>
		<tr>
			<td colspan = 2>
				<input type ="checkbox" id="agreeAll" name="checkAll" class = "form-check-input"> 
				<label class = "form-check-label" for = "exampleCheck1">약관 전체 동의</label>
				<hr> 
				<input type = "checkbox" id="infoAgree1" name="check" class="form-check-input">
				<label class = "form-check-label" for="exampleCheck1">개인정보 제 3자 제공 정보 동의 (필수)</label> 					<br> 
				<input type = "checkbox" id="infoAgree2" name="check" class = "form-check-input">
				<label class = "form-check-label" for="exampleCheck1">개인정보 취급방침 동의 (필수)</label> 
				<br> 
				<input type = "checkbox" id="marketingAgree" name="check" class = "form-check-input"> 
				<label class = "form-check-label" for = "exampleCheck1">마케팅 정보 수신 동의 (선택)</label>			
			</td>
		</tr>
		<tr style = "height: 10px;"></tr>
		<tr>
			<td colspan = 2>
				<button class="btn btn-sm btn-secondary btn-block" id="signUp">가입</button>
			</td>
		</tr>
		<tr>
			<td colspan = 2>
				<button class="btn btn-sm btn-secondary btn-block" type="button" onclick="history.go(-1)">취소</button>
			</td>
		</tr>
	</table>
</body>
</html>