<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<script>
   $(function(){
      
   
   $("#myrev").click(function(e){
      let formObj = $("#noaction");
      let movieNM = '${movieDto.movieNM}';
      let money = $("input:checked[type='checkbox']").length*8000;
      if($("input:checkbox[name=reserveSeat]").is(":checked") == true){
             swal('좌석 선택이 완료되었습니다');
            e.preventDefault();
            IMP.init('imp46297553');
      IMP.request_pay({
          pg : 'kcp',
          pay_method : 'card',
          merchant_uid : 'merchant_' + new Date().getTime(),
          name : '${movieDto.movieNM}', //결제창에서 보여질 이름
          amount : money, //실제 결제되는 가격
          buyer_name : '<sec:authentication property="principal.username"/>',
      }, 
      
      function(rsp) {
         console.log(rsp);
          if ( rsp.success ) {
             var msg = '예매가 완료되었습니다.';
            formObj.find("input[name='reserveMoney']").val(money);
            formObj.submit();
          } else {
              var msg = '결제에 실패하였습니다.';
          }
          swal(msg);
      });
      }else{
         swal('한 개이상의 좌석을 선택해주세요');
         e.preventDefault();
         return;
      }   
   })
   })
</script>
<div style="height: 30px; "></div>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<div style="height: 30px;"></div>
<div class="container">
   <div class="tit-heading-wrap" id="wrap1" style="width: 890px;">
      <h3 id="live">영화 예매</h3>
      </div>
   <div class="row">
      <table class="table">
         <tr>
            <td width=30% class="text-center" rowspan="7"><img
               src="/resources/images/${movieDto.poster}" width=100%> <input
               type="hidden" name="movieCD" value="${movieDto.movieCD}" />
               <input type="hidden" name="movieCD" value="${movieDto.movieCD}" />
               </td>

         </tr>
         <tr>
            <td width=20% class="text-right" style="font:sans-serif; color: black; font-size: 15px;">영화이름</td>
            <td width=50% class="text-left" style="font:sans-serif; color: black; font-size: 15px;">${movieDto.movieNM}</td>
         
         </tr>
         <tr>
            <td width=20% class="text-right" style="font:sans-serif; color: black; font-size: 15px;">출연</td>
            <td width=50% class="text-left" style="font:sans-serif; color: black; font-size: 15px;">${movieDto.actors }</td>
         </tr>
         <tr>
            <td width=20% class="text-right" style="font:sans-serif; color: black; font-size: 15px;">장르</td>
            <td width=50% class="text-left" style="font:sans-serif; color: black; font-size: 15px;">${movieDto.genres }</td>
         </tr>
         <tr>
            <td width=20% class="text-right" style="font:sans-serif; color: black; font-size: 15px;">등급</td>
            <td width=50% class="text-left" style="font:sans-serif; color: black; font-size: 15px;">${movieDto.watchGradeNm }</td>
         </tr>
         <tr>
            <td width=20% class="text-right" style="font:sans-serif; color: black; font-size: 15px;">상영시간</td>
            <td width=50% class="text-left" style="font:sans-serif; color: black; font-size: 15px;">${movieDto.showTm}분</td>
         </tr>
         <tr>
            <td width=20% class="text-right" style="font:sans-serif; color: black; font-size: 15px;" >개봉일</td>
            <td width=50% class="text-left"  style="font:sans-serif; color: black; font-size: 15px;">${movieDto.openDt}</td>
         </tr>

      </table>

   </div>

</div>

<form action="/movie/mybbm" method="post" id="noaction" >

