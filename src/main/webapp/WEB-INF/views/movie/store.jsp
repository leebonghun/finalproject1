<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/css/store.css"></script>
<style>
li {
    display: inline-table;
    text-align: center;
    list-style: none;
    padding-left: 0px;
    
}

.event-list ul li a .img img {
   width: 270px;
    list-style-position: ;
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
    display: block;
    margin: 0;
}


img{
	  max-width: 270px;
    max-height: 270px;
}
</style>

</head>
<body>

<!-- 스토어 굿즈 -->
<div class="container">
	<div>
		<h2 class="h2" style="color: black;">
			<img src="/resources/images/store1.png" style="height: 60px;" /> 스토어
		</h2> 
	</div>
</div>
<div class="container" style="margin-top: 50px">
		<div id="event-list-wrap">
			<div class="tit-util-mt70" >
				<h3 class="tit">BBM Goods & Ticket</h3>
			</div>
			<div class="event-list mt15" style="margin-top: 20px" > 
				<ul>
					<li>
						<a data-no="10808" data-netfunnel="N" style="text-align: center;"  title="영화 티켓">
							<p class="img">
								<img src="/resources/images/ticket1.jpg" alt="영화 티켓" onerror="noImg(this);" style="border-radius: 16px;"/>
							</p>
							<p class="tit"> 영화 티켓 </p>
							<p style="color: black;"> ￦12000 </p>
						</a>
					</li>
					<li>
						<a data-no="10808" data-netfunnel="N" style="text-align: center;" title="텀블러">
							
							<p class="img">
								<img src="/resources/images/tumbler1.jpg" alt="텀블러" onerror="noImg(this);" style="border-radius: 16px;"/>
							</p>
							<p class="tit"> 텀블러 </p>
							<p style="color: black;"> ￦10000 </p>
						</a>
					</li>
					<li>
						<a data-no="10808" data-netfunnel="N" style="text-align: center;" title="에코백">
							<p class="img">
								<img src="/resources/images/ecobag1.jpg" alt="에코백" onerror="noImg(this);" style="border-radius: 16px; size: 100px;"/>
							</p>
							<p class="tit"> 에코백 </p>
							<p style="color: black;"> ￦5000 </p>
						</a>
					</li>
				</ul>
<!-- 스토어 굿즈 -->
			</div>
		</div>          
	</div>	
<div class="container" style="margin-top: 50px">
		<div id="event-list-wrap">
			<div class="tit-util-mt70">
				<h3 class="tit">BBM Food</h3>
			</div>
			<div class="event-list mt15">
				<ul>
					<li>
						<a data-no="10808" data-netfunnel="N" style="text-align: center;" title="콜라 2 + 팝콘">
							<p class="img">
								<img src="/resources/images/popcorn1.jpg" alt="콜라 2 + 팝콘" onerror="noImg(this);" style="border-radius: 16px;" />
							</p>
							<p class="tit"> 콜라 2 + 팝콘 </p>
							<p style="color: black;"> ￦9000 </p>
						</a>
					</li>
					<li>
						<a data-no="10808" data-netfunnel="N" style="text-align: center;" title="오징어 버터구이">
							<p class="img">
								<img src="/resources/images/cuttlefish1.jpg" alt="오징어 버터구이" onerror="noImg(this);" style="border-radius: 16px;"/>
							</p>
							<p class="tit"> 오징어 버터구이 </p>
							<p style="color: black;"> ￦3500 </p>
						</a>
					</li>
					<li>
						<a data-no="10808" data-netfunnel="N" style="text-align: center;" title="나초">
							<p class="img">
								<img src="/resources/images/nacho.jpg" alt="나초" onerror="noImg(this);" style="border-radius: 16px;"/>
							</p>
							<p class="tit"> 나초 </p>
							<p style="color: black;"> ￦4900 </p>
						</a>
					</li>
				</ul>
<!-- 스토어 굿즈 -->
			</div>
		</div>           
</div> 
</body>
</html>
<%@include file="../includes/footer.jsp"%>