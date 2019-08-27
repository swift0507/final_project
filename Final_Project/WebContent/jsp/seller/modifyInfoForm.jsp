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
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	
	<script>
	$(document).ready(function(){
		
		var addrCheck = false;
		
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
   	                document.getElementById('reg_zipcode').value = data.zonecode;
   	                document.getElementById("reg_addr").value = addr;
   	                //$("#mem_zipcode").attr("readonly", "readonly");
   	                //$("#mem_addr").attr("readonly", "readonly");
   	                
   	                // 커서를 상세주소 필드로 이동한다.
   	                document.getElementById("reg_remainaddr").focus();
   	                addrCheck = true;
   	            }
   	        }).open();
   		});
	})
	
	</script>
	
	
</head>
<body>
	<!-- header -->
	<header>
		<jsp:include page="/jsp/header.jsp"></jsp:include>
	</header>
	<!-- header 종료 -->
	
	<!-- main body -->
	
	
	<!-- 
	    sel_id varchar2(20) primary key,    --판매자 아이디
	    sel_email varchar2(30) not null,    --판매자 전용 이메일
	    sel_phone varchar2(15) not null,    --판매자 전용 연락처
	    sel_bank varchar2(10) not null,    --판매자 은행명
	    sel_account varchar2(20) not null,    --판매자 계좌번호
	    sel_depositor varchar2(30) not null,    --판매자 예금주
	    sel_pict varchar2(300) not null,    --판매자 신분증 사진
	    sel_fee number not null,    --개별 배송비 디폴트값
	    sel_free number not null,    --배송비 무료 조건 가격
	    sel_addcost number not null,    --도서산간 추가 배송비
	    sel_bancount number default 0 not null,    --판매자의 상품 제재 횟수
	
		-- 사업자 판매자 정보 테이블
	
	    reg_id varchar2(20) not null,    --사업자 판매자 아이디
	    reg_no varchar2(30) not null,    --사업자등록증 번호
	    reg_name varchar2(30) not null,    --상호명
	    reg_addr varchar2(50) not null,    --사업자 등록주소
	    reg_remainaddr varchar2(50) not null,    --사업자 등록 나머지 주소
	    reg_pict varchar2(300) not null,    --사업자등록증 사진 첨부 
	-->

	<div class = "content">
		<div class = "container">
			<div class = "row">
				<div class = "col-3">
					<jsp:include page = "sideBar.jsp"></jsp:include>
				</div>
				<div class = "col-8">
					<!-- 사장님 정보 수정 header table -->
					<table class = "mt-4" style = "width: 700px;">
						<tr>
							<td>
								<h5><b>사장님 정보 수정</b></h5>
								<hr>
							</td>
						</tr>
					</table>
					<!-- 사장님 정보 수정 header table 종료-->
					
					<!-- 사장님 정보 수정 table -->
					<table style = "width: 500px;">
						<tr>
							<th style = "width: 45%;">아이디  ID</th>
							<th style = "width: 50;">이름  이름</th>
							<td style = "width: 5%;"></td>
						</tr>
						
						<tr style = "height: 30px;"></tr>
						
						<tr>
							<th> 
								이메일
							</th>
							<td>
								<input type = "email" class = "form-control" placeholder = "이메일">
							</td>
							<td></td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<th> 
								휴대폰번호 
							</th>
							<td>
								<input type = "tel" class = "form-control" placeholder = "휴대폰 번호">
							</td>
							<td></td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<th> 
								개별 배송비 설정 
							</th>
							<td>
								<input type = "text" class = "form-control" placeholder = "개별 배송비">
							</td>
							<td class = "text-center">원</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<th> 
								배송비 무료 조건
							</th>
							<td>
								<input type = "text" class = "form-control" placeholder = "배송비 무료 조건">
							</td>
							<td class = "text-center">원</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<th> 도서산간 배송비 설정 </th>
							<td>
								<input type = "text" class = "form-control" placeholder = "도서산간 배송비 설정">
							</td>
							<td class = "text-center">원</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr class = "text-right" style = "height: 75px;">
							<td colspan = 3>
								<button class = "btn btn-sm btn-secondary"> 저장 </button>
								<button class = "btn btn-sm btn-danger"> 취소 </button>
							</td>
						</tr>
					</table>
					<!-- 사장님 정보 수정 table 종료 -->
					
					
					<!-- 사장님 정보 수정 요청 form -->
					<table class = "mt-5" style = "width: 500px;">
						<tr>
							<th style = "width: 45%"> 
								은행 선택 
							</th>
							<td style = "width: 15%">
								<select class="custom-select" style = "width: 150px;">
									<option value="">신한</option>
									<option value="">우리</option>
									<option value="">국민</option>
									<option value="">하나</option>
								</select>
							</td>
							<th class = "text-center" style = "width: 20%"> 
								예금주 
							</th>
							<td style = "width: 30%">
								<input type = "text" class = "form-control" placeholder = "예금주명 입력">
							</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<th>
								계좌 번호 
							</th>
							<td colspan = 3>
								<input type = "text" class = "form-control" placeholder = "계좌번호 입력">
							</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<th>
								신분증 첨부 
							</th>
							<td colspan = 3>
								<input type = "file" class = "form-control">
							</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<th>
								사업자 등록번호 
							</th>
							<td colspan = 3>
								<input type = "text" class = "form-control" placeholder = "사업자 등록번호 입력">
							</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<th>
								상호명 
							</th>
							<td colspan = 3>
								<input type = "text" class = "form-control" placeholder = "상호명 입력">
							</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<th> 주소 </th>
							<td colspan = 2>
								<input type = "text" class = "form-control" id="reg_zipcode" readonly="readonly" placeholder = "우편번호">
							</td>
							<td class = "text-center">
								<button class = "btn btn-sm btn-secondary" id="findZipcode" type = "button" style = "width: 125px;">우편번호 찾기</button>
							</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<td></td>
							<td colspan = 3>
								<input type="text" class="form-control" id="reg_addr" readonly="readonly" placeholder="주소">
							</td>
							
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<td></td>
							<td colspan = 3>
								<input type="text" class="form-control" id="reg_remainaddr" placeholder="나머지 주소">
							</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr>
							<th>
								사업자 등록증 첨부
							</th>
							<td colspan = 3>
								<input type = "file" class = "form-control">
							</td>
						</tr>
						
						<tr style = "height: 10px;"></tr>
						
						<tr class = "text-right" style = "height: 75px;">
							<td colspan = 4>
								<button class = "btn btn-sm btn-secondary"> 수정 요청 </button>
								<button class = "btn btn-sm btn-danger"> 취소 </button>
							</td>	
						</tr>
					</table>
					<!-- 사장님 정보 수정 요청 form 종료 -->
					
					<br><br>
					
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