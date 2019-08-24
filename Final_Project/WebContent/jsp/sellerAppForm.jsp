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
	<jsp:include page="header.jsp"></jsp:include>
</header>
<!-- header 종료 -->

<!-- main body -->
<div class="container">
  <div class="row">
    <div class="col-3">
		<table style = "width: 175px;">
			<tr>
				<th>
					<h5><b><i class = "fas fa-info-circle"></i> &nbsp;&nbsp;쇼핑 이용 정보</b></h5>
				</th>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block">
						<i class="fas fa-heart"></i> 찜 목록
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block">
						<i class="fas fa-shopping-cart"></i> 장바구니
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block">
						<i class="fa fa-list-alt"></i> 주문 내역
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block">
						<i class="fas fa-pencil-alt"></i> 나의 후기
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-secondary btn-block">
						<i class="far fa-question-circle"></i> 나의 Q&A
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-success btn-block">
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
					<button class="btn btn-sm btn-outline-secondary btn-block">
						<i class="fas fa-user-edit"></i> 개인 정보 수정
					</button>
				</td>
			</tr>
			<tr>
				<td>
					<button class="btn btn-sm btn-outline-danger btn-block">
						<i class="fas fa-sign-out-alt"></i> 회원 탈퇴
					</button>
				</td>
			</tr>
		</table>				
    </div>
    
    <div class="col-6">
      <table style = "width: 500px;">
          <tr height = 30></tr>
          <tr>
            <td colspan = 6>
                <h5><b>사장님 신청</b></h5>
                <hr>
            </td>
          </tr>

          <tr height = 50>
            <td colspan = 3>
              <b> 아이디 : </b> <span> 11hertz </span>
            </td>
            <td colspan = 3>
              <b> 이름 : </b> <span> 이기훈 </span>
            </td>
          </tr>

          <tr height = 50>
            <td colspan = 3>
              <input type="email" class="form-control" placeholder="이메일">
            </td>
            <td colspan = 3>
              <input type="tel" class="form-control" placeholder="전화번호">
            </td>
          </tr>

          <tr height = 50>
            <th>제목</th>
            <td colspan = 5>
              <input type = "text" class = "form-control" placeholder = "제목">
            </td>
          </tr>

          <tr>
            <td colspan = 6>
              <textarea class="form-control" rows="10"></textarea>
            </td>
          </tr>

          <tr height = 30></tr>

          <tr height = 30>
            <th colspan = 2> 신분증 첨부 </th>
            <td colspan = 2>
              <input type="file" class="form-control-file">
            </td>
          </tr>

          <tr height = 30>
            <th colspan = 2 >사업자 등록증 첨부 </th>
            <td colspan = 2>
              <input type="file" class="form-control-file">
            </td>
          </tr>

          <tr height = 30>
            <th colspan = 2> 그 외 추가 자료 </th>
            <td colspan = 2>
              <input type="file" class="form-control-file">
            </td>
          </tr>

          <tr height = 30></tr>

          <tr>
            <td colspan = 6>
              <input type="checkbox" class="form-check-input">
              <label class="form-check-label" for="exampleCheck1">개인정보 제 3자 제공 정보 동의 (필수)</label>
              <br>
              <input type="checkbox" class="form-check-input">
              <label class="form-check-label" for="exampleCheck1">허위정보 처벌 관련 동의 (필수)</label>  
            </td>
          </tr>
        
          <tr height = 60>
            <td colspan = 6>
              <b>추가 정보 필요 시 기재하신 연락처를 통해 연락 드립니다</b>
            </td>
          </tr>
          <tr style = "text-align: center;">
            <td colspan = 6>
            <button class="btn btn-sm btn-secondary" type="submit" style = "width: 150px;">제출</button>
            <button class="btn btn-sm btn-secondary" type="button" style = "width: 150px;" onclick = "history.go(-1)">취소</button>
          </td>
          </tr>
        </table>
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