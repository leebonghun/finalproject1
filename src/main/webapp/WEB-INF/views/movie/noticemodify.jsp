<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../includes/header.jsp" %>     
<style>
    .test_obj input[type="radio"] {
        display: none;
    }
 
    .test_obj input[type="radio"] + span {
        display: inline-block;
        padding: 15px 10px;
        border: 1px solid #dfdfdf;
        background-color: #ffffff;
        text-align: center;
        cursor: pointer;
    }
 
    .test_obj input[type="radio"]:checked + span {
        background-color: #113a6b;
        color: #ffffff;
    }
</style>
<div style="margin-left: 100px;">
<h2  class="h1"   style=" color: black;"><img src="/resources/images/notice1.jpg" style=" height:50px; " />고객 센터</h2>
</div>
<div style="margin-left: 100px; margin-right: 100px;">
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
		<form action="" method="post" role="form">
		 <div class="form-group" style="margin-left: 25px; margin-top:25px  "></div>
			<label>사유를 선택해주세요.(기본값은 기타입니다.)</label>
			</form>
			</div>
    </div>
			<!-- /.panel-heading -->
			<div class="panel-body">
				<div class="form-group">
						<label>글번호</label> <input class="form-control" name="INFO_BNO"
							readonly="readonly" value="${readdto.INFO_BNO }">
					</div>
				
					<div class="form-group">
						<label>제목</label> <input class="form-control" name="INFO_TITLE" value="${readdto.INFO_TITLE }" >
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" name="INFO_CONTENT" >${readdto.INFO_CONTENT }</textarea>
					</div>	
					<input type="hidden" name="INFO_CHECK" value=${readdto.INFO_CHECK }>				
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
					<button type="submit" data-oper='modify' class="btn btn-info">수정완료</button>
					<button type="submit" data-oper='remove' class="btn btn-danger">글삭제</button>
					<button type="submit" data-oper='list' class="btn btn-default">뒤로가기</button>
					</div>
			</div>
		</div>


<%-- remove와 list를 위한 폼--%>
<form action="" id="actionForm">
	<%-- <input type="hidden" name="pageNum" value="${cri.pageNum }"> <input
		type="hidden" name="amount" value="${cri.amount }">
		<input type="hidden" name="type" value="${cri.type}">
	<input type="hidden" name="keyword" value="${cri.keyword}"> --%>
		 <input type="hidden" name="INFO_BNO" value="${readdto.INFO_BNO } ">
		 
	 <%--시큐리티 적용으로 인한 추가 --%>
		<%-- 	  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
		  <input type="hidden" name="writer" value="${dto.writer}" />  --%>
</form>
<script src="/resources/js/noticemodify.js"></script> 
<%-- <%@include file="../includes/footer.jsp"%> --%>