<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>비밀번호 변경</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <link href="/resources/css/step2.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
    <script src="/resources/js/pwd.js"></script>
  </head>
  <body>
  	 <div class="w3layouts_logo" id="header" role="banner">
		<a href="/movie/index" class="b_logo">
			<h1 class="h3 mb-3 font-weight-bold">BBM</h1>
		</a>
	</div>
    <div class="container" style="margin-top:40px">
    
      <form id="password" method="post" action="">
        <div class="form-group row justify-content-center">
          <label for="user_id" class="col-sm-2 col-form-label">아이디</label>
          <sec:authentication property="principal" var="info"/>     
      		<sec:authorize access="isAuthenticated()">
	          <div class="col-sm-6">
	            <input
	              type="text"
	              name="user_id"
	              id="user_id"
	              class="form-control"
	              value="${info.username}"
	              readonly="readonly"
	            />
            	<small id="user_id" class="text-info"></small>
          	</div>
	      </sec:authorize>
        </div>
        
        <div class="form-group row justify-content-center">
          <label for="user_password" class="col-sm-2 col-form-label">기존 비밀번호</label>         
          <div class="col-sm-6">
            <input
              type="password"
              name="user_password"
              id="user_password"
              class="form-control"
              placeholder="기존 비밀번호를 입력하세요."
              required
              autofocus
            />
            <small id="user_password" class="text-info"></small>
          </div>
        </div>
        
        <div class="form-group row justify-content-center">
          <label for="new_password" class="col-sm-2 col-form-label">새 비밀번호</label>          
          <div class="col-sm-6">
            <input
              type="password"
              name="new_password"
              id="new_password"
              class="form-control"
              placeholder="새 비밀번호를 입력하세요."
              required
            />
            <small id="new_password" class="text-info"></small>
          </div>
        </div>
        
        <div class="form-group row justify-content-center">
          <label for="confirm_password" class="col-sm-2 col-form-label">새 비밀번호 확인</label>          
          <div class="col-sm-6">
            <input
              type="password"
              name="confirm_password"
              id="confirm_password"
              class="form-control"
              placeholder="비밀번호를 다시 입력하세요."
              required
            />
            <small id="confirm_password" class="text-info"></small>
          </div>
        </div>
        
        <div class="form-group text-center">
          <button type="submit" class="btn btn-danger btn-block">비밀번호변경</button>
        </div>
        <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}"/>
      </form>
    </div>
	<script>
	//ajax 동작시 헤더 값에 포함해서 보낼 csrf 토큰 값 설정
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
	</script>
  </body>
</html>