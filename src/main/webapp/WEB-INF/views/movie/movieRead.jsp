<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="../includes/header.jsp" %>
   <script src="/resources/js/movieList.js"></script>
   <link rel="stylesheet" href="/resources/css/replyAll.css" />
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
          <input type="hidden" name="movieCD" value="${movieDto.movieCD}" />
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
          	<button type="submit" id="goReserve">예매</button>
            <button type="submit" id="goBack">목록</button>
          </td>
        </tr>
      </table>
    </div>
<!-- 댓글 리스트  -->
<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">
				<i class="fa fa-comments fa-fw"></i>
				리뷰를 남겨주세요!!!
					
					<button id="addReplyBtn" class="btn btn-primary btn-xs pull-right">리뷰 작성</button>
		    	
		    </div>
			<div class="panel-body">
				<ul class="chat">
					<li class="left clearfix" data-replyCd='1'>
						<div>
							<div class="replyAll" id="replyAll">
								<strong class="primary-font">user00</strong> <!-- 댓글 작성자 -->
								<small class="pull-right text-muted">2021-06-15 14:25</small> <!-- 댓글 작성 시간 -->
								<p>Good Job!!</p><!-- 댓글 작성 내용 -->
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="panel-footer">
				
			
			</div><!-- 댓글 페이지 나누기 -->
		</div><!-- panel-default close -->
	</div><!-- col-lg-12 close -->
</div><!-- row close -->  
<!-- 댓글 작성 폼  -->
 <div class="modal" tabindex="-1" id="replyModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <h5 class="modal-title">Reply</h5>
      </div>
      <div class="modal-body">
        <div class="form-group">
        	<label for="">댓글 내용</label>
        	<input type="text" name="replyContent" class="form-control" value="댓글내용"/>
        </div>
        <div class="form-group">
        	<label for="">작성자</label>
        	<input type="text" name="replyer" class="form-control" value="작성자"/>"/>
        </div>
        <div class="form-group">
        	<label for="">작성일</label>
        	<input type="text" name="replyDate" class="form-control" value="작성일"/>
        </div>        
      </div>
      <div class="modal-footer">
      	
        <button type="button" class="btn btn-success" id="modalRegisterBtn">등록</button>
        <button type="button" class="btn btn-warning" id="modalModifyBtn">수정</button>
        <button type="button" class="btn btn-danger" id="modalRemoveBtn">삭제</button>
        <button type="button" class="btn btn-primary" data-dismiss="modal" id="modalCloseBtn">종료</button>
      </div>
    </div>
  </div>
</div> 

 		

<!-- 페이지 나누기를 위한 form -->            
<form action="" id="actionForm">
	<input type="hidden" name="pageNum" value="${cri.pageNum}" />
	<input type="hidden" name="amount" value="${cri.amount}" />
	<input type="hidden" name="type" value="${cri.type}" />
	<input type="hidden" name="keyword" value="${cri.keyword}" />
	<input type="hidden" name="movieCD" value="${movieDto.movieCD}" />
</form>  
<script>
	//현재 글번호 가져오기
	let movieCD = ${movieDto.movieCD};	

	
	//스프링 시큐리티 설정으로 인한 추가
	//댓글 작성 시 작성자 란에 현재 로그인한 사용자 보여주기
	
	let replyer = null;
	<sec:authorize access="isAuthenticated()">
	   replyer = '<sec:authentication property="principal.username"/>';
	</sec:authorize>
	
	let csrfHeaderName = "${_csrf.headerName}";
	let csrfTokenValue = "${_csrf.token}";
</script>    
 
 
	
	
	
	
    
  </div>
		</div>
<script src="/resources/js/movieRead.js"></script>		
<script src="/resources/js/movieReply.js"></script>		
<%@include file="../includes/footer.jsp"%>