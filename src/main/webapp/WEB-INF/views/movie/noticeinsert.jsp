<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp" %>   
<link href="/resources/css/noticeinsert.css" rel='stylesheet' type='text/css' />
 <script>
 	$(".btn-info").click(function(){
 		swal('공지사항 등록이 완료되었습니다');
 	})
 
 
 </script>
<div class="container">
	<div>
		<h2 class="h2" style="color: black; font-weight: bold;">
			<img src="/resources/images/notice1.png" style="height: 60px;" /> 공지사항
		</h2>            
	</div>	
</div>
<div class="panel-body">
<div class="row">
	<div class="col-lg-12" style="padding-left: 0px; width: 880px;">
		<div class="panel panel-default">
				<form action="" method="post" role="form" id="insertForm">
		<div class="form-group" style="margin-left: 0px; margin-top:0px  ">
			<label style="font:sans-serif; color: black; padding: 3px; font-size: 16px;">사유를 선택해주세요.(기본값은 기타입니다.)</label>
			</div>
			 <div class="form-group" style="margin-left: 0px; margin-top:0px; font-size: 17px; font-weight: bold; color: black;">
		 	<label class="test_obj"><input type="radio" name="INFO_RFI" checked="checked" value="전체 공지"><span>전체 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="영화 관련 공지"><span>영화 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="코로나 19 관련 공지"><span>코로나 19 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="기타"><span>기타</span></label> 			
    </div>
		<div class="form-group">
			<label style="font:sans-serif; color: black; padding: 3px; font-size: 16px; font-weight: bold; ">제목</label> <input class="form-control" name="INFO_TITLE">
		</div>
		<div class="form-group">
			<label style="font:sans-serif; color: black; padding: 3px; font-size: 16px; font-weight: bold;">내용</label>
			<textarea class="form-control" rows="3" name="INFO_CONTENT"></textarea>
		</div>					
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
		<button type="submit" class="btn btn-info" id="insert" style="background-color: black; border-color: black;">작성완료</button>
		<button type="reset" class="btn btn-warning">초기화</button>
		<button type="button" class="btn btn-default" onclick="location.href='/movie/noticelist'">뒤로가기</button>
	</form>   
	</div>

		</div>
	</div>
</div>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>











<%@include file="../includes/footer.jsp"%>