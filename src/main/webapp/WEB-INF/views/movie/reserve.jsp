<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@include file="../includes/header.jsp" %>   

  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        .seat {
            width: 30px;
            height: 30px;
        }
        
        .clicked {
            background-color: red;
            color: white;
        }
    </style> 

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


   </body>
</html>
    <script>
    let test = [];
    let selectedSeats = new Array();
    let selectedSeatsMap = [];
    const seatWrapper = document.querySelector(".seat-wrapper");
    let clicked = "";
    let div = "";

    for (let i = 0; i < 7; i++) {
        div = document.createElement("div");
        seatWrapper.append(div);
        for (let j = 0; j < 7; j++) {
            const input = document.createElement('input');
            input.type = "button";
            input.name = "seats"
            input.classList = "seat";
            //3중포문을 사용하지 않기위해 
            mapping(input, i, j);
            div.append(input);
            input.addEventListener('click', function(e) {
                console.log(e.target.value);
                //중복방지 함수
                selectedSeats = selectedSeats.filter((element, index) => selectedSeats.indexOf(element) != index);

                //click class가 존재할때(제거해주는 toggle)
                if (input.classList.contains("clicked")) {
                    input.classList.remove("clicked");
                    clicked = document.querySelectorAll(".clicked");
                    selectedSeats.splice(selectedSeats.indexOf(e.target.value), 1);
                    clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                    });
                    //click class가 존재하지 않을때 (추가해주는 toggle)
                } else {
                    input.classList.add("clicked");
                    clicked = document.querySelectorAll(".clicked");
                    clicked.forEach((data) => {
                        selectedSeats.push(data.value);
                    })
                }
                console.log(selectedSeats);
            })
        }
    }

    function mapping(input, i, j) {
        if (i === 0) {
            input.value = "A" + j;
        } else if (i === 1) {
            input.value = "B" + j;
        } else if (i === 2) {
            input.value = "C" + j;
        } else if (i === 3) {
            input.value = "D" + j;
        } else if (i === 4) {
            input.value = "E" + j;
        } else if (i === 5) {
            input.value = "F" + j;
        } else if (i === 6) {
            input.value = "G" + j;
        }
    }
</script>

   
 <%@include file="../includes/footer.jsp" %>     