<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/js/noticemodify.js"></script>
<link href="/resources/css/noticemodify.css" rel='stylesheet' type='text/css' />
</head>
<body>
<div class="container">
	<div>
		<h2  class="h2" style=" color: black;">
			<img src="/resources/images/notice1.png" style=" height: 60px; " />공지사항
		</h2>
	</div>
</div>   
<div style="margin-left: 100px; margin-right: 100px;">
<div class="row">
		<form action="" method="post" role="form">
		<div class="panel panel-default">
		<div class="form-group" style="margin-left: 0px; margin-top:25px  "> 
			 
			 <c:if test="${readdto.INFO_RFI == '전체 공지'}">
			<label class="test_obj"><input type="radio" name="INFO_RFI" checked value="전체 공지"><span>전체 공지</span></label>
			<label class="test_obj" ><input type="radio" name="INFO_RFI" value="영화 관련 공지"><span>영화 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="코로나 19 관련 공지"><span>코로나 19 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="기타"><span>기타</span></label> 
			</c:if>
			<c:if test="${readdto.INFO_RFI == '영화 관련 공지'}">
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="전체 공지"><span>전체 공지</span></label>
			<label class="test_obj" ><input type="radio" name="INFO_RFI" checked value="영화 관련 공지"><span>영화 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="코로나 19 관련 공지"><span>코로나 19 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="기타"><span>기타</span></label> 
			</c:if>
			<c:if test="${readdto.INFO_RFI == '코로나 19 관련 공지'}">
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="전체 공지"><span>전체 공지</span></label>
			<label class="test_obj" ><input type="radio" name="INFO_RFI"  value="영화 관련 공지"><span>영화 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" checked value="코로나 19 관련 공지"><span>코로나 19 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="기타"><span>기타</span></label> 
			</c:if>
			<c:if test="${readdto.INFO_RFI == '기타'}">
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="전체 공지"><span>전체 공지</span></label>
			<label class="test_obj" ><input type="radio" name="INFO_RFI" value="영화 관련 공지"><span>영화 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" value="코로나 19 관련 공지"><span>코로나 19 관련 공지</span></label>
			<label class="test_obj"><input type="radio" name="INFO_RFI" checked value="기타"><span>기타</span></label> 
    		</c:if>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="form-group">
						<label style="font:sans-serif; color: black; padding: 3px">글번호</label> <input class="form-control" name="INFO_BNO" 
						readonly="readonly" value="${readdto.INFO_BNO }">
					</div>
				
					<div class="form-group">
						<label style="font:sans-serif; color: black; padding: 3px">제목</label> <input class="form-control" name="INFO_TITLE" value="${readdto.INFO_TITLE }" >
					</div>
					<div class="form-group">
						<label style="font:sans-serif; color: black; padding: 3px">내용</label>
						<textarea class="form-control" rows="3" name="INFO_CONTENT" >${readdto.INFO_CONTENT }</textarea>
					</div>				
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
					<!-- 글작성한 관리자에게만 권한을 부여하여 아무나 수정, 삭제 한거 불가하게 기능 설정  -->
					<sec:authorize access="hasRole('ROLE_ADMIN')" >
					<button type="submit" data-oper='modify' class="btn btn-info" class="btn btn-default" style="background-color: black; border-color: black;">수정완료</button>
					<button type="submit" data-oper='remove' class="btn btn-danger"	class="btn btn-default">글삭제</button>
					</sec:authorize>			
					<button type="submit" data-oper='list' class="btn btn-default">뒤로가기</button>
    </div> 			
				</div>
				
			</form>
		</div>
	</div>
 </div>



<%-- remove와 list를 위한 폼--%>
<form action="" id="actionForm">
	<%-- <input type="hidden" name="pageNum" value="${cri.pageNum }"> <input
		type="hidden" name="amount" value="${cri.amount }">
		<input type="hidden" name="type" value="${cri.type}">
	<input type="hidden" name="keyword" value="${cri.keyword}"> --%>
	
	 <!-- admin9로 작성한 글을 넘겨주는것 -->
	 <input type="hidden" name="INFO_BNO" value="${readdto.INFO_BNO } ">
		 
	 <%--시큐리티 적용으로 인한 추가 --%> <!-- 토큰값 => 끌고 다니는 거  -->
	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
	  <input type="hidden" name="writer" value="${dto.writer}" /> 
</form>

</body>
</html> 
<%@include file="../includes/footer.jsp"%>