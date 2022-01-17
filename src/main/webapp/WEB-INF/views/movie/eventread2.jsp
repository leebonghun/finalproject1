<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.tit{
	margin: 20px;
}
.con{
	margin: 20px;
}	
.hum{
	margin: 20px;
}	
.date{
	margin: 20px;
}	
.contain {
	margin-top: 30px;
	width: 850px;
    padding: 4px;
    border: 7px solid black;
    border-radius: 50px;
    background-size: 145px 100%;
    margin-right: auto;
    margin-left: auto;
}
</style>
</head>
<body>
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
				<div class="contain" style="text-align: left;">
					<div class="tit"> [이벤트 제목 : 카드 할인 행사] </div>
					<div class="con"> [이벤트 내용 : 신한, 우리, 국민카드로 영화 예매 결제 시 영화 티켓 가격의 5% 할인혜택] </div>
					<div class="hum"> [이벤트 대상 : 신한,우리,국민 카드 사용자] </div>
					<div class="date"> [이벤트 기간 : 2022.01.01 ~ 2022.12.31] </div>
				</div>
				</div>
			<div style="text-align: right; width: 880px; padding: 20px;" >
			<button type="button" class="btn btn-info" onclick="location.href='/movie/eventlist'" 
					style="background-color: black; border-color: black;">뒤로가기</button>
			</div>
			</div>
		</div>           
	</div>	
</div>











</body>
</html>

<%@include file="../includes/footer.jsp" %>