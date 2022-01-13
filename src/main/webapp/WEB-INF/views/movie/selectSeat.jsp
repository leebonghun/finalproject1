<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@include file="../includes/header.jsp" %>  
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
                <div class="sort-rate sort-selected">영화정보</div>
            </div>
            
          
            <c:forEach var="reserveDto" items="${list1}">
          <p>영화제목: ${reserveDto.movieNM }</p>
           <p>상영날짜:${reserveDto.reserveDay }</p>
           <p>상영시간:${reserveDto.reserveTime }</p>
        
                </c:forEach>
        </div>
      
      
        <div class="time-part">
            <div class="reserve-title">시간</div>
            <div class="reserve-time">
             <label><input type="radio"  value="성인">성인</label>
          	<label><input type="radio"  value="아이">아이</label>
          	 <c:forEach var="reserveDto" items="${list1}">
                <div class="reserve-where">${reserveDto.reserveSeat } </div>
                 </c:forEach>
                <div class="reserve-time-wrapper">
                   
          
          
          
          
          
			<div class="seat-wrapper"></div>
                </div>
            </div>
            <div>
            
            <button class="moveSeatButton" type="button">예약하기</button>
            </form>
            </div>
            
        </div>
			
    </div>
    <script src="/resources/js/reserve.js"></script>
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