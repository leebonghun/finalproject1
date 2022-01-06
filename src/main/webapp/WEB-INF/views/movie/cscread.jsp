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
   </div>
   <!-- /.col-lg-12 -->
</div>
<div class="row">
   <div class="col-lg-12">
      <div class="panel panel-default">
         <!-- /.panel-heading -->
         
            <form action="" role="form" method="post">
            <div class="form-group">
                  <label>글번호</label> <input class="form-control" name="CSC_BNO"
                     readonly="readonly" value="${readdto.CSC_BNO }">
               </div>
               <div class="form-group">
                  <label>작성자</label> <input class="form-control" name="user_id"
                     readonly="readonly"  value="${readdto.user_id }">
               </div>
               <div class="form-group">
                  <label>사유</label> <input class="form-control" name="CSC_RFI"
                     readonly="readonly"value="${readdto.CSC_RFI }" >
               </div>
               <div class="form-group">
                  <label>제목</label> <input class="form-control" name="CSC_TITLE"
                     readonly="readonly"value="${readdto.CSC_TITLE }" >
               </div>
               <div class="form-group">
                  <label>내용</label>
                  <textarea class="form-control" rows="3" name="CSC_CONTENT"
                     readonly="readonly" style="resize: none;">${readdto.CSC_CONTENT }</textarea>
                     <sec:authentication property="principal" var="info" />
            <sec:authorize access="isAuthenticated()">
               <c:if test="${info.username != 'admin97' }">
               <div class="form-group">         
                  <label>답변 내용</label>
                  <textarea class="form-control" rows="3" name="CSC_ANSWER" id="dab"
                      placeholder="답변대기중..." style="resize: none;"  readonly="readonly">${readdto.CSC_ANSWER}</textarea>                  
               </div>
               </c:if>   
                     </sec:authorize>
                     <sec:authentication property="principal" var="info" />
            <sec:authorize access="isAuthenticated()">
               <c:if test="${info.username == 'admin97' }">
               <div class="form-group">         
                  <label>답변 내용</label>
                  <textarea class="form-control" rows="3" name="CSC_ANSWER"
                      placeholder="답변대기중..." style="resize: none;"  >${readdto.CSC_ANSWER}</textarea>                  
               </div>
               </c:if>   
                     </sec:authorize>                     
                  <sec:authentication property="principal" var="info" />
            <sec:authorize access="isAuthenticated()">
               <c:if test="${info.username == 'admin97' }">
                  <c:if test="${readdto.CSC_CHECK == '[답변 대기중]'}">
                      <label><input type="checkbox" value="[답변완료]" name="CSC_CHECK">답변완료여부</label>
                  </c:if>
                  <c:if test="${readdto.CSC_CHECK == '[답변완료]'}">
                      <label><input type="checkbox" value="[답변완료]" name="CSC_CHECK" checked>답변완료여부</label>
                  </c:if>    
                           <button type="submit" data-oper='answer'  class="btn btn-info">답변완료</button>
                     </c:if>   

                     </sec:authorize>   
               <sec:authentication property="principal" var="info" />
               <sec:authorize access="isAuthenticated()">
               <c:if test="${info.username == readdto.user_id }">
               <button type="submit" data-oper='modify' class="btn btn-info">수정</button>
                  <!-- <button type="button" class="btn btn-warning" >수정</button>    -->
                  </c:if>
                  </sec:authorize>
                     <sec:authentication property="principal" var="info" />
               <sec:authorize access="isAuthenticated()">
               <c:if test="${info.username == 'admin97' }">
                     <!-- <button type="button"  class="btn btn-danger" id="removeBtn">글삭제</button> -->
                     <button type="submit" data-oper='remove' class="btn btn-danger">글삭제</button>      
                     </c:if>   
                     </sec:authorize>      
               <!-- <button type="reset" class="btn btn-default" >뒤로가기</button> -->
               <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
               <button type="submit" data-oper='list' class="btn btn-default">뒤로가기</button>
               <!-- onclick="location.href='/movie/csclist'" -->
            </form>
         </div>
      </div>
   </div>
</div>

<!--  페이지 나누기를 위한 폼 -->
<form action="" id="actionForm">
   <input type="hidden" name="pageNum" value="${cri.pageNum }"> <input
      type="hidden" name="amount" value="${cri.amount }"> <input
      type="hidden" name="type" value="${cri.type}"> <input
      type="hidden" name="keyword" value="${cri.keyword}"> <input
      type="hidden" name="CSC_BNO" value="${readdto.CSC_BNO }">

 <%--시큐리티 적용으로 인한 추가 --%>
           <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
        <input type="hidden" name="user_id" value="${readdto.user_id}" /> 
        
        </form>
<script type="text/javascript">
   //헌재 글 번호 가져오기
   let CSC_BNO = ${readdto.CSC_BNO};
   let CSC_RFI = ${readdto.CSC_RFI};
   
   let csrfHeaderName = "${_csrf.headerName}";
   let csrfTokenValue = "${_csrf.token}";
   
   </script>
   <script  src="/resources/js/cscread.js"></script>

<%@include file="../includes/footer.jsp"%>