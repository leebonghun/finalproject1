<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../includes/header.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<div style="margin-left: 100px;">
<h2  class="h1"   style=" color: black;"><img src="/resources/images/cscicon.png" style=" height:50px; " />고객 센터</h2>
</div>
<div style="margin-left: 100px; margin-right: 100px;">
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
		<form action="" method="post" role="form">
			 <div class="form-group" style="margin-left: 25px; margin-top:25px  ">
		 	<label><input type="radio" name="CSC_RFI" checked="checked" value="기타">기타</label>
			<label><input type="radio" name="CSC_RFI" value="예매 환불 및 취소">예매 환불 및 취소</label>
			<label><input type="radio" name="CSC_RFI" value="계정관련 문의">계정관련 문의</label>
			<label><input type="radio" name="CSC_RFI" value="분실물">분실물</label> 			
    </div>
			<!-- /.panel-heading -->
			<div class="panel-body">
			
					<div class="form-group">
						<label>Title</label> <input class="form-control" name="CSC_TITLE">
					</div>
					<div class="form-group">
						<label>Writer</label> <input class="form-control" name="user_id"  >
					</div>
					<div class="form-group">
						<label>Content</label>
						<textarea class="form-control" rows="3" name="CSC_CONTENT"></textarea>
					</div>	
					<input type="hidden" name="CSC_CHECK" value="[답변 대기중]">				
					 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
					<button type="submit" class="btn btn-info">작성완료</button>
					<button type="reset" class="btn btn-warning">초기화</button>
					<button type="button" class="btn btn-default" onclick="location.href='/movie/csclist'">뒤로가기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>

</body>
</html>
<%@include file="../includes/footer.jsp"%>