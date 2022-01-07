<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp" %>   
<link href="/resources/css/noticeinsert.css" rel='stylesheet' type='text/css' />
 
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
				<form action="" method="post" role="form">
		<div class="form-group" style="margin-left: 0px; margin-top:0px  ">
			<label style="font:sans-serif; color: black; padding: 3px">사유를 선택해주세요.(기본값은 기타입니다.)</label>
			</div>
			 <div class="form-group" style="margin-left: 0px; margin-top:0px  ">
		 	<label class="test_obj"><input type="radio" name="INFO_RFI" checked="checked" value="전체 공지"><span>전체 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="영화 관련 공지"><span>영화 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="코로나 19 관련 공지"><span>코로나 19 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="기타"><span>기타</span></label> 			
    </div>
		<div class="form-group">
			<label style="font:sans-serif; color: black; padding: 3px">제목</label> <input class="form-control" name="INFO_TITLE">
		</div>
		<div class="form-group">
			<label style="font:sans-serif; color: black; padding: 3px">내용</label>
			<textarea class="form-control" rows="3" name="INFO_CONTENT"></textarea>
		</div>					
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
		<sec:authorize access="hasRole('ROLE_ADMIN')" >
		<button type="submit" class="btn btn-info">작성완료</button>
		<button type="reset" class="btn btn-warning">초기화</button>
		</sec:authorize>
		<button type="button" class="btn btn-default" onclick="location.href='/movie/noticelist'">뒤로가기</button>
	</form>
	</div>

		</div>
	</div>
</div>












<%@include file="../includes/footer.jsp"%>