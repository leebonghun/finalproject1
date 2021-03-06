<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/eventread.css" rel='stylesheet' type='text/css' />
<div class="container" >
	<div>
		<h2 class="h2" style="color: black; font-weight: bold;">
			<img src="/resources/images/event1.png" style="height: 60px;" /> 이벤트
		</h2> 
		<div id="event-list-wrap" style="margin-top: 40px">
			<div class="tit-util-mt70" >
				<h3 class="tit" style="font-weight: bold;">BBM Pick</h3>
			</div>    
			<div class="event-list mt15" >
				<div class="img" style="text-align: center; width: 880px; padding: 20px;">
					<img src="/resources/images/2022-calendar.jpg" alt="신년 달력 증정 행사" onerror="noImg(this);" style="width: 860px;" />
				<div class="contain" style="text-align: left; width: 870px;">
					<div class="tit" style="font-size: 20px; font-weight: bold;"> [이벤트 제목 : 신년 맞이 달력 증정 행사] </div>
					<div class="con" style="font-size: 20px; font-weight: bold;"> [이벤트 내용 : 신년을 맞이하여 영화를 관람하시는 분들에게 2022년 달력을 증정합니다.] </div>
					<div class="hum" style="font-size: 20px; font-weight: bold;"> [이벤트 대상 : 영화 관람객 누구나(선착순 100명)] </div>
					<div class="date" style="font-size: 20px; font-weight: bold;"> [이벤트 기간 : 2022.01.01 ~ 2022.01.31] </div>
				</div>
				</div>
			<div style="text-align: right; width: 900px; padding: 20px;" >
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