<div style="height: 30px"></div>
<div class="container" style="width: 1020px; padding-left: 15px; padding-right: 174px; margin-right: auto; margin-left: auto;">

		<div class="container" id="selectSeat1" style="padding-top: 10px; padding-bottom: 10px; width: 880px;">
	<div class="row">
		<input type="hidden" name="movieNM" value="${movieDto.movieNM}"  />
		<input type="hidden" name="movieCD" value="${movieDto.movieCD}"  />
		<%-- <input type="hidden" name="reserveSeat" value="${list1.reserveSeat}"/> --%>
				
		<c:if test="${!empty list1}">
		<select name="reserveDay" id="selectBox1" style="border-radius: 16px; border: 2px solid black; font-weight: bold; color: black;">
		<c:forEach var="item" items="${list1}" varStatus="i">
			<option value="${item.reserveDay}">${item.reserveDay}</option>
		</c:forEach>
		</select>
			</c:if>
			
		<c:if test="${!empty list1}">
		<select name="reserveTime" id="selectBox2" style="border-radius: 16px; border: 2px solid black; font-weight: bold; color: black;">
		<c:forEach var="item" items="${list1}" varStatus="i">
			<option value="${item.reserveTime}">${item.reserveTime}</option>
		</c:forEach>
		</select>
			</c:if>
			
		<c:if test="${!empty list1}">
		<select name="reservePlace" id="selectBox3" style="border-radius: 16px; border: 2px solid black; font-weight: bold; color: black;">
		<c:forEach var="item" items="${list1}" varStatus="i">
			<option value="${item.reservePlace}">${item.reservePlace}</option>
		</c:forEach>
		</select>
			</c:if>
			
		<c:if test="${!empty list1}">
		<select name="reserveGuan" id="selectBox4" style="border-radius: 16px; border: 2px solid black; font-weight: bold; color: black;">
		<c:forEach var="item" items="${list1}" varStatus="i">
			<option value="${item.reserveGuan}">${item.reserveGuan}</option>
		</c:forEach>
		</select>
			</c:if>
		<sec:authorize access="isAuthenticated()" >	
		<button type="submit" id="myrev" style="border-radius: 16px; border: 2px solid black; font-weight: bold; color: black;">예매하기</button>
		</sec:authorize>
		
		
      
      <input type="hidden" name="reserveMoney" value="" />
      
      </br>
      </br>

      <h4 style="padding-bottom: 10px; color: black; font-weight: bold;">좌석 선택</h4>
      <input type="checkbox" name="reserveSeat" id="checker1" value="A1"><label for="checker1" style="text-align: center;">A1</label>
      <input type="checkbox" name="reserveSeat" id="checker2" value="A2"><label for="checker2">A2</label>
      <input type="checkbox" name="reserveSeat" id="checker3" value="A3"><label for="checker3">A3</label>
      <input type="checkbox" name="reserveSeat" id="checker4" value="A4"><label for="checker4">A4</label>
      <input type="checkbox" name="reserveSeat" id="checker21" value="A5"><label for="checker21">A5</label>
      <input type="checkbox" name="reserveSeat" id="checker22" value="A6"><label for="checker22">A6</label>
      <input type="checkbox" name="reserveSeat" id="checker31" value="A7"><label for="checker31">A7</label>
      <input type="checkbox" name="reserveSeat" id="checker32" value="A8"><label for="checker32">A8</label>
      <input type="checkbox" name="reserveSeat" id="checker33" value="A9"><label for="checker33">A9</label>
      <input type="checkbox" name="reserveSeat" id="checker34" value="A10"><label for="checker34">A10</label>
      </br>
      </br>
      </br>
      <input type="checkbox" name="reserveSeat" id="checker17" value="B1"><label for="checker17">B1</label>
      <input type="checkbox" name="reserveSeat" id="checker18" value="B2"><label for="checker18">B2</label>
      <input type="checkbox" name="reserveSeat" id="checker19" value="B3"><label for="checker19">B3</label>
      <input type="checkbox" name="reserveSeat" id="checker20" value="B4"><label for="checker20">B4</label>
      <input type="checkbox" name="reserveSeat" id="checker23" value="B5"><label for="checker23">B5</label>
      <input type="checkbox" name="reserveSeat" id="checker24" value="B6"><label for="checker24">B6</label>
      <input type="checkbox" name="reserveSeat" id="checker35" value="B7"><label for="checker35">B7</label>
      <input type="checkbox" name="reserveSeat" id="checker36" value="B8"><label for="checker36">B8</label>
      <input type="checkbox" name="reserveSeat" id="checker37" value="B9"><label for="checker37">B9</label>
      <input type="checkbox" name="reserveSeat" id="checker38" value="B10"><label for="checker38">B10</label>
      </br>
      </br>
      </br>
      <input type="checkbox" name="reserveSeat" id="checker5" value="C1"><label for="checker5">C1</label>
      <input type="checkbox" name="reserveSeat" id="checker6" value="C2"><label for="checker6">C2</label>
      <input type="checkbox" name="reserveSeat" id="checker7" value="C3"><label for="checker7">C3</label>
      <input type="checkbox" name="reserveSeat" id="checker8" value="C4"><label for="checker8">C4</label>
      <input type="checkbox" name="reserveSeat" id="checker25" value="C5"><label for="checker25">C5</label>
      <input type="checkbox" name="reserveSeat" id="checker26" value="C6"><label for="checker26">C6</label>
      <input type="checkbox" name="reserveSeat" id="checker39" value="C7"><label for="checker39">C7</label>
      <input type="checkbox" name="reserveSeat" id="checker40" value="C8"><label for="checker40">C8</label>
      <input type="checkbox" name="reserveSeat" id="checker41" value="C9"><label for="checker41">C9</label>
      <input type="checkbox" name="reserveSeat" id="checker42" value="C10"><label for="checker42">C10</label>
      </br>
      </br>
      </br>
      <input type="checkbox" name="reserveSeat" id="checker9" value="D1"><label for="checker9">D1</label>
      <input type="checkbox" name="reserveSeat" id="checker10" value="D2"><label for="checker10">D2</label>
      <input type="checkbox" name="reserveSeat" id="checker11" value="D3"><label for="checker11">D3</label>
      <input type="checkbox" name="reserveSeat" id="checker12" value="D4"><label for="checker12">D4</label>
      <input type="checkbox" name="reserveSeat" id="checker27" value="D5"><label for="checker27">D5</label>
      <input type="checkbox" name="reserveSeat" id="checker28" value="D6"><label for="checker28">D6</label>
      <input type="checkbox" name="reserveSeat" id="checker43" value="D7"><label for="checker43">D7</label>
      <input type="checkbox" name="reserveSeat" id="checker44" value="D8"><label for="checker44">D8</label>
      <input type="checkbox" name="reserveSeat" id="checker45" value="D9"><label for="checker45">D9</label>
      <input type="checkbox" name="reserveSeat" id="checker46" value="D10"><label for="checker46">D10</label>
      </br>
      </br>
      </br>
      <input type="checkbox" name="reserveSeat" id="checker13" value="E1"><label for="checker13">E1</label>
      <input type="checkbox" name="reserveSeat" id="checker14" value="E2"><label for="checker14">E2</label>
      <input type="checkbox" name="reserveSeat" id="checker15" value="E3"><label for="checker15">E3</label>
      <input type="checkbox" name="reserveSeat" id="checker16" value="E4"><label for="checker16">E4</label>
      <input type="checkbox" name="reserveSeat" id="checker29" value="E5"><label for="checker29">E5</label>

      <input type="checkbox" name="reserveSeat" id="checker30" value="E6"><label for="checker30">E6</label>
      <input type="checkbox" name="reserveSeat" id="checker47" value="E7"><label for="checker47">E7</label>
      <input type="checkbox" name="reserveSeat" id="checker48" value="E8"><label for="checker48">E8</label>
      <input type="checkbox" name="reserveSeat" id="checker49" value="E9"><label for="checker49">E9</label>
      <input type="checkbox" name="reserveSeat" id="checker50" value="E10"><label for="checker50">E10</label>

      </div>
      
      </div>
      
      </div >

   
   
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
<script>
let reserveSeat = '${seatDto}';
</script>





<%@include file="../includes/footer.jsp"%>