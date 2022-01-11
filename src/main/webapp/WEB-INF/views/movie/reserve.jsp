<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@include file="../includes/header.jsp" %>   
  <link rel="stylesheet" href="/resources/css/reset.css">
    <link rel="stylesheet" href="/resources/css/header.css">
    <link rel="stylesheet" href="/resources/css/reserve.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel='stylesheet' href='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.min.css' />
    <script src='//cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/js/toastr.min.js'></script>
    <link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">  
    
    
	  <div class="reserve-container">
        <div class="movie-part">
            <div class="reserve-title">영화</div>
            <div class="sort-wrapper">
                <div class="sort-rate sort-selected">영화</div>
            </div>
            
            <ul class="content scroll-y" onscroll="movieSectionScrollEvent();" tabindex="1" style="right : -17px;">
             	<li class="selected">
             		<button type="button" class="theater-place"  id="reserveButton" value="스파이더맨 노 웨이 홈">스파이더맨 노 웨이 홈</button>
             	</li>
             	<li class="selected">
             		<button type="button" class="theater-place"  id="reserveButton" value="엔칸토: 마법의 세계">엔칸토: 마법의 세계</button>
             	</li>
              
            </ul>
               
        </div>
        <div class="theater-part">
            <div class="reserve-title">
                극장
            </div>
            <div class="theater-container">
                <div class="theater-wrapper">
                    <div class="theater-location-wrapper">
                        <button class="theater-location">서울</button>
                    </div>
                    <div class="theater-place-wrapper">
                        <button class="theater-place">천호</button>
                        
                    </div>
                </div>
            </div>
        </div>
        <div class="day">
            <div class="reserve-title">날짜</div>
         <%--    <c:if test="${list1.movieNM == '스파이더맨 노 웨이 홈'}">
          		  <c:forEach var="item" items="${list1}">
           			<button type="submit">${item.reserveDay}</button>
           
          		 </c:forEach>  
            </c:if>
            <c:if test="${list1.movieNM == '엔칸토: 마법의 세계'}">
          		  <c:forEach var="item" items="${list1}">
           			<button type="submit">${item.reserveDay}</button>
           
          		 </c:forEach>  
            </c:if> --%>
         	
        </div>
        <div class="time-part">
            <div class="reserve-title">시간</div>
            <div class="reserve-time">
                <div class="reserve-where">4관(Laser) 6층(총 240석) </div>
                <div class="reserve-time-wrapper">
                    <button class="reserve-time-button">
            <span class="reserve-time-want">12:20</span>
            <span class="reserve-time-remain">240석</span>
          </button>
                    <button class="reserve-time-button">
            <span class="reserve-time-want">14:20</span>
            <span class="reserve-time-remain">240석</span>
          </button>
                    <button class="reserve-time-button">
            <span class="reserve-time-want">16:20</span>
            <span class="reserve-time-remain">240석</span>
          </button>
                    <button class="reserve-time-button">
            <span class="reserve-time-want">18:20</span>
            <span class="reserve-time-remain">240석</span>
          </button>

                </div>
            </div>
            <div>
            <form class="moveSeatForm" action="moveSeat.do" method="post">
            <input type="hidden" class="title" name="title">
            <input type="hidden" class="movieAge" name="movieAge">
            <input type="hidden" class="selectedTheater" name="selectedTheater">
            <input type="hidden" class="reserveDate" name="movieDate">
            <input type="hidden" class="runningTime" name="runningTime">
            <button class="moveSeatButton" type="button">예약하기</button>
            </form>
            </div>
        </div>

    </div>
    <script src="/resources/js/reserve.js"></script>
   
 <%@include file="../includes/footer.jsp" %>     