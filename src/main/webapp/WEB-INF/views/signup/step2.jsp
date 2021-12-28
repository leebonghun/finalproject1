<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>회원가입</title>
    <!-- resources 앞에 / 를 붙일때는 context path가 없는 경우일 때 -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
      integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
      crossorigin="anonymous"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
    <!-- validation 사용자 작성 코드 삽입-->
    <script src="/resources/sign-js/register.js"></script>
  </head>
  <body style="background-color:#F5F5F5;">
    <div class="container" style="margin-top:40px">
      <form id="regist" method="post" action="/movie/index">
        <div class="form-group row justify-content-center">
          <label for="userid" class="col-sm-2 col-form-label">아이디</label>
          <div class="col-sm-6">
            <input
              type="text"
              name="userid"
              id="userid"
              class="form-control"
              placeholder="아이디를 입력하세요"
            />
            <small id="userid" class="text-info"></small>
          </div>
        </div>
        <div class="form-group row justify-content-center">
          <label for="pass1" class="col-sm-2 col-form-label">비밀번호</label>
          <div class="col-sm-6">
            <input
              type="password"
              name="password"
              id="password"
              class="form-control"
              placeholder="비밀번호를 입력하세요"
            />
            <small id="password" class="text-info"></small>
          </div>
        </div>
        <div class="form-group row justify-content-center">
          <label for="pass2" class="col-sm-2 col-form-label"
            >비밀번호 확인
          </label>
          <div class="col-sm-6">
            <input
              type="password"
              name="confirm_password"
              id="confirm_password"
              class="form-control"
              placeholder="비밀번호를 다시 입력하세요"
            />
            <small id="confirm_password" class="text-info"></small>
          </div>
        </div>
        <div class="form-group row justify-content-center">
          <label for="name" class="col-sm-2 col-form-label">이름</label>
          <div class="col-sm-6">
            <input
              type="text"
              name="name"
              id="name"
              class="form-control"
              placeholder="이름을 입력하세요"
            />
            <small id=name class="text-info"></small>
          </div>
        </div>
        <div class="form-group row justify-content-center">
          <label for="birth" class="col-sm-2 col-form-label">생년월일</label>
          <div class="col-sm-6">
            <input
              type="text"
              name="birth"
              id="birth"
              class="form-control"
              placeholder="ex) 20210101"
            />
            <small id=name class="text-info"></small>
          </div>
        </div>      
        
        <div class="form-group row justify-content-center">
          <label for="email" class="col-sm-2 col-form-label">이메일</label>
          <div class="col-sm-6">
            <input
              type="email"
              name="email"
              id="email"
              class="form-control"
              placeholder="ex) example@gmail.com"
            />
            <small id="email" class="text-info"></small>
          </div>
        </div>
        <div class="form-group text-center">
        
        <div class="form-group row justify-content-center">
          <label for="tel" class="col-sm-2 col-form-label">휴대전화</label>
          <div class="col-sm-6">
            <input
              type="text"
              name="tel"
              id="tel"
              class="form-control"
              placeholder="전화번호를 입력하세요('-'제외)"
            />
            <small id=name class="text-info"></small>
          </div>
        </div>
          <button type="submit" class="btn btn-primary">가입하기</button>
          <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}"/>
        </div>
      </form>
    </div>
<script>
//ajax 동작시 헤더 값에 포함해서 보낼 csrf 토큰 값 설정
let csrfHeaderName = "${_csrf.headerName}";
let csrfTokenValue = "${_csrf.token}";
</script>
  </body>
</html>
