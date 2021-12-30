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

</head>
<body>
	<div style="margin-left: 100px;" class="jumbotron">
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
									aria-expanded="true" aria-controls="collapseOne"> <span
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
						onclick="location.href='/movie/cscinsert'">글쓰기</button>
				</div>

			</div>

			<table class="table table-hover" id=csctbl>
				<thead>
					<tr>
						<th scope="col">글번호</th>
						<th scope="col">사유</th>
						<th scope="col">제목</th>
						<th scope="col">접수상태</th>
						<th scope="col">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="cscDto" items="${list}">
						<tr class="table-active">
							<th scope="row">${cscDto.CSC_BNO}</th>
							<td>${cscDto.CSC_RFI}</td>
							<td><a href="cscread?CSC_BNO=${cscDto.CSC_BNO}">${cscDto.CSC_TITLE}
							</a></td>
							<td>${cscDto.CSC_CHECK}</td>

							<td>${cscDto.CSC_REGDATE}</td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
			</div>
			
		</div>
		<!-- //faq-banner -->
		
<<<<<<< HEAD
		<div class="text-center">
=======
	</div>
		<table class="table table-hover" id=csctbl>
			<thead>
				<tr>
					<th scope="col">글번호</th>
					<th scope="col">제목</th>
					<th scope="col">사유</th>
					<th scope="col">유저아이디</th>								
					<th scope="col">등록일</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cscDto" items="${list}">
				<tr class="table-active">				
					<th scope="row">${cscDto.CSC_BNO}</th>
					<td>${cscDto.user_id}</td>

					<td><a href="cscread?CSC_BNO=${cscDto.CSC_BNO}">${cscDto.CSC_TITLE}</a></td>				
					<td>${cscDto.CSC_RFI}</td>
					<td>${cscDto.user_id}</td>
					<td>${cscDto.CSC_REGDATE}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
			<div class="text-center">
>>>>>>> branch 'master' of https://github.com/leebonghun/finalproject1.git
			<ul class="pagination pagination-lg">
				<li class="disabled"><a href="#"><i
						class="fa fa-angle-left">«</i></a></li>
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#"><i class="fa fa-angle-right">»</i></a></li>
			</ul>
		</div>

	</div>
</body>
</html>
<%@include file="../includes/footer.jsp"%>