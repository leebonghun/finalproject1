<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../includes/header.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script >

</script>
</head>
<body>
<div style="margin-left: 100px;">
<h2  class="h1"   style=" color: black;"><img src="/resources/images/cscicon.png" style=" height:50px; " />고객 센터</h2>
</div>
<div style="margin-left: 100px; margin-right: 100px;">
<div class="row">
	<div class="col-lg-12">
	</div>
	<!-- /.col-lg-12 -->
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="" role="form">
				<div class="form-group">
						<label>글번호</label> <input class="form-control" name="bno"
							readonly="readonly" >
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name="writer"
							readonly="readonly" >
					</div>
					<div class="form-group">
						<label>사유</label> <input class="form-control" name="bno"
							readonly="readonly" >
					</div>
					<div class="form-group">
						<label>제목</label> <input class="form-control" name="title"
							readonly="readonly" >
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" name="content"
							readonly="readonly"></textarea>
					</div>
					
					<%-- 로그인한 사용자가 글을 작성한 작성자냐? --%>
					<%-- <sec:authentication property="principal" var="info" />
					<sec:authorize access="isAuthenticated()">
					<c:if test="${info.username == dto.writer }">
						<button type="button" class="btn btn-default">Modify</button>
					</c:if>
					</sec:authorize> --%>
					<button type="button" class="btn btn-default" onclick="location.href='/movie/csclist'">뒤로가기</button>
					<div class="form-group">
						<label>답변 내용</label>
						<textarea class="form-control" rows="3" name="content"
							readonly="readonly">답변 대기중...</textarea>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</div>
</body>
</html>
<%@include file="../includes/footer.jsp"%>