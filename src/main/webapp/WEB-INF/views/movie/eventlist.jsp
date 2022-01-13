<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="/resources/css/eventlist.css"></script> 
<style>
li {
    display: inline-table;
    text-align: center;
    list-style: none;
    padding-left: 0px;
 
}



.event-list ul li a .img img {
    width: 270px;
    list-style-position: inside;
}

.event-list ul li a .tit {
    overflow: hidden;
    height: 60px;
    margin: 10px 10px 10px 10px;
    padding: 10px 10px 10px 10px;
    line-height: 1.3;
    font-weight: 700;
    color: #222;
}
.event-list p {
    display: block;
    }


.event-list ul li a .date {
    padding: 10px 10px 10px 10px;
    font-size: .8667em;
    line-height: 1.1;
    color: #666;
}

.event-list p {
    margin: 0;
    text-align: center;
}




</style>

</head>
<body>

<!-- 이벤트 상단 -->
<div class="container" >
	<div>
		<h2 class="h2" style="color: black;">
			<img src="/resources/images/event1.png" style="height: 60px;" /> 이벤트
		</h2> 
		<div id="event-list-wrap" style="margin-top: 50px">
			<div class="tit-util-mt70" >
				<h3 class="tit">BBM Pick</h3>
			</div>
			<div class="event-list mt15" style="margin-top: 20px">
				<ul>
					<li style="padding: 15px;">
						<a href="eventread?EVENT_BNO=1" data-no="10808" data-netfunnel="N" class="eventBtn"  title="신년 맞이 달력 증정 행사" >
							<p class="img">
								<img src="/resources/images/2022-calendar.jpg" alt="신년 달력 증정 행사" onerror="noImg(this);" style="border-radius: 16px;"  />
							</p>
							<p class="tit" > 신년 맞이 달력 증정 행사 </p>
							<p class="date"> 2022.01.01 ~ 2022.01.31 </p>
						</a>
					</li>
					<li style="padding: 15px;">
						<a href="eventread2?EVENT_BNO=2" data-no="10808" data-netfunnel="N" class="eventBtn" title="카드 할인 행사">
							<p class="img">
								<img src="/resources/images/card1.jpg" alt="카드 할인 행사" onerror="noImg(this);"  style="border-radius: 16px;"/>
							</p>
							<p class="tit" > 카드 할인 행사 </p>
							<p class="date"> 2022.01.01 ~ 2022.12.31 </p>
						</a>
					</li>
					<li style="border: black; padding: 15px;" >
						<a href="eventread3?EVENT_BNO=3" data-no="10808" data-netfunnel="N" class="eventBtn" title="신규 회원 가입 이벤트" >
							<p class="img">
								<img src="/resources/images/signup.png" alt="신규 회원 가입 이벤트" onerror="noImg(this);" style="border-radius: 16px;"/>
							</p>
							<p class="tit" > 신규 회원 가입 이벤트 </p>
							<p class="date"> 2022.01.01 ~ 2022.12.31 </p>
						</a>
					</li>
				</ul>
			</div>
		</div>           
	</div>	
</div>

</body>
</html>

<%@include file="../includes/footer.jsp" %>
