<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<%@include file="../includes/header.jsp"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table {
	width: 100%;
	list-style: none;
    padding-left: 0px;
}

table.ft {
  border-collapse: collapse;
  text-align: left;
  line-height: 1.5;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  margin: 20px 10px;
}
table.ft thead th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #fff;
  background: #e7708d;
  margin: 20px 10px;
}
table.ft tbody th {
  width: 150px;
  padding: 10px;
}
table.ft td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
}
table.ft .even {
  background: #fdf3f5;
}

table.st th, td {
	border: 1px solid #bcbcbc;
}

.container {
	width: 67.2.5%;
}


</style>
</head>
<body>
	<div class="container">
		<div>
		
		</div>
		

		<div class="table">
			<table class="ft">
			  <thead>
			  <tr>
			    <th scope="cols">타이틀</th>
			    <th scope="cols">내용</th>
			  </tr>
			  </thead>
			  <tbody>
			  <tr>
			    <th scope="row">항목명</th>
			    <td>내용이 들어갑니다.</td>
			  </tr>
			  <tr>
			    <th scope="row" class="even">항목명</th>
			    <td class="even">내용이 들어갑니다.</td>
			  </tr>
			  <tr>
			    <th scope="row">항목명</th>
			    <td>내용이 들어갑니다.</td>
			  </tr>
			  </tbody>
			</table>
			<table class="st">
		      <tbody>
		        <tr>
		          <td width="170px">이용안내</td>
		          <td>
		          	<li>예매 변경은 불가능하며, 취소 후 재 예매를 하셔야만 합니다.</li>
       				<li>영수증은 상영 시간 전까지 My BBM 에서 출력하실 수 있습니다. 단, 신용카드로 예매하신 경우만 한합니다.</li>
       				<li>상영 시간 이후 관람하신 영화의 영수증 출력을 원하실 경우, 0000-0000로 문의 주시기 바랍니다.</li>
       				<li>취소하신 내역이 나타나지 않거나 궁금하신 사항이 있으시면, 고객센터로 문의해 주시기 바랍니다.</li>
		          </td>
		        </tr>
		        <tr>
		          <td>티켓 교환방법</td>
		          <td>
		          	<li>
      					<p><strong>티켓판매기(ATM)에서 발권하실 경우</strong><br />예매번호 또는 고객인증번호 (법정생년월일 6자리 + 휴대폰번호 뒷 7~8자리)를 입력하시면 티켓을 편하게 발권하실 수 있습니다.</p>
      				</li>
      				<li>
      					<p><strong>매표소에서 발권하실 경우</strong><br />티켓교환권을 출력하여 매표소에 방문하시면 티켓으로 교환하실 수 있습니다.<br />
       					(티켓교환권 출력이 어려운 경우, 예매번호와 신분증을 지참하시면 매표소에서 티켓을 수령하실 수 있습니다.)</p>
      				</li>
		          </td>
		        </tr>
		        <tr>
		          <td>예매 취소 안내</td>
		          <td>
		          	<li>
                       <p><strong>카카오페이</strong><br />
                           카카오페이머니나 카카오포인트를 사용하신 경우 각각의 잔액으로 원복되며, 카드 결제를 하신 경우는 카드사 정책에 따라 승인취소가 진행되며 3일 이후 매입 취소시 영업일 기준 3~10일 소요됩니다.</p>
                    </li>
		        </tr>
		        <tr>
		          <td>환불 규정 안내</td>
		          <td>
		          	<li>
	    				<p><strong>현장 취소를 하는 경우</strong><br />상영시간 이전까지만 가능하며, 상영시간 이후 취소나 환불은 되지 않습니다.</p>
		            </li>
		          	<li>
		            	<p>
	                    <strong>홈페이지에서 예매 취소할 경우</strong><br />
	                    부분 취소는 불가능합니다. (ex. 4장을 인터넷으로 예매한 경우 4장 모두 취소만 가능)<br />
	                    홈페이지 예매 취소는 상영시간 20분전까지 가능합니다.<br />
	                    <em style="color:#0000FF";>(단, 씨네&포레관, 씨네&리빙룸, SUITE CINEMA 제외)</em><br />
	                    상영시간 이후 취소나 환불은 되지 않습니다
	                    </p>	            					
		            </li>
	                <li>
	                  	<p>
	                      <strong>모바일 앱/웹(m.cgv.co.kr)에서 예매 취소할 경우</strong><br />
	                      부분 취소는 불가합니다.(ex. 4장을 인터넷으로 예매한 경우 4장 모두 취소만 가능)<br /> 
	                      모바일 앱/웹 예매 취소는 상영시간 15분전까지 가능합니다.<br />
	                      <em style="color:#0000FF";>(단, 씨네&포레관, 씨네&리빙룸, SUITE CINEMA 제외)</em><br /> 
	                      상영시간 이후 취소나 환불은 되지 않습니다.
	                  	</p>
	                </li>
	                <li>
	                    <p><strong>단, 일부 행사의 경우 행사 당일 취소, 변경 불가 합니다.</strong></p>
	                </li>
			          </td>
			        </tr>
			      </tbody>
			    </table>
		    </div>
	</div>
</body>
<%@include file="../includes/footer.jsp"%>
</html>