<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/js/csclist.js"></script>
<script src="/resources/css/bootstrap.css"></script>
<script src="/resources/css/csclist.css"></script>

</head>
<body>
	<div style="margin-left: 100px; margin-right: 100px;" >
		<h2 class="h1" style="color: black;">
			<img src="/resources/images/cscicon.png" style="height: 50px;" /> 고객
			센터
		</h2>
		<!-- faq-banner -->

		<div class="faq">
			<h4 class="latest-text w3_faq_latest_text w3_latest_text">FAQ</h4>
			
			<div class="container">
				<div class="panel-group w3l_panel_group_faq" id="accordion"
					role="tablist" aria-multiselectable="true" >
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title asd">
								<a class="pa_italic" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseOne"
									aria-expanded="false" aria-controls="collapseOne">
									 <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i><img src="/resources/images/분실물.png" style="height: 30px;" />분실물
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body panel_text">분실물은 본점의 안내데스크에서도 문의가
								가능하며 또한 해당 게시판을 통하여 문의하실 수 있습니다. 분실물은 최대 7일동안 보관하며 아무 문의가 없는 경우
								7일후 파기되며 본사는 이에 아무 책임이 없음을 알려드립니다.</div>
								
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo" aria-expanded="false"
									aria-controls="collapseTwo"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i><img src="/resources/images/사람들.png" style="height: 30px;" />대관 및
									단체관람
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body panel_text">
							대관안내<hr>
							<ol style="list-style-type:decimal"  start="1">
								<li>
								1회 대관은 2시간을 최소 기준으로 합니다.
								</li>
								<li>
								대관관람료의 금액은 부가세 10% 포함하기 전 금액입니다.
								</li>								
							</ol>
							단체관람 안내<hr>
							<ol style="list-style-type:decimal"  start="1">
								<li>
								단체관람은 관람인원이 15인 이상시 적용 가능합니다.
								</li>
								<li>
								현재 상영관에서 상영중인 영화를 기준으로 신청 가능합니다.
								</li>								
							</ol>
							안내사항<hr>
							<ol style="list-style-type:decimal"  start="1">
								<li>
								사전에 전화나 고겍센터 게시글로 일정과 대관 가능 여부를 확인하시기 바랍니다.
								</li>
								<li>
								사전에 협의 및 허가되지 않은 시설 사용은 진행할 수 없습니다.
								</li>
								<li>
								행사장 내부 구조변경(책상/의자 등) 시 원상복구를 원칙으로 합니다.
								</li>
								<li>
								공간의 장비 및 시설물 파손 시 그에 대한 배상 책임이 있습니다.
								</li>
								<li>
								대관료는 계약체결 후 대관일 이틀 전까지 입금 또는 결제하여야 합니다.
								</li>
								<li>
							6시간 이상 대관 혹은 종일 대관시 별도의 금액을 책정합니다.
								</li>								
							</ol>
							
							단체 관림 및 대관문의를 원하시는 경우
								고객센터에 대관일,관람할 영화,관람인원,이름,연락처,이메일을 적어 글을 남겨주시면 하루안에 답변해드립니다.혹은 고객
								센터 전화서비스를 통하여 문의 하실수도 있습니다.
								
								</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree" aria-expanded="false"
									aria-controls="collapseThree"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i><img src="/resources/images/환불.png" style="height: 30px;" />예매/환불
									/취소
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body panel_text">
							예매안내<hr>
							<ol style="list-style-type:decimal"  start="1">
								<li>
								BBM 홈페이지 해당 영화을 선택하고 예매하기를 클릭합니다.
								</li>
								<li>
								 로그인 후 이용가능 합니다.
								</li>
								<li>
								
								해당영화 날짜 및 상영관선택, 좌석지정 및 매수를 선택합니다.
								</li>
								
								<li>
							결제방식 선택 후 결제를 완료하면, 예매확인을 통해 예약된 내역을 확인합니다.
								</li>								
							</ol>
							예매취소 및 환불안내<hr>
							<ol style="list-style-type:decimal"  start="1">
								<li>
							온라인 예매 취소 및 취소수수료, 환불은 각 해당 사이트 운영 관리 지침에 따른 취소수수료를 공제 후 환급합니다.
								</li>
								<li>
								방문 및 전화예매는 소비자분쟁해결기준에 따라 환불됩니다.
								</li>					
							</ol>
							
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseFour" aria-expanded="false"
									aria-controls="collapseFour"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i><img src="/resources/images/아이디비번찾기.png" style="height: 30px;" />아이디 및
									비밀번호 찾기
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body panel_text">아이디 및 비밀번호 분실의 경우 로그인창의 아이디 및 비밀번호 찾기를 이용하여 찾으실수 있습니다.
							원활하게 찾지 못하실경우 고겍센터에 글을 남겨주시길바랍니다.
							</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFive">
							<h4 class="panel-title asd">
								<a class="pa_italic collapsed" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseFive" aria-expanded="false"
									aria-controls="collapseFive"> <span
									class="glyphicon glyphicon-plus" aria-hidden="true"></span><i
									class="glyphicon glyphicon-minus" aria-hidden="true"></i><img src="/resources/images/기타.png" style="height: 30px;" />기타
								</a>
							</h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingFive">
							<div class="panel-body panel_text">만약 기타의 문의사항이나 궁금한점이 있으시다면
							하단의 게시판에 글을 남겨주세요.</div>
						</div>
					</div>
				</div>
				
								고객센터 상담전화:02-1234-5678  상담가능시간 : 09:00~18:30
				<div class="panel-body" >
			<div>
				<div>
					<button type="button" class="btn btn-info"				
						onclick="location.href='/movie/cscinsert'" style="margin-bottom: 10px">글쓰기</button>					
				</div>
			</div>
			<table class="table" id=csctbl>
				<thead >
					<tr style="background-color: black;" >
						<th scope="col"  style="color: white;">글번호</th>
						<th scope="col"style="color: white;">사유</th>
						<th scope="col"style="color: white;">제목</th>
						<th scope="col"style="color: white;">접수상태</th>
						<th scope="col"style="color: white;">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cscDto" items="${list}">
						<tr class="table-active">
							<th scope="row">${cscDto.CSC_BNO}</th>
							<td>${cscDto.CSC_RFI}
							</td>										
							<td  id="tit"><a class="move"    href= "${cscDto.CSC_BNO}">
							${cscDto.CSC_TITLE} 
							</a></td>	
							<c:if test="${cscDto.CSC_CHECK == '[답변 대기중]' }">						
							<td>${cscDto.CSC_CHECK}</td>
							</c:if>
							<c:if test="${cscDto.CSC_CHECK == '[답변완료]' }">
								<td style=" color:red;">${cscDto.CSC_CHECK}
									</td>	
								</c:if>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${cscDto.CSC_REGDATE}"/></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
		<div class="row">
			<!-- start search -->
					<div class="col-md-12">
						<div class="col-md-8">
							<!--search Form-->
							<form action=" " method="get" id="searchForm">
							<input type="hidden" name="pageNum" value="${pageDto.cri.pageNum }">
								<input type="hidden" name="amount" value="${pageDto.cri.amount }">
								<select name="type" id="">
									<option value="">-----</option>
									<option value="T"<c:out value="${pageDto.cri.type=='T'?'selected':'' }"/>>제목</option>
									<option value="C"<c:out value="${pageDto.cri.type=='C'?'selected':'' }"/>>내용</option>
									<option value="R"<c:out value="${pageDto.cri.type=='R'?'selected':'' }"/>>사유</option>
									<option value="TC"<c:out value="${pageDto.cri.type=='TC'?'selected':'' }"/>>제목 or 내용</option>
									<option value="TR"<c:out value="${pageDto.cri.type=='TR'?'selected':'' }"/>>제목 or 사유</option>
									<option value="TCR"<c:out value="${pageDto.cri.type=='TCR'?'selected':'' }"/>>제목 or 내용 or 사유</option>
								</select> 
								<input type="text" name="keyword" id="" value='<c:out value="${pageDto.cri.keyword }"/>'>
								<button class="btn btn-default">검색</button>
							</form>
						</div>
						<div class="col-md-2 col-md-offset-2">
							<!--페이지 목록 갯수 지정하는 폼-->
							<select name="" id="amount" class="form-control">
								<option value="10"
									<c:out value="${pageDto.cri.amount==10?'selected':'' }"/>>10</option>
								<option value="20"
									<c:out value="${pageDto.cri.amount==20?'selected':'' }"/>>20</option>
								<option value="30"
									<c:out value="${pageDto.cri.amount==30?'selected':'' }"/>>30</option>
								<option value="40"
									<c:out value="${pageDto.cri.amount==40?'selected':'' }"/>>40</option>
							</select>
						</div>
							<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
					</div>
				</div>		
			</div>
			
		</div>

		
			<div class="text-center">


		<!-- //faq-banner -->
		<div>
