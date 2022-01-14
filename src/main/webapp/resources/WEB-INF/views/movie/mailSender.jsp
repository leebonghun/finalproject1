<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
 <script src="/resources/css/bootstrap.css"></script>
<script src="/resources/js/mailSender.js"></script> 
</head>
<body>
<%-- <h3 class="title">Contact</h3>
	<div class="contact-us">
		<form action="${pageContext.request.contextPath }/mail/mailSend"
			method="post">
			<div class="">
				<input type="text" name="name" placeholder="Name"
					required="required">
			</div>
			<div class="">
				<input type="text" name="last_name" placeholder="last_name"
					required="required">
			</div>
			<div class="">
				<input type="email" name="email" placeholder="email"
					required="required">
			</div>
			<div class="">
				<input type="text" name="phone" placeholder="phone"
					required="required">
			</div>
			<div class="clearfix">
				<div class="styled-input">
					<textarea name="message" placeholder="Message" required=""></textarea>
				</div>
				<div>
					<div class="click">
						<input type="submit" value="SEND">
					</div>
				</div>
			</div>
				</form>
		
	</div> 
			--%>
				
			
	
	<form action="get"  role="form" >
		<button type="submit" class="btn btn-info" id="pay" >결제</button>
	<!-- 시큐리티 적용으로 인한 추가 -->
	<input type="hidden" name="${_csrf.parameterName}"
		value="${_csrf.token}" />
	<input type="hidden" name="user_id" value="${readdto.user_id}" />
	</form>
	
   
</body>
</html>
<%@include file="../includes/footer.jsp"%>