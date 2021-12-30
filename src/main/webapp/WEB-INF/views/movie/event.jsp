<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp" %>
<!-- 이벤트 상단 -->
<div class="container">
	<div>
		<h2 class="h2" >
			<img src="/resources/images/event1.png" style="height: 60px;" /> 이벤트
		</h2>            
	</div>	
</div>
<!-- 이벤트 중간부분 -->
<div class="container">
<div id="event-list-wrap">
	<div class="inner-wrap"></div>
	<div id="boardSearch" class="inner-wrap" style="display:none;"></div>
		<div class="board-list-util mt40">
			<p class="result-count"></p>
		</div>
	<div id="event-list-wrap">
		<div class="inner-wrap">
			<div class="tit-util mt70">
				<h3 class="tit">BBM Pick</h3>
			</div>
		</div>
			<div class="event-list mt15">
				<ul>
					<li>
						<a href="#" data-no="10796" data-netfunnel="N" class="eventBtn" title="[신년 맞이 달력 증정 행사]">
							<p class="img">
								<img src="/resources/images/2022-calendar.jpg" alt="신년 맞이 달력 증정 행사" onerror="noImg(this);" ></p>
							<p class="tit"> [신년 맞이 달력 증정 행사] </p>
							<p class="date"> 2022.01.01 ~ 22.01.31 </p>							
						</a>
					</li>
					<li>
						<a href="#" data-no="10796" data-netfunnel="N" class="eventBtn" title="[카드 할인 행사]">
							<p class="img">
								<img src="/resources/images/card1.jpg" alt="카드 할인 행사" onerror="noImg(this);" ></p>
							<p class="tit"> [카드 할인 행사] </p>
							<p class="date"> 2022.01.01 ~ 22.01.31 </p>							
						</a>
					</li>
					<li>
						<a href="#" data-no="10796" data-netfunnel="N" class="eventBtn" title="[신규 회원 이벤트]">
							<p class="img">
								<img src="/resources/images/signup.png" alt="신규 회원 이벤트" onerror="noImg(this);" ></p>
							<p class="tit"> [신규 회원 이벤트] </p>
							<p class="date"> 2022.01.01 ~ 22.01.31 </p>							
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	</div>
</div>
<%@include file="../includes/footer.jsp" %>
