/**
 * 헤더 로그인 버튼 누르면 로그인페이지로 이동
	회원가입 버튼 누르면 회원가입페이지로 이동
 */

$(function(){
	$("#login").click(function(){
		location.href="/movie/signin";
	})
	
	$("#signup").click(function(){
		location.href="/signup/step1";
	})
	
})

