<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp" %>



<div class="container">
	<div>
		<h2 class="h2" style="color: black;">
			<img src="/resources/images/notice1.jpg" style="height: 60px;" /> 공지사항
		</h2>            
	</div>	
</div>

<div class="panel-body" >
	<div>
		<div style="text-align: right;">
			<button type="button" class="btn btn-info"
				onclick="location.href='/movie/noticeinsert'">글쓰기</button>
		</div>
	</div>
</div>
		<!-- /.panel-heading -->
        <div class="panel-body">
			<div class="board_info">
				<div class="board_number" style="font:bold; color: black; "  >
					<p>총 게시글 : 
						<span class="red bold" style="font: red;">30</span>
						건
					</p>
				</div>	
			</div>
			<div class="row" style="width:100%">			
	            <table class="table table-hover" id="dtotbl">
	            	<colgroup>
					    <col class="col-md-1">
					    <col class="col-md-6">
					    <col class="col-md-1">
					    <col class="col-md-2">
					    <col class="col-md-2">
					  </colgroup>
	                <thead>
	                    <tr>
	                        <th>번 호</th>
	                        <th>제 목</th>
	                        <th>작성자</th>
	                        <th>작성일</th>
	                        <th>수정일</th>
	                    </tr>									
	                </thead>
	                <tbody>
	                	<tr class="table-active">
	                		<th scope="row">1</th>
	                		<td>공지사항</td>
	                		<td>기타</td>
	                		<td>2021-12-29</td>
	                		<td>2021-12-29</td>              	
	                	</tr>
	                	<tr class="table-active">
	                		<th scope="row">2</th>
	                		<td>공지사항</td>
	                		<td>기타</td>
	                		<td>2021-12-29</td>
	                		<td>2021-12-29</td>              	
	                	</tr>
	                	<tr class="table-active">
	                		<th scope="row">3</th>
	                		<td>공지사항</td>
	                		<td>기타</td>
	                		<td>2021-12-29</td>
	                		<td>2021-12-29</td>              	
	                	</tr>
	                	<tr class="table-active">
	                		<th scope="row">4</th>
	                		<td>공지사항</td>
	                		<td>기타</td>
	                		<td>2021-12-29</td>
	                		<td>2021-12-29</td>              	
	                	</tr>
	                	<tr class="table-active">
	                		<th scope="row">5</th>
	                		<td>공지사항</td>
	                		<td>기타</td>
	                		<td>2021-12-29</td>
	                		<td>2021-12-29</td>              	
	                	</tr>
	                	<tr class="table-active">
	                		<th scope="row">6</th>
	                		<td>공지사항</td>
	                		<td>기타</td>
	                		<td>2021-12-29</td>
	                		<td>2021-12-29</td>              	
	                	</tr>
	                </tbody>
				<!-- 게시판 리스트 반복문 -->
				<tbody>
					<c:forEach var="dto" items="${list}">
						<tr>
							<td>${dto.bno}</td>
							<td><a href="${dto.bno}" class="move">${dto.title}</a>[${dto.replycnt}]</td>
							<td>${dto.writer}</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${dto.regdate}"/></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${dto.updatedate}"/></td>
						</tr>									
					</c:forEach>
				</tbody>
	        </table>
			</div>
		<div style="text-align: center;">		
			<ul class="pagination pagination-lg">
				<li class="disabled"><a href="#"><i
						class="fa fa-angle-left">«</i></a></li>
				<li class="active"><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
				<li><a href="#"><i class="fa fa-angle-right">»</i></a></li>	
			</ul>
		</div>
		<div class="board_search">
			<fieldset style="text-align: right;">
				<span class="search">
				<label for="searchField" class="hide">검색조건 선택</label>
	     	  <select id="searchField" name="searchField" class="sch_sel">
	     		 		<option value="">---------</option>
	     		 		<option value="T" <c:out value="${pageDto.cri.type == 'T'?'selected':''}"/>>제목</option>
	     		 		<option value="W" <c:out value="${pageDto.cri.type == 'W'?'selected':''}"/>>작성자</option>
	     		 		<option value="TW" <c:out value="${pageDto.cri.type == 'TW'?'selected':''}"/>>제목 or 작성자</option>       		 	
	        	</select>      
	        	<span class="sch_tbox">
	        		<label for="searchText" class="hide">검색어 입력</label>
	     		 	<input id="searchText" name="searchText" class="sch_txt" title="검색어입력" onkeypress="pressSchTxt(event)" type="text"  value='<c:out value="${pageDto.cri.keyword}"/>'/>
	        	</span>               		 	
	     		<button type="button" class="btn sch" onclick="fnSelectInfs('1')">검색</button>
				</span>	
			</fieldset>
		</div>
		<div class="row" style="width:100%"> 
			<ul class="contactus">
				<li>[문의안내]</li>
		    	<li>*&nbsp;게시물에&nbsp;대한&nbsp;문의는&nbsp;페이지&nbsp;상단의&nbsp;담당자&nbsp;및&nbsp;전화번호&nbsp;내용을&nbsp;참고하세요.
		    	<br>
				*&nbsp;고객상담센터&nbsp;국번없이&nbsp;1350(전화연결장애 문의 : 012-345-6789)&nbsp; </li>
			</ul>
		</div>
    
 </div>







</body>
</html>
                        <!-- /.panel-heading -->
                   
<!-- 스크립트 -->
<script>
let result = '${result}';
</script>
<script src="/resources/js/noticelist.js"></script>
<%@include file="../includes/footer.jsp"%>