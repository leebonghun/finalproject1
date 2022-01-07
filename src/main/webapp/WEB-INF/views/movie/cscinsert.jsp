<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
</head>
<body>
<div style="margin-left: 100px;">
<h2  class="h1"   style=" color: black;"><img src="/resources/images/cscicon.png" style=" height:50px; " />고객 센터</h2>
</div>
<div style="margin-left: 100px; margin-right: 100px;">
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
		<form action="" method="post" role="form" id="insertForm">
		<div class="form-group" style="margin-left: 25px; margin-top:25px  ">
			<label>사유를 선택해주세요.(기본값은 기타입니다.)</label>
			</div>
			 <div class="form-group" style="margin-left: 25px; margin-top:25px  ">
		 	<label class="test_obj"><input type="radio" name="CSC_RFI" checked="checked" value="기타"><span>기타</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="예매 환불 및 취소"><span>예매 환불 및 취소</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="계정관련 문의"><span>계정관련 문의</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="분실물"><span>분실물</span></label> 			
    </div>
			<!-- /.panel-heading -->
			
			
					<div class="form-group">
						<label>제목</label> <input type="text" class="form-control" name="CSC_TITLE">
					</div>
					<div class="form-group">
						<label>작성자</label> <input class="form-control" name="user_id" value='<sec:authentication property="principal.username"/>' readonly  >
					</div>
					<div class="form-group">
						<label>내용</label>
						<textarea class="form-control" rows="3" name="CSC_CONTENT"></textarea>
					</div>	
					<input type="hidden" name="CSC_CHECK" value="[답변 대기중]">				
					 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
					<button type="submit" class="btn btn-info" id="insert" >작성완료</button>
					<button type="reset" class="btn btn-warning">초기화</button>
					<button type="button" class="btn btn-default" onclick="location.href='/movie/csclist'">고객센터목록</button>
					</form>
					</div>
				
			</div>
		</div>
	</div>
<script type="text/javascript">

</script>

<script src="/resources/js/cscinsert.js"></script> 
<%@include file="../includes/footer.jsp"%>