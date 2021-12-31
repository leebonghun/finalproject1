<%@ page language="java" contentType="text/html; charset=UTF-8" session="true"%>
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
      <h1 class="h3 mb-3 font-weight-normal">BBM</h1>
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
      <div class="checkbox mb-3">
        <label>
          <input type="checkbox" value="remember-me" /> 로그인 정보 저장
        </label>
      </div>
      <div>
        <p style="color: red;">${error}</p>
      </div>
      <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}"/>
      <button class="btn btn-lg btn-primary btn-block" type="submit"> 
        로그인
      </button>
    </form>
  </body>
</html>
