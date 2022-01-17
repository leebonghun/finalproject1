<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
  <div class="container" style="padding-top: 10px;">
  	<h4 class="latest-text w3_latest_text w3_home_popular" style="margin-left: 0px; padding: 0px;">이벤트</h4>
  
<div class="Latest-tv-series">
		<ul>
		<li id="indexevent" style="padding: 5px;">
		<div style="">
		<a href="eventread?EVENT_BNO=1" data-no="10808" data-netfunnel="N" class="eventBtn" style="text-align: center;" title="신년 맞이 달력 증정 행사">
							<p class="img">
								<img src="/resources/images/2022-calendar.jpg" alt="신년 달력 증정 행사" onerror="noImg(this);" style="height: 200px" width="280px" />
							</p>
							<p class="tit"> 신년 맞이 달력 증정 행사 </p>
							<p class="date"> 2022.01.01 ~ 2022.01.31 </p>
						</a>
						</div>
					</li>
					<li id="indexevent" style="padding: 15px;">
		<div style="">
		<a href="eventread2?EVENT_BNO=2" data-no="10808" data-netfunnel="N" class="eventBtn" style="text-align: center;" title="카드 할인 행사">
							<p class="img">
								<img src="/resources/images/card1.jpg" alt="카드 할인 행사" onerror="noImg(this);" style="height: 200px" width="280px" />
							</p>
							<p class="tit"> 카드 할인 행사 </p>
							<p class="date"> 2022.01.01 ~ 2022.12.31 </p>
						</a>
						</div>
					</li>	
					<li id="indexevent" style="padding: 15px;">
		<div style="">
		<a href="eventread3?EVENT_BNO=3" data-no="10808" data-netfunnel="N" class="eventBtn" style="text-align: center;" title="신규 회원 가입 이벤트">
							<p class="img">
								<img src="/resources/images/signup.png" alt="신규 회원 가입 이벤트" onerror="noImg(this);" style="height: 200px" width="280px" />
							</p>
							<p class="tit"> 신규 회원 가입 이벤트 </p>
							<p class="date"> 2022.01.01 ~ 2022.12.31 </p>
						</a>
						</div>
					</li>		
						
				</ul>		
	</div>
	</div>
	<!-- pop-up-box -->  
		<script src="/resources/js/jquery.magnific-popup.js" type="text/javascript"></script>
	<!--//pop-up-box -->
	<div id="small-dialog" class="mfp-hide">
		<iframe src="https://player.vimeo.com/video/164819130?title=0&byline=0"></iframe>
	</div>
	<div id="small-dialog1" class="mfp-hide">
		<iframe src="https://player.vimeo.com/video/148284736"></iframe>
	</div>
	<div id="small-dialog2" class="mfp-hide">
		<iframe src="https://player.vimeo.com/video/165197924?color=ffffff&title=0&byline=0&portrait=0"></iframe>
	</div>
	<script>
		$(document).ready(function() {
		$('.w3_play_icon,.w3_play_icon1,.w3_play_icon2').magnificPopup({
			type: 'inline',
			fixedContentPos: false,
			fixedBgPos: true,
			overflowY: 'auto',
			closeBtnInside: true,
			preloader: false,
			midClick: true,
			removalDelay: 300,
			mainClass: 'my-mfp-zoom-in'
		});
																		
		});
	</script>
<!-- //Latest-tv-series -->
<!-- footer -->
	<div class="footer" style="line-height: 1.5;">
		<div class="container">
			<div class="w3ls_footer_grid">
				<div class="col-md-6 w3ls_footer_grid_left">
					
				</div>
				<div class="col-md-6 w3ls_footer_grid_right">
					<a href="index.html"><h1>BBM</h1></a>
				</div>
				<div class="clearfix"></div>
				<ul >
				<li style=" display: inline-block; margin: 10px "  >
				<a href="#">회사소개</a>
				</li>
				<li style=" display: inline-block;margin: 10px   "  >
				<a href="#">인재채용</a>
				</li>
				<li style=" display: inline-block; margin: 10px  "  >
				<a href="#">사회공헌</a>
				</li>
				<li style=" display: inline-block; margin: 10px "  >
				<a href="#">제휴/광고/부대사업문의</a>
				</li>
				<li style=" display: inline-block; margin: 10px "  >
				<a href="#">이용약관</a>
				</li>
				<li style=" display: inline-block; margin: 10px "  >
				<a href="#">위치기반서비스 이용약관</a>
				</li>
				<li style=" display: inline-block;margin: 10px  "  >
				<a href="#">개인정보처리방침</a>
				</li>
				<li style=" display: inline-block; margin: 10px "  >
				<a href="#">윤리경영</a>
				</li>	
				
				</ul>
			</div>
			
			<div class="footer-info">
			<div class="col-md-5 w3ls_footer_grid1_left">
				<p>&copy; 2021 BBM. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
			</div>
			<div class="col-md-7 w3ls_footer_grid1_right">
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	</div>

<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="/resources/js/bootstrap.min.js"></script>
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //Bootstrap Core JavaScript -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>