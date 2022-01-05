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
				<form action="" method="post" role="form">
		<div class="form-group" style="margin-left: 0px; margin-top:0px  ">
			<label>사유를 선택해주세요.(기본값은 기타입니다.)</label>
			</div>
			 <div class="form-group" style="margin-left: 0px; margin-top:0px  ">
		 	<label class="test_obj"><input type="radio" name="INFO_RFI" checked="checked" value="전체 공지"><span>전체 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="예매 환불 및 취소"><span>영화 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="계정관련 문의"><span>코로나 19 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="기타"><span>기타</span></label> 			
    </div>
		<div class="form-group">
			<label>Title</label> <input class="form-control" name="INFO_TITLE">
		</div>
		<div class="form-group">
			<label>Content</label>
			<textarea class="form-control" rows="3" name="INFO_CONTENT"></textarea>
		</div>					
		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
		<button type="submit" class="btn btn-info">작성완료</button>
		<button type="reset" class="btn btn-warning">초기화</button>
		<button type="button" class="btn btn-default" onclick="location.href='/movie/noticelist'">뒤로가기</button>
	</form>
	</div>

		</div>
	</div>
</div>












<%@include file="../includes/footer.jsp"%>