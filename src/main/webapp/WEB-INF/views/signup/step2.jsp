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
    <link href="/resources/css/step2.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.js"></script>
    <!-- validation 사용자 작성 코드 삽입-->
    <script src="/resources/sign-js/register.js"></script>
  </head>
  <body>
  	<div class="w3layouts_logo" id="header" role="banner">
		<a href="/movie/index" class="b_logo">
			<h1 class="h3 mb-3 font-weight-bold">BBM</h1>
		</a>
	</div>
    <div class="container" style="margin-top:40px">
      <form id="regist" method="post" action="step3">
        <div class="form-group row justify-content-center">
          <label for="userid" class="col-sm-2 col-form-label">아이디</label>
          <div class="col-sm-6">
            <input
              type="text"
              name="user_id"
              id="user_id"
              class="form-control"
              placeholder="아이디를 입력하세요."
            />
            <small id="user_id" class="text-info"></small>
          </div>
        </div>
        <div class="form-group row justify-content-center">
          <label for="pass1" class="col-sm-2 col-form-label">비밀번호</label>
          <div class="col-sm-6">
            <input
              type="password"
              name="user_password"
              id="user_password"
              class="form-control"
              placeholder="비밀번호를 입력하세요."
            />
            <small id="user_password" class="text-info"></small>
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
              placeholder="비밀번호를 다시 입력하세요."
            />
            <small id="confirm_password" class="text-info"></small>
          </div>
        </div>
        <div class="form-group row justify-content-center">
          <label for="name" class="col-sm-2 col-form-label">이름</label>
          <div class="col-sm-6">
            <input
              type="text"
              name="user_name"
              id="user_name"
              class="form-control"
              placeholder="이름을 입력하세요."
            />
            <small id=user_name class="text-info"></small>
          </div>
        </div>
        <div class="form-group row justify-content-center">
          <label for="birth" class="col-sm-2 col-form-label">생년월일</label>
          <div class="col-sm-6">
            <input
              type="text"
              name="user_birth"
              id="user_birth"
              class="form-control"
              placeholder="ex) 2021-01-01"
            />
            <small id=birth class="text-info"></small>
            <small id=user_birth class="text-info"></small>
          </div>
        </div>      
        
        <div class="form-group row justify-content-center">
          <label for="email" class="col-sm-2 col-form-label">이메일</label>
          <div class="col-sm-6">
            <input
              type="email"
              name="user_email"
              id="user_email"
              class="form-control"
              placeholder="ex) example@gmail.com"
            />   
            <small id="user_email" class="text-info"></small>          
          </div>  
          <input type="button" value="인증번호 전송"  id="mail_check_button" style="height:30px; ">  
        </div>
        
        <div class="form-group row justify-content-center">
          <label for="email" class="col-sm-2 col-form-label">인증번호</label>
          <div class="col-sm-6">
            <input
              type="text"
              name="user_emailcheck"
              id="user_emailcheck"
              class="form-control"
              placeholder="ex) 1234"
            />   
            <small id="user_emailcheck" class="text-info"></small>          
          </div>  
          <input type="button" value="인증번호 확인"  id="mail_check_button2"    style="height:30px; ">  
        </div>
        
        
        
    	<div>
        <div class="form-group row justify-content-center">
          <label for="user_tel" class="col-sm-2 col-form-label">휴대전화</label>
          <div class="col-sm-6">
            <input
              type="text"
              name="user_tel"
              id="user_tel"
              class="form-control"
              placeholder="전화번호를 입력하세요('-'제외)"
            />

            <small id=tel class="text-info"></small>
            <small id=user_tel class="text-info"></small>
          </div>
        </div>
          <button type="submit" class="btn btn-block">가입하기</button>
          <input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}"/>
        </div>
        <div>
        <p>
        </p>
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
