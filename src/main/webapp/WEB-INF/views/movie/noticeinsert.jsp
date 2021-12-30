<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>    
<!DOCTYPE html>
<div class="container">
	<div>
		<h2 class="h2" style="color: black;">
			<img src="/resources/images/notice1.jpg" style="height: 60px;" /> 공지사항
		</h2>            
	</div>	
</div>

<div class="panel-body">
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			 <div class="form-group" style="margin-left: 25px; margin-top:25px  ">
	      <label for="exampleSelect1" class="form-label mt-4">문의사항 선택</label>
	      <select class="form-select" id="exampleSelect1" name="Csc_Rfi">
	        <option>공지</option>
	        <option>코로나 19</option>
	        <option>무대인사</option>
	        <option>이벤트</option>
	        <option>분실물</option>
	      </select>
	    </div>
	    </div>
	    </div>
	    </div>
	<form action="" method="post" role="form">
		<div class="form-group">
			<label>Title</label> <input class="form-control" name="Info_Title">
		</div>
		<div class="form-group">
			<label>Content</label>
			<textarea class="form-control" rows="3" name="Info_Content"></textarea>
		</div>					
		<button type="submit" class="btn btn-info">작성완료</button>
		<button type="reset" class="btn btn-warning">초기화</button>
		<button type="button" class="btn btn-default" onclick="location.href='/movie/noticelist'">뒤로가기</button>
	</form>
	</div>











<%@include file="../includes/footer.jsp"%>