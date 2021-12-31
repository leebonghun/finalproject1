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
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>분실물
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
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>대관 및
									단체관람
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body panel_text">단체 관림 및 대관문의를 원하시는 경우
								고객센터에 대관일,관람할 영화,관람인원,이름,연락처,이메일을 적어 글을 남겨주시면 하루안에 답변해드립니다.혹은 고객
								센터 전화서비스를 통하여 문의 하실수도 있습니다. 고객센터:02-1234-5678</div>
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
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>예매 환불
									및 취소
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body panel_text">Neque porro quisquam
								est, qui dolorem ipsum quia dolor sit amet, consectetur,
								adipisci velit, sed quia non numquam eius modi tempora incidunt
								ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim
								ad minima veniam, quis nostrum exercitationem ullam corporis
								suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
								Quis autem vel eum iure reprehenderit qui in ea voluptate velit
								esse quam nihil molestiae consequatur, vel illum qui dolorem eum
								fugiat quo voluptas nulla pariatur.</div>
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
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>아이디 및
									비밀번호 찾기
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body panel_text">Neque porro quisquam
								est, qui dolorem ipsum quia dolor sit amet, consectetur,
								adipisci velit, sed quia non numquam eius modi tempora incidunt
								ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim
								ad minima veniam, quis nostrum exercitationem ullam corporis
								suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
								Quis autem vel eum iure reprehenderit qui in ea voluptate velit
								esse quam nihil molestiae consequatur, vel illum qui dolorem eum
								fugiat quo voluptas nulla pariatur.</div>
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
									class="glyphicon glyphicon-minus" aria-hidden="true"></i>기타
								</a>
							</h4>
						</div>
						<div id="collapseFive" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingFive">
							<div class="panel-body panel_text">Neque porro quisquam
								est, qui dolorem ipsum quia dolor sit amet, consectetur,
								adipisci velit, sed quia non numquam eius modi tempora incidunt
								ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim
								ad minima veniam, quis nostrum exercitationem ullam corporis
								suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
								Quis autem vel eum iure reprehenderit qui in ea voluptate velit
								esse quam nihil molestiae consequatur, vel illum qui dolorem eum
								fugiat quo voluptas nulla pariatur.</div>
						</div>
					</div>
				</div>
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
							<td>${cscDto.CSC_RFI}</td>
							<td><a class="move" href= "${cscDto.CSC_BNO}">${cscDto.CSC_TITLE}
							</a></td>
							<td>${cscDto.CSC_CHECK}</td>
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
<!-- 스크립트 -->
<script>
	let result = '${result}';
</script>

</body>
</html>
<%@include file="../includes/footer.jsp"%>