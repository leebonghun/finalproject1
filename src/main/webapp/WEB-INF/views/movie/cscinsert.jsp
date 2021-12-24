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
			 <div class="form-group" style="margin-left: 25px; margin-top:25px  ">
      <label for="exampleSelect1" class="form-label mt-4">문의사항 선택</label>
      <select class="form-select" id="exampleSelect1">
        <option>기타</option>
        <option>단체관람 및 문의</option>
        <option>예매 환불 및 취소</option>
        <option>계정관련 문의</option>
        <option>분실물</option>
      </select>
    </div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<form action="" method="post" role="form">
					<div class="form-group">
						<label>Title</label> <input class="form-control" name="title">
					</div>
					<div class="form-group">
						<label>Writer</label> <input class="form-control" name="writer"  readonly>
					</div>
					<div class="form-group">
						<label>Content</label>
						<textarea class="form-control" rows="3" name="content"></textarea>
					</div>					
					<button type="submit" class="btn btn-info">작성완료</button>
					<button type="reset" class="btn btn-warning">초기화</button>
					<button type="button" class="btn btn-default" onclick="location.href='/movie/csclist'">뒤로가기</button>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- 첨부파일 등록 -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading"><i class="fa fa-files-o"></i>파일첨부</div>
			<div class="panel-body">
				<div class="form-group uploadDiv">
					<input type="file" name="uploadFile" id="" multiple/>
				</div>
				<div class="uploadResult">
					<ul></ul>
				</div>
			</div>
		</div>
	</div>	
</div>
</div>
</body>
</html>
<%@include file="../includes/footer.jsp"%>