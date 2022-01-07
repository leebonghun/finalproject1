<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<link href="/resources/css/eventread3.css" rel='stylesheet' type='text/css' />
<div class="container" >
	<div>
		<h2 class="h2" style="color: black;">
			<img src="/resources/images/event1.png" style="height: 60px;" /> 이벤트
		</h2> 
		<div id="event-list-wrap" style="margin-top: 40px">
			<div class="tit-util-mt70" >
				<h3 class="tit">BBM Pick</h3>
			</div>    
			<div class="event-list mt15" >
				<div class="img" style="text-align: center; width: 880px; padding: 20px;">
					<img src="/resources/images/signup.png" alt="신규 회원 이벤트" onerror="noImg(this);"  />
				<div class="contain" style="text-align: left;">
					<div class="tit"> [이벤트 제목 : 신규 회원 이벤트] </div>
					<div class="con"> [이벤트 내용 : 신규 회원가입하신 고객분들 중에 선착순 100명에게 비타 500 1BOX를 증정합니다.] </div>
					<div class="hum"> [이벤트 대상 : 신규로 회원가입한 고객] </div>
					<div class="date"> [이벤트 기간 : 2022.01.01 ~ 2022.01.31] </div>
				</div>
				</div>
			<div style="text-align: right; width: 965px; padding: 20px;" >
			<button type="button" class="btn btn-info" onclick="location.href='/movie/eventlist'" 
					style="background-color: rgb(255, 115, 86); border-color: rgb(251, 67, 87);">뒤로가기</button>
			</div>
			</div>
		</div>           
	</div>	
</div>













<%@include file="../includes/footer.jsp" %>