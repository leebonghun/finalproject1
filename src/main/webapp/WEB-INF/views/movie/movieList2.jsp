<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/resources/css/movieList.css" rel="stylesheet"
	type="text/css" />

</head>
<body>
	<div class="bg-bricks clearfix"id="container">
		<div class="" id="contents">
			<div class="wrap-movie-chart">
				<div class="tit-heading-wrap">
					<div class="sect-sorting">
						<div class="nowshow"></div>
					</div>
					<h3>영화 차트</h3>
					<div class="sect-movie-chart">
						<h4 class="hidden">영화차트 - 인기순</h4>
						<ol>
							<li>
								<div class="box-image">
									<strong class="rank">No.1</strong> 
									<a href="movieRead"> 
									<span class="thumb-image"> 
									<img src="/resources/images/m1.jpg" alt="스파이더맨 노웨이홈" /> 
									</span>
									</a>
								</div>
								<div class="box-contents">
									<a href="movieRead">
										<strong class="title">스파이더맨 노웨이홈</strong>
									</a>
									<span class="like">
										<a href="moveRead">예매하기</a>
									</span>
								</div>
							</li>
						</ol>
						</div>
					</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@include file="../includes/footer.jsp"%>