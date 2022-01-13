<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<script>
	$(document).ready(function(){
		$("input[type='checkbox']").on("click",function(){
			let count = $("input:checked[type='checkbox']").length;
			
			if(count>3){
				swal("3개 까지의 좌석만 선택할 수 있습니다");
				$(this).prop("checked",false);
			}
			
		});
		
		
		
	});
	


</script>
<div style="height: 30px"></div>
<div class="container">
	<div class="tit-heading-wrap" id="wrap1">
		<h3 id="live">영화 예매</h3>
		</div>
	<div class="row">
		<table class="table">
			<tr>
				<td width=30% class="text-center" rowspan="7"><img
					src="/resources/images/${movieDto.poster}" width=100%> <input
					type="hidden" name="movieCD" value="${movieDto.movieCD}" />
					</td>

			</tr>
			<tr>
				<td width=20% class="text-right">영화이름</td>
				<td width=50% class="text-left" >${movieDto.movieNM}</td>
			
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

<form action="" method="post" id="noaction">
<div style="height: 30px"></div>
<div class="container">

		<div class="container" id="selectSeat1">
	<div class="row">
		<input type="hidden" name="movieNM" value="${movieDto.movieNM}"  />
		
		
		<c:if test="${!empty list1}">
		<select name="reserveDay" id="selectBox1">
		<c:forEach var="item" items="${list1}" varStatus="i">
			<option value="${item.reserveDay}">${item.reserveDay}</option>
		</c:forEach>
		</select>
			</c:if>
			
		<c:if test="${!empty list1}">
		<select name="reserveTime" id="selectBox2">
		<c:forEach var="item" items="${list1}" varStatus="i">
			<option value="${item.reserveTime}">${item.reserveTime}</option>
		</c:forEach>
		</select>
			</c:if>
			
		<c:if test="${!empty list1}">
		<select name="reservePlace" id="selectBox3">
		<c:forEach var="item" items="${list1}" varStatus="i">
			<option value="${item.reservePlace}">${item.reservePlace}</option>
		</c:forEach>
		</select>
			</c:if>
			
		<c:if test="${!empty list1}">
		<select name="reserveGuan" id="selectBox4">
		<c:forEach var="item" items="${list1}" varStatus="i">
			<option value="${item.reserveGuan}">${item.reserveGuan}</option>
		</c:forEach>
		</select>
			</c:if>
		<button type="submit" id="myrev">예매하기</button>
		</br>
		</br>
		<h4>좌석 선택</h4>
		<input type="checkbox" name="reserveSeat" id="checker1" value="A1"><label for="checker1">A1</label>
		<input type="checkbox" name="reserveSeat" id="checker2" value="A2"><label for="checker2">A2</label>
		<input type="checkbox" name="reserveSeat" id="checker3" value="A3"><label for="checker3">A3</label>
		<input type="checkbox" name="reserveSeat" id="checker4" value="A4"><label for="checker4">A4</label>
		<input type="checkbox" name="reserveSeat" id="checker21" value="A5"><label for="checker21">A5</label>
		<input type="checkbox" name="reserveSeat" id="checker22" value="A6"><label for="checker22">A6</label>
		</br>
		</br>
		</br>
		<input type="checkbox" name="reserveSeat" id="checker17" value="B1"><label for="checker17">B1</label>
		<input type="checkbox" name="reserveSeat" id="checker18" value="B2"><label for="checker18">B2</label>
		<input type="checkbox" name="reserveSeat" id="checker19" value="B3"><label for="checker19">B3</label>
		<input type="checkbox" name="reserveSeat" id="checker20" value="B4"><label for="checker20">B4</label>
		<input type="checkbox" name="reserveSeat" id="checker23" value="B5"><label for="checker23">B5</label>
		<input type="checkbox" name="reserveSeat" id="checker24" value="B6"><label for="checker24">B6</label>
		</br>
		</br>
		</br>
		<input type="checkbox" name="reserveSeat" id="checker5" value="C1"><label for="checker5">C1</label>
		<input type="checkbox" name="reserveSeat" id="checker6" value="C2"><label for="checker6">C2</label>
		<input type="checkbox" name="reserveSeat" id="checker7" value="C3"><label for="checker7">C3</label>
		<input type="checkbox" name="reserveSeat" id="checker8" value="C4"><label for="checker8">C4</label>
		<input type="checkbox" name="reserveSeat" id="checker25" value="C5"><label for="checker25">C5</label>
		<input type="checkbox" name="reserveSeat" id="checker26" value="C6"><label for="checker26">C6</label>
		</br>
		</br>
		</br>
		<input type="checkbox" name="reserveSeat" id="checker9" value="D1"><label for="checker9">D1</label>
		<input type="checkbox" name="reserveSeat" id="checker10" value="D2"><label for="checker10">D2</label>
		<input type="checkbox" name="reserveSeat" id="checker11" value="D3"><label for="checker11">D3</label>
		<input type="checkbox" name="reserveSeat" id="checker12" value="D4"><label for="checker12">D4</label>
		<input type="checkbox" name="reserveSeat" id="checker27" value="D5"><label for="checker27">D5</label>
		<input type="checkbox" name="reserveSeat" id="checker28" value="D6"><label for="checker28">D6</label>
		</br>
		</br>
		</br>
		<input type="checkbox" name="reserveSeat" id="checker13" value="E1"><label for="checker13">E1</label>
		<input type="checkbox" name="reserveSeat" id="checker14" value="E2"><label for="checker14">E2</label>
		<input type="checkbox" name="reserveSeat" id="checker15" value="E3"><label for="checker15">E3</label>
		<input type="checkbox" name="reserveSeat" id="checker16" value="E4"><label for="checker16">E4</label>
		<input type="checkbox" name="reserveSeat" id="checker29" value="E5"><label for="checker29">E5</label>
		<input type="checkbox" name="reserveSeat" id="checker30" value="E6"><label for="checker30">E6</label>
		</div>
		
		</div>
		
		</div>

	
	
	   <input type="hidden" name="${_csrf.parameterName}"
      value="${_csrf.token}" />
      <input type="hidden" class="form-control" name="user_id" value='<sec:authentication property="principal.username"/>'>
</form>
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
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>






<%@include file="../includes/footer.jsp"%>