<!-- start Pagination -->
				<div class="text-center">
					<ul class="pagination">
						<c:if test="${pageDto.prev }">
							<li class="paginate_button previous"><a
								href="${pageDto.startPage-10 }">Previous</a></li>
						</c:if>
						<c:forEach var="idx" begin="${pageDto.startPage }"
							end="${pageDto.endPage }">
							<li
								class="paginate_button ${pageDto.cri.pageNum==idx?'active':'' }">
								<a href="${idx }">${idx }</a>
							</li>
						</c:forEach>
						<c:if test="${pageDto.next }">
							<li class="paginate_button next"><a
								href="${pageDto.endPage+1 }">Next</a></li>
						</c:if>
					</ul>
				</div>
				<!-- end Pagination -->
			
		</div>
	</div>
	</div>
	</div>
	
	<!--  페이지 나누기를 위한 폼 -->
<form action="" method="get" id="actionForm">
	<input type="hidden" name="pageNum" value="${pageDto.cri.pageNum}">
	<input type="hidden" name="amount" value="${pageDto.cri.amount}">
	<input type="hidden" name="type" value="${pageDto.cri.type}">
	<input type="hidden" name="keyword" value="${pageDto.cri.keyword}">
	<input type="hidden" name="CSC_BNO" value="">
	
</form>

<%--시큐리티 적용으로 인한 추가 --%>
			  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
		  <input type="hidden" name="user_id" value="${readdto.user_id}" /> 
<!-- 스크립트 -->
<script>
	let result = '${result}';
</script>

</body>
</html>
<%@include file="../includes/footer.jsp"%>