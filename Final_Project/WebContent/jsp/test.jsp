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
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js" type="text/javascript"></script>
	</script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous">
	</script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous">
	</script>
    
     
    <script type="text/javascript">
        $(document).ready(function(){
            // 옵션추가 버튼 클릭시
            $("#addItemBtn").click(function(){
                // item 의 최대번호 구하기
                var lastItemNo = $("#example tr:last").attr("class").replace("item", "");
 
                var newitem = $("#example tr:eq(1)").clone();
                newitem.removeClass();
                newitem.find("td:eq(0)").attr("rowspan", "1");
                newitem.addClass("item"+(parseInt(lastItemNo)+1));
 
                $("#example").append(newitem);
            });
 
 
            // 항목추가 버튼 클릭시
            $(".addBtn").live("click", function(){
                var clickedRow = $(this).parent().parent();
                var cls = clickedRow.attr("class");
 
                // tr 복사해서 마지막에 추가
                var newrow = clickedRow.clone();
                newrow.find("td:eq(0)").remove();
                newrow.insertAfter($("#example ."+cls+":last"));
 
                // rowspan 조정
                resizeRowspan(cls);
            });
             
             
            // 삭제버튼 클릭시
            $(".delBtn").live("click", function(){
                var clickedRow = $(this).parent().parent();
                var cls = clickedRow.attr("class");
                 
                // 각 항목의 첫번째 row를 삭제한 경우 다음 row에 td 하나를 추가해 준다.
                if( clickedRow.find("td:eq(0)").attr("rowspan") ){
                    if( clickedRow.next().hasClass(cls) ){
                        clickedRow.next().prepend(clickedRow.find("td:eq(0)"));
                    }
                }
 
                clickedRow.remove();
 
                // rowspan 조정
                resizeRowspan(cls);
            });
 
            // cls : rowspan 을 조정할 class ex) item1, item2, ...
            function resizeRowspan(cls){
                var rowspan = $("."+cls).length;
                $("."+cls+":first td:eq(0)").attr("rowspan", rowspan);
            }
        });
    </script>
</head>
 
<body>
<button id="addItemBtn">옵션추가</button>
<table id="example" border = 1>
        <tr>
            <th>옵션명</th>
            <th>항목명</th>
            <th>필수항목</th>
            <th>가격</th>
            <th>재고</th>
            <th>옵션추가</th>
        </tr>
        <tr class="item1">
            <td class = "align-baseline"><input type="text" /><button class="addBtn">항목추가</button></td>
            <td><input type="text" /></td>
            <td><input type="checkbox" /></td>
            <td><input type="text" /></td>
            <td><input type="text" /></td>
            <td><button class="delBtn">삭제</button></td>
        </tr>
        <tr class="item2">
            <td class = "align-baseline"><input type="text" /><button class="addBtn">항목추가</button></td>
            <td><input type="text" /></td>
            <td><input type="checkbox" /></td>
            <td><input type="text" /></td>
            <td><input type="text" /></td>
            <td><button class="delBtn">삭제</button></td>
        </tr>
        <tr class="item3">
            <td class = "align-baseline"><input type="text" /><button class="addBtn">항목추가</button></td>
            <td><input type="text" /></td>
            <td><input type="checkbox" /></td>
            <td><input type="text" /></td>
            <td><input type="text" /></td>
            <td><button class="delBtn">삭제</button></td>
        </tr>
        <tr class="item4">
            <td class = "align-baseline"><input type="text" /><button class="addBtn">항목추가</button></td>
            <td><input type="text" /></td>
            <td><input type="checkbox" /></td>
            <td><input type="text" /></td>
            <td><input type="text" /></td>
            <td><button class="delBtn">삭제</button></td>
        </tr>
</table>
</body>
</html>  
