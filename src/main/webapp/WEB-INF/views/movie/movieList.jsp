<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="/resources/css/movieList.css"></script>

</head>
<body>

<div class="bg-bricks" id="container">
	<div class="" id="contents">
		<div class="wrap-movie-chart">
			<div class="tit-heading-wrap">
				<div class="sect-sorting">
					<div class="nowshow"></div>
				</div>
				<h3 id="live">실시간 영화 순위</h3>

			</div>
			<div class="general">
				<h4 class="latest-text w3_latest_text"></h4>
				<div class="container">
					<div class="bs-example bs-example-tabs" role="tabpanel"
						data-example-id="togglable-tabs">
						<!-- <ul id="myTab" class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true"></a></li>
				</ul> -->
						<div id="myTabContent" class="tab-content">
							<div role="tabpanel" class="tab-pane fade active in" id="home"
								aria-labelledby="home-tab">
								<div class="w3_agile_featured_movies">
									<div class="clearfix">
										<c:forEach var="list" items="${list}">
											<div class="col-md-2 w3l-movie-gride-agile-list movieListBody">
												<strong class="rank">${list.rank}</strong>
												
												<a href="movieRead?movieCD=${list.movieCD}"
													class="hvr-shutter-out-horizontal"><img
													src="/resources/images/${list.poster}" title="album-name"
													class="img-responsive" alt=" " />
													<div class="w3l-action-icon">
														<i class="fa fa-play-circle" aria-hidden="true"></i>
													</div> </a>
												<div class="mid-1 agileits_w3layouts_mid_1_home">
													<div class="w3l-movie-text">
														<h6>
															<a href="movieRead?movieCD=${list.movieCD}">${list.movieNM}</a>
														</h6>
													</div>
													<div class="mid-2 agile_mid_2_home">
														<button type="submit" id="detailShow"
															onclick="location.href='movieRead?movieCD=${list.movieCD}'">상세보기</button>
														<button type="submit" id="reservation">예매하기</button>

														<div class="clearfix"></div>
													</div>
												</div>
											</div>

										</c:forEach>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
let result = '${result}';

	






</script>
	
</body>
</html>
	<%@include file="../includes/footer.jsp"%>