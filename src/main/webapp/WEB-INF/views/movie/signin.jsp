<%@ page language="java" contentType="text/html; charset=UTF-8" session="true"%>
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
    <title>로그인</title>
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
    <form class="form-signin" method="post" action="/movie/signin">
      <div class="w3layouts_logo" id="header" role="banner">
		<a href="/movie/index" class="b_logo">
			<h1 class="h3 mb-3 font-weight-bold">BBM</h1>
		</a>
	</div>
      <label for="username" class="sr-only">아이디</label>
      <input
        type="text"
        id="username"
        name="username"
        class="form-control"
        placeholder="아이디"
        required
        autofocus
      />
      <label for="password" class="sr-only">비밀번호</label>
      <input
        type="password"
        id="password"
        name="password"
        class="form-control"
        placeholder="비밀번호"
        required
      />
      
      <div>
        <p style="color: red;">${error}</p>
      </div>
      <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}"/>
      <button class="btn btn-lg btn-primary btn-block" type="submit"> 
        로그인
      </button>
    </form>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
  </body>
</html>
