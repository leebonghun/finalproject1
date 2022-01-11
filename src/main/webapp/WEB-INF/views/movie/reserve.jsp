<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>

<div style="height: 30px"></div>
<div class="container">
	<div class="row">
		<table class="table">
			<tr>
				<td width=30% class="text-center" rowspan="7"><img
					src="/resources/images/${movieDto.poster}" width=100%> <input
					type="hidden" name="movieCD" value="${movieDto.movieCD}" /></td>

			</tr>
			<tr>
				<td width=20% class="text-right">영화이름</td>
				<td width=50% class="text-left">${movieDto.movieNM}</td>
			</tr>
			<tr>
				<td width=20% class="text-right">출연</td>
				<td width=50% class="text-left">${movieDto.actors }</td>
			</tr>
			<tr>
				<td width=20% class="text-right">장르</td>
				<td width=50% class="text-left">${movieDto.genres }</td>
			</tr>
			<tr>
				<td width=20% class="text-right">등급</td>
				<td width=50% class="text-left">${movieDto.watchGradeNm }</td>
			</tr>
			<tr>
				<td width=20% class="text-right">상영시간</td>
				<td width=50% class="text-left">${movieDto.showTm}분</td>
			</tr>
			<tr>
				<td width=20% class="text-right">개봉일</td>
				<td width=50% class="text-left">${movieDto.openDt}</td>
			</tr>

		</table>

	</div>

</div>

<div style="height: 30px"></div>
<div class="container">
	<div class="row">
		<c:if test="${!empty list1}">
		<select name="selectBox" id="selectBox">
		<c:forEach var="item" items="${list1}" varStatus="i">
			<option value="${item.reserveDay}">${item.reserveDay}</option>
		</c:forEach>
		</select>
	</c:if>
	
	</div>
</div>
<link rel="stylesheet" href="/resources/css/reset.css">
<link rel="stylesheet" href="/resources/css/header.css">
<link rel="stylesheet" href="/resources/css/reserve.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel='stylesheet'
	href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
<script
	src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<script src="/resources/js/reserve.js"></script>







<%@include file="../includes/footer.jsp"%>
