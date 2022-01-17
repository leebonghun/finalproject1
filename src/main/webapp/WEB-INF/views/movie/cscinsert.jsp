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
        border: 2px solid #dfdfdf;
        background-color: #fff;
        text-align: center;
        cursor: pointer;
        border-radius: 16px;
    }
 
    .test_obj input[type="radio"]:checked + span {
       background-color: black;
        color: #fff;
        font-weight: bold;
}
    }
    
    
</style>
</head>
<body>
<div class="container">
	<div>
		<h2  class="h2" style=" color: black;">
			<img src="/resources/images/cscicon.png" style=" height: 60px; " />고객 센터
		</h2>
	</div>
</div>
<div class="panel-body">
<div class="row">
	<div class="col-lg-12" style="padding-left: 0px; width: 880px;">
		<div class="panel panel-default">
			<form action="" method="post" role="form" id="insertForm">
		<div class="form-group" style="margin-left: 0px; margin-top:0px  ">
			<label style="font:sans-serif; color: black; padding: 3px">사유를 선택해주세요.(기본값은 기타입니다.)</label>
			</div>
			 <div class="form-group" style="margin-left: 0px; margin-top:0px  ">
		 	<label class="test_obj"><input type="radio" name="CSC_RFI" checked="checked" value="기타"><span>기타</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="예매 환불 및 취소"><span>예매 환불 및 취소</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="계정관련 문의"><span>계정관련 문의</span></label>
			<label class="test_obj"><input type="radio" name="CSC_RFI" value="분실물"><span>분실물</span></label> 			
    </div>
			<!-- /.panel-heading -->
			
			
					<div class="form-group">
						<label style="font:sans-serif; color: black; padding: 3px">제목</label> <input type="text" class="form-control" name="CSC_TITLE">
					</div>
					<div class="form-group">
						<label style="font:sans-serif; color: black; padding: 3px">작성자</label> <input class="form-control" name="user_id" value='<sec:authentication property="principal.username"/>' readonly  >
					</div>
					<div class="form-group">
						<label style="font:sans-serif; color: black; padding: 3px">내용</label>
						<textarea class="form-control" rows="3" name="CSC_CONTENT"></textarea>
					</div>	

					<div class="form-group">
						<label style="font:sans-serif; color: black; padding: 3px;">이메일(답변완료시 해당 이메일로 알람이 전송됩니다.)</label> <input type="text" class="form-control" name="CSC_EMAIL" >
					</div>

					
					
					

					<input type="hidden" name="CSC_CHECK" value="[답변 대기중]">				
					 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
					<button type="submit" class="btn btn-info" id="insert" style="background-color: black; border-color: black;">작성완료</button>
					<button type="reset" class="btn btn-warning">초기화</button>
					<button type="button" class="btn btn-default" onclick="location.href='/movie/csclist'">고객센터목록</button>
					</form>
					</div>     
				
			</div>
		</div>
	</div>
<script type="text/javascript">

</script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="/resources/js/cscinsert.js"></script> 
<%@include file="../includes/footer.jsp"%>