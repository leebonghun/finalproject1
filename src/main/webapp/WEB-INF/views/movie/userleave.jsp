<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <title>회원탈퇴</title>
    <!-- Bootstrap core CSS -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <!-- Custom styles for this template -->
    <link href="/resources/css/signin.css" rel="stylesheet" />
  </head>
  <body class="text-center">
    <form class="form-signin" method="post" action="">
    <div class="w3layouts_logo" id="header" role="banner">
		<a href="/movie/index" class="b_logo">
			<h1 class="h3 mb-3 font-weight-bold">BBM</h1>
		</a>
	</div>
      <label for="user_id" class="sr-only">아이디</label>
      <sec:authentication property="principal" var="info"/>     
      <sec:authorize access="isAuthenticated()" >	                        
	      <input
	        type="text"
	        id="user_id"
	        name="user_id"
	        class="form-control"
	        placeholder="아이디"
	        required
	        value="${info.username}"
	        readonly="readonly"
	      />
      </sec:authorize>
      <label for="user_password" class="sr-only">비밀번호</label>
      <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	     <input
	       type="password"
	       id="user_password"
	       name="user_password"
	       class="form-control"
	       placeholder="비밀번호"
	       required
	       autofocus
	     />
      <div>
        <p style="color: red;">${error}</p>
      </div>
      <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}"/>
      <button class="btn btn-lg btn-primary btn-block" type="submit"> 
        탈퇴하기
      </button>
    </form>
  </body>
</html>
