<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<link href="/resources/css/eventread.css" rel='stylesheet' type='text/css' />
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
					<img src="/resources/images/card1.jpg" alt="카드 할인 행사" onerror="noImg(this);"  />
				<div class="contain" >
					<div class="tit"> [이벤트 제목 : 카드 할인 행사] </div>
					<div class="con"> [이벤트 내용 : 신한, 우리, 국민카드로 영화 예매 결제 시 영화 티켓 가격의 5% 할인혜택] </div>
					<div class="hum"> [이벤트 대상 : 신한,우리,국민 카드 사용자] </div>
					<div class="date"> [이벤트 기간 : 2022.01.01 ~ 2022.12.31] </div>
				</div>
				</div>
			<div style="text-align: right; width: 880px; padding: 20px;" >
			<button type="button" class="btn btn-info" onclick="location.href='/movie/eventlist'" 
					style="background-color: rgb(255, 115, 86); border-color: rgb(251, 67, 87);">뒤로가기</button>
			</div>
			</div>
		</div>           
	</div>	
</div>













<%@include file="../includes/footer.jsp" %>