<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지 인덱스</title>
<script src="/resources/sign-js/mypage.js"></script>
<link href="/resources/css/mypage.css" rel='stylesheet' type='text/css' />
<link href="https://fonts.googleapis.com/
    icon?family=Material+Icons|Material+Icons+Sharp|Material+Icons+Two+Tone|Material+Icons+Outlined"
    rel="stylesheet">
	<body bgcolor="black">
		<div class="header">
			<div class="btn-gate-container">
				<div class="centered-div list-btn-container">
					<div class="list-btn">	
						<a href="index"><h1 style="margin-left: 30px">BBM</h1></a>
					</div>		
					<div class="btn-gate-label">
				
						<h1>마이 페이지</h1>
					
						<ul class="choose-btn">
							<li class="button">
								<div>
									<a class="btn-link" href="mybbm" tabindex="0" data-uia="action-select-btn+primary">
										<!-- <div class="btn-wrapper"> -->
											<div class="btn-icon" data-profile-guid="A3XZPIVXFFCMHMQZZSOY2DURVA" style="background-image: url('/resources/images/booking.png')">
											
											</div>
										<!-- </div> -->
										<span class="btn-name">예매정보</span>						
									</a>
								</div>
							</li>
							<li class="button">
							 
								
								<div>
									<a class="btn-link" href= "mypagecsclist" tabindex="0" data-uia="action-select-btn+secondary">
										<div class="btn-wrapper">
											<div class="btn-icon" data-profile-guid="A3XZPIVXFFCMHMQZZSOY2DURVA" style="background-image: url('/resources/images/free-icon-conversation-942751.png')">
											</div>
										</div>
										<span class="btn-name">내 문의</span>
									</a>
									
								</div>
									
							</li>
							<li class="button">
								<div>
									<a class="btn-link" href="pwdmodify" tabindex="0" data-uia="action-select-btn+secondary">
										<div class="btn-wrapper">
											<div class="btn-icon" data-profile-guid="A3XZPIVXFFCMHMQZZSOY2DURVA" style="background-image: url('/resources/images/password.png')">
											</div>
										</div>
										<span class="btn-name">비밀번호 변경</span>
									</a>
								</div>
							</li>
								<li class="button">
									<div>
										<a class="btn-link" tabindex="0" id="logout" data-uia="action-select-btn+secondary" href="#" onclick="document.getElementById('logoutForm').submit();">
											<form action="/logout" method="post" id="logoutForm">
												<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}"/>
											</form>
											<div class="btn-wrapper">
												<div class="btn-icon" data-profile-guid="A3XZPIVXFFCMHMQZZSOY2DURVA" style="background-image: url('/resources/images/logout.png')">
												</div>
											</div>
											<span class="btn-name">로그아웃</span>
										</a>
									</div>
								</li>
								<li class="button">
									<div>
										<a class="btn-link" href="userleave" tabindex="0" data-uia="action-select-btn+secondary">
											<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}"/>
											<div class="btn-wrapper">
												<div class="btn-icon" data-profile-guid="A3XZPIVXFFCMHMQZZSOY2DURVA" style="background-image: url('/resources/images/leave.png')">
												</div>
											</div>
											<span class="btn-name">회원탈퇴</span>
										</a>
									</div>
								</li>
						</ul>
					</div>
				<span data-uia="btn-button"></span>
				</div>
			</div>
		</div>
   <!-- 스크립트 -->
<script type="text/javascript">
	function goBack(){
		if(window.history.back()){
			alert("로그인 이후 사용가능한 페이지 입니다");
			location.href="/movie/index";
		}
	}
</script>
	</body>

</html>



