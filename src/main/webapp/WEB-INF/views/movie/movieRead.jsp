<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../includes/header.jsp" %>
   <script src="/resources/js/movieList.js"></script>
<div class="bg-bricks" id="container">
		<div class="" id="contents">
			<div class="wrap-movie-chart">
				<div class="tit-heading-wrap">
					<div class="sect-sorting">
						<div class="nowshow"></div>
					</div>
					<h3 id="live">영화 상세 정보</h3>
						
					</div>
				</div>
			</div>

  <div style="height: 30px"></div>
  <div class="container">
    <div class="row">
      <table class="table">
       <tr>
        <td>
          <iframe src="https://www.youtube.com/embed/${movieDto.key}" width=750 height=350></iframe>
        </td>
       </tr>
      </table>
      <table class="table">
        <tr>
         <td width=30% class="text-center" rowspan="7">
           <img src="/resources/images/${movieDto.poster}" width=100%>
         </td>
        
        </tr>
        <tr>
          <td width=20% class="text-right" >영화이름</td>
          <td width=50% class="text-left">${movieDto.movieNM}</td>
        </tr>
        <tr>
          <td width=20% class="text-right">출연</td>
          <td width=50% class="text-left">${movieDto.peopleNm }</td>
        </tr>
        <tr>
          <td width=20% class="text-right">장르</td>
          <td width=50% class="text-left">${movieDto.genreNm }</td>
        </tr>
        <tr>
          <td width=20% class="text-right">등급</td>
          <td width=50% class="text-left">${movieDto.watchGradeNm }</td>
        </tr>
        <tr>
          <td width=20% class="text-right">상영시간</td>
          <td width=50% class="text-left">${movieDto.showTm}분</td>
        </tr>
        <tr>
          <td width=20% class="text-right">개봉일</td>
          <td width=50% class="text-left">${movieDto.openDt}</td>
        </tr>
        
        <tr>
          <td colspan="3">${vo.story }</td>
        </tr>
        <tr>
          <td colspan="3" class="text-right">
            <button type="submit" id="goBack">목록</button>
            
            
            
          </td>
        </tr>
      </table>
    </div>
  </div>
			
			
		</div>
<%@include file="../includes/footer.jsp"%>