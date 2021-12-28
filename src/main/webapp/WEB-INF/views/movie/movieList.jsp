<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../includes/header.jsp"%>
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
			<div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
				<!-- <ul id="myTab" class="nav nav-tabs" role="tablist">
					<li role="presentation" class="active"><a href="#home" id="home-tab" role="tab" data-toggle="tab" aria-controls="home" aria-expanded="true"></a></li>
				</ul> -->
				<div id="myTabContent" class="tab-content">
					<div role="tabpanel" class="tab-pane fade active in" id="home" aria-labelledby="home-tab">
						<div class="w3_agile_featured_movies">
							<div class="clearfix">
							<div class="col-md-2 w3l-movie-gride-agile-list" id="movieListBody">
								<strong class="rank">No.1</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m1.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">스파이더맨-노웨이홈</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow" onclick="location.href='movieRead?movieCD=20210028'">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							<div class="col-md-2 w3l-movie-gride-agile-list">
								<strong class="rank">No.2</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m2.jpg" title="album-name" class="img-responsive" alt=" "  />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">엔칸토-마법의 세계</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							<div class="col-md-2 w3l-movie-gride-agile-list">
								<strong class="rank">No.3</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m3.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">연애 빠진 로맨스</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							<div class="col-md-2 w3l-movie-gride-agile-list">
								<strong class="rank">No.4</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m4.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">유체이탈자</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							</div>
							<div class="clearfix">
							<div class="col-md-2 w3l-movie-gride-agile-list">
							<strong class="rank">No.5</strong>	
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m5.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">소드아트 온라인</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							<div class="col-md-2 w3l-movie-gride-agile-list">
								<strong class="rank">No.6</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m6.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">돈룩업</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							<div class="col-md-2 w3l-movie-gride-agile-list">
								<strong class="rank">No.7</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m7.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">라라와 크리스마스요정</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							<div class="col-md-2 w3l-movie-gride-agile-list">
							<strong class="rank">No.8</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m8.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">아멜리에</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							</div>
							
							<div class="clearfix">
							<div class="col-md-2 w3l-movie-gride-agile-list">
								<strong class="rank">No.9</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m9.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">프렌치 디스패치</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							<div class="col-md-2 w3l-movie-gride-agile-list">
								<strong class="rank">No.10</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m10.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">뱅드림!</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							<div class="col-md-2 w3l-movie-gride-agile-list">
								<strong class="rank">No.11</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m11.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">티탄</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							<div class="col-md-2 w3l-movie-gride-agile-list">
								<strong class="rank">No.12</strong>
								<a href="single.html" class="hvr-shutter-out-horizontal"><img src="/resources/images/m12.jpg" title="album-name" class="img-responsive" alt=" " />
									<div class="w3l-action-icon"><i class="fa fa-play-circle" aria-hidden="true"></i></div>
								</a>
								<div class="mid-1 agileits_w3layouts_mid_1_home">
									<div class="w3l-movie-text">
										<h6><a href="single.html">해피 뉴이어</a></h6>							
									</div>
									<div class="mid-2 agile_mid_2_home">
										<button type="submit" id="detailShow">상세보기</button>
										<button type="submit" id="reservation">예매하기</button>
										<div class="clearfix"></div>
									</div>
								</div>
								
							</div>
							</div>
							<div class="clearfix"> </div>
						</div>
					</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
	</div>
			</div>
		</div>
	</div>
<%@include file="../includes/footer.jsp"%>