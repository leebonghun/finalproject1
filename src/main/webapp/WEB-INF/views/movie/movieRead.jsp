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
          <td width=50% class="text-left">${movieDto.actors }</td>
        </tr>
        <tr>
          <td width=20% class="text-right">장르</td>
          <td width=50% class="text-left">${movieDto.genres }</td>
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
          <td colspan="3" class="text-right">
          	<button type="submit" id="goBack">예매</button>
            <button type="submit" id="goBack">목록</button>
          </td>
        </tr>
      </table>
    </div>
    <!-- 댓글 리스트  -->
<div class="container">
    <form id="commentForm" name="commentForm" method="post">
    <br><br>
        <div>
            <div>
                <span><strong>Comments</strong></span> <span id="cCnt"></span>
            </div>
            <div>
                <table class="table">                    
                    <tr>
                        <td>
                            <textarea style="width: 1100px" rows="3" cols="30" id="comment" name="comment" placeholder="댓글을 입력하세요"></textarea>
                            <br>
                            <div>
                                <a href='#' onClick="fn_comment('${movieDto.movieCD }')" class="btn pull-right btn-success">등록</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <input type="hidden" id="movie_CD" name="movie_CD" value="${movieDto.movieCD }" />        
    </form>
</div>
<div class="container">
    <form id="commentListForm" name="commentListForm" method="post">
        <div id="commentList">
        </div>
    </form>
</div>




<!-- 페이지 나누기를 위한 form -->            
<form action="" id="actionForm">
	<input type="hidden" name="pageNum" value="${cri.pageNum}" />
	<input type="hidden" name="amount" value="${cri.amount}" />
	<input type="hidden" name="type" value="${cri.type}" />
	<input type="hidden" name="keyword" value="${cri.keyword}" />
	<input type="hidden" name="bno" value="${read.bno}" />
</form>  
<script>
	//현재 글번호 가져오기
	let movieCD = ${movieDto.movieCD};	
</script>   
 
	
    
  </div>
		</div>
<script src="/resources/js/movieRead.js"></script>		
<script src="/resources/js/movieReply.js"></script>		
<%@include file="../includes/footer.jsp"%>