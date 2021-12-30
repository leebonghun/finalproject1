<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="" role="form">
				<div class="form-group">
						<label>글번호</label> <input class="form-control" name="INFO_BNO"
							readonly="readonly" value="${readdto.INFO_BNO }">
					</div>
					<div class="form-group">
						<label>제목</label> <input class="form-control" name="INFO_TITLE"
							readonly="readonly"value="${readdto.INFO_TITLE }" >
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" name="INFO_CONTENT"
							readonly="readonly">${readdto.INFO_CONTENT }</textarea>
					</div>
					
					<button type="button" class="btn btn-warning" id="modalModifyBtn" onclick="location.href='infomodify?INFO_BNO=${readdto.INFO_BNO}'">수정</button>						
					<button type="button" class="btn btn-default" onclick="location.href='/movie/noticelist'">뒤로가기</button>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>