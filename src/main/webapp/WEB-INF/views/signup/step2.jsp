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
      <form id="regist" method="post" action="/register/step3">
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
          <label for="name" class="col-sm-2 col-form-label">이름 </label>
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
          <div class="bir-yy">
          	<span class="ps_box">
          		<input type="text" id="yy" placeholder="년(4자)" aria-label="년(4자)" class="int" maxlength="4" />          	
          	</span>     
          </div>
          <div class="bir_mm">
          	<span class="ps_box">
          		<select id="mm" class="sel" aria-label="월">
          			<option value>월</option>
          			<option value="01">" 1 "</option>
          			<option value="02">" 2 "</option>
          			<option value="03">" 3 "</option>
          			<option value="04">" 4 "</option>
          			<option value="05">" 5 "</option>
          			<option value="06">" 6 "</option>
          			<option value="07">" 7 "</option>
          			<option value="08">" 8 "</option>
          			<option value="09">" 9 "</option>
          			<option value="10">" 10 "</option>
          			<option value="11">" 11 "</option>
          			<option value="12">" 12 "</option>   			
          		</select>      	
          	</span>
          </div>
          <div class="bir_dd">
          	<span class="ps_box">
          		<input type="text" id="yy" placeholder="일" aria-label="일" class="int" maxlength="2" />
          		<label for ="dd" class="lbl"></labe>
          	</span>
          </div>
        </div>
        <span class="erroe_next_box" id="birthdayMsg" style="display: block;" aria-live="assertive">정말이세요?</span>
        
        <div class="form-group row justify-content-center">
          <label for="email" class="col-sm-2 col-form-label">이메일</label>
          <div class="col-sm-6">
            <input
              type="email"
              name="email"
              id="email"
              class="form-control"
              placeholder="example@gmail.com"
            />
            <small id="email" class="text-info"></small>
          </div>
        </div>
        <div class="form-group text-center">
        
        <div class="form-group row justify-content-center">
          <label for="name" class="col-sm-2 col-form-label">휴대전화 </label>
          <div class="col-sm-6">
            <input
              type="text"
              name="name"
              id="name"
              class="form-control"
              placeholder="전화번호를 입력하세요('-'제외)"
            />
            <small id=name class="text-info"></small>
          </div>
        </div>
          <button type="submit" class="btn btn-primary">가입하기</button>
        </div>
      </form>
    </div>
  </body>
</html>
