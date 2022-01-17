<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../includes/header.jsp" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 .test_obj input[type="radio"] {
        display: none;
}
 
.test_obj input[type="radio"] + span {
        display: inline-block;
        padding: 15px 10px;
        border: 2px solid #dfdfdf;
        background-color: #fff;
        text-align: center;
        cursor: pointer;
        border-radius: 16px;
	
}
 
.test_obj input[type="radio"]:checked + span {
        background-color: black;
        color: #fff;
}
.form-group {
    margin-bottom: 15px;
}

.panel-body {
    font-size: 14px;
    color: #999;
    width: 990px;
    padding-right: 174px;
    padding-left: 1px;   
    margin-right: auto;
    margin-left: auto;
}

.table {
    width: 100%;
    max-width: 100%;
    margin-bottom: 23px;
}

.row {
    margin: 0px auto;
    width: 953px;
}

</style>
</head>
<body>
<div class="container">
	<div>
		<h2  class="h2" style=" color: black;">
			<img src="/resources/images/cscicon.png" style=" height:60px; " />고객 센터
		</h2>
	</div>
</div>   
<div style="margin-left: 100px; margin-right: 100px;">
<div class="row">
		<form action="" method="post" role="form">
		<div class="panel panel-default">
		<div class="form-group" style="margin-left: 0px; margin-top:25px  "> 
			<label>사유를 선택해주세요.(기본값은 기타입니다.)</label>
			</div>
			 
			 
			 <c:if test="${readdto.CSC_RFI == '기타'}">
			<label class="test_obj"><input type="radio" name="CSC_RFI" checked value="기타"><span>기타</span></label>
			<label class="test_obj" ><input type="radio" name="CSC_RFI" value="예매 환불 및 취소"><span>예매 환불 및 취소</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="계정관련 문의"><span>계정관련 문의</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="분실물"><span>분실물</span></label> 
			</c:if>
			<c:if test="${readdto.CSC_RFI == '예매 환불 및 취소'}">
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="기타"><span>기타</span></label>
			<label class="test_obj" ><input type="radio" name="CSC_RFI" checked value="예매 환불 및 취소"><span>예매 환불 및 취소</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="계정관련 문의"><span>계정관련 문의</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="분실물"><span>분실물</span></label> 
			</c:if>
			<c:if test="${readdto.CSC_RFI == '계정관련 문의'}">
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="기타"><span>기타</span></label>
			<label class="test_obj" ><input type="radio" name="CSC_RFI"  value="예매 환불 및 취소"><span>예매 환불 및 취소</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" checked value="계정관련 문의"><span>계정관련 문의</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="분실물"><span>분실물</span></label> 
			</c:if>
			<c:if test="${readdto.CSC_RFI == '분실물'}">
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="기타"><span>기타</span></label>
			<label class="test_obj" ><input type="radio" name="CSC_RFI" value="예매 환불 및 취소"><span>예매 환불 및 취소</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="계정관련 문의"><span>계정관련 문의</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" checked value="분실물"><span>분실물</span></label> 
    		</c:if>
    </div>
			<!-- /.panel-heading -->
		<div class="panel-body">
				<div class="form-group">
						<label style="font:sans-serif; color: black; padding: 3px;">글번호</label> <input class="form-control" name="CSC_BNO"
							readonly="readonly" value="${readdto.CSC_BNO }">
					</div>
					<div class="form-group">
						<label style="font:sans-serif; color: black; padding: 3px;">제목</label> <input class="form-control" name="CSC_TITLE" value="${readdto.CSC_TITLE }" >
					</div>
					<div class="form-group">
						<label style="font:sans-serif; color: black; padding: 3px;">유저 아이디</label> <input class="form-control" name="user_id" value="${readdto.user_id }" readonly="readonly" >
					</div>
					<div class="form-group">
						<label>제목</label> <input class="form-control" name="CSC_TITLE" value="${readdto.CSC_TITLE }" >
					</div>
					
					 <div class="form-group">
                  <label>이메일</label> <input class="form-control" name="CSC_EMAIL"
                    value="${readdto.CSC_EMAIL }" >
               </div>
					<div class="form-group">
					

						<label style="font:sans-serif; color: black; padding: 3px;">내용</label>

						<textarea class="form-control" rows="3" name="CSC_CONTENT" >${readdto.CSC_CONTENT }</textarea>
					</div>	
					
					<input type="hidden" name="CSC_CHECK" value=${readdto.CSC_CHECK }>				
					 
					<sec:authentication property="principal" var="info"/>
						<sec:authorize access="isAuthenticated()">
						<c:if test="${info.username == readdto.user_id }">
					<button type="submit" data-oper='modify' class="btn btn-info">수정완료</button>
					<button type="submit" data-oper='remove' class="btn btn-danger">글삭제</button>
					</c:if>
					</sec:authorize>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					<button type="submit" data-oper='list' class="btn btn-default">고객센터목록</button>
					</div>
				</form>
			</div>
		</div>


<%-- remove와 list를 위한 폼--%>
<form action="" id="actionForm">
	 <input type="hidden" name="pageNum" value="${cri.pageNum }"> <input
		type="hidden" name="amount" value="${cri.amount }">
		<input type="hidden" name="type" value="${cri.type}">
	<input type="hidden" name="keyword" value="${cri.keyword}"> 
		 <input type="hidden" name="CSC_BNO" value="${readdto.CSC_BNO } ">
	 
	 <%--시큐리티 적용으로 인한 추가 --%>
			  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
		  <input type="hidden" name="user_id" value="${readdto.user_id}" /> 
</form>	
<script type="text/javascript">
	//헌재 글 번호 가져오기
	let CSC_BNO = ${readdto.CSC_BNO};
	let CSC_RFI = ${readdto.CSC_RFI};
	
	//토큰값 설정
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
</script>
<script src="/resources/js/cscmodify.js"></script> 
 <%@include file="../includes/footer.jsp"%> 