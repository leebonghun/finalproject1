<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp" %>
<script src="/resources/js/noticelist.js"></script>

<link href="/resources/css/noticelist.css" rel='stylesheet' type='text/css' />
<script src="/resources/js/noticelist.js"></script>
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
         <button type="button" class="btn btn-info" onclick="location.href='/movie/noticeinsert'"
         style="background-color : rgb(255, 115, 86); border-color: rgb(251, 67, 87);">글쓰기</button>
      </div>
   </div>
</div>
      <!-- /.panel-heading -->
        <div class="panel-body" > 
           <div class="board_info">
         <div class="row" >         
               <table class="table table-hover" id="dtotbl" >
                  <colgroup>
                   <col class="col-md-1">
                   <col class="col-md-1">
                   <col class="col-md-4">
                   <col class="col-md-4">
                   <col class="col-md-2">
               </colgroup>              
                   <thead>
                       <tr>
                           <th>번 호</th>
                           <th>분 류</th>
                           <th>제 목</th>
                           <th>내 용</th>
                           <th>작성일</th>
                       </tr>                           
                   </thead>
            

            <!-- 게시판 리스트 반복문 -->
            <tbody>
               <c:forEach var="infodto" items="${list}">
                  <tr class="table-active">            
                     <th scope="row">${infodto.INFO_BNO}</th>
                     <td>${infodto.INFO_RFI}</td>
                     <td><a class="move" href="${infodto.INFO_BNO}">${infodto.INFO_TITLE}</a></td>            
                     <td>${infodto.INFO_CONTENT}</td>
                     <td>${infodto.INFO_REGDATE}</td>
                  </tr>                        
               </c:forEach>               
            </tbody>
           </table>
        </div><!-- end search -->
          <div class="text-center" style="text-align: center;">
             <ul class="pagination">
                <c:if test="${pageDto.prev}">
                   <li class="paginate_button previous">
                      <a href="${pageDto.startPage-10}" style="background-color : rgb(255, 115, 86); 
	border-color: rgb(251, 67, 87);">Previous</a>
                   </li>
                </c:if>
                
                <c:forEach var="idx" begin="${pageDto.startPage}" end="${pageDto.endPage}">
                   <li class="paginate_button ${pageDto.cri.pageNum==idx?'active':''}">
                      <a href="${idx}" style="background-color : rgb(255, 115, 86); 
	border-color: rgb(251, 67, 87);">${idx}</a>
                   </li>
                </c:forEach>
                
                <c:if test="${pageDto.next}">
                 <li class="paginate_button next">
                    <a href="${pageDto.endPage+1}" style="background-color : rgb(255, 115, 86); 
	border-color: rgb(251, 67, 87);">Next</a>
                 </li>
              </c:if>
             </ul>
    <div class="row"> <!-- start search -->
          <div class="col-md-12">
            <div class="col-md-12" style="text-align: right; width: 830px;" ><!--search Form-->
              <form action="" method="get" id="searchForm">
                 <input type="hidden" name="pageNum" value="${pageDto.cri.pageNum}" />
                 <input type="hidden" name="amount" value="${pageDto.cri.amount}" />
                 <select name="type" id="">
                    <option value="">---------</option>
                    <option value="T" <c:out value="${pageDto.cri.type == 'T'?'selected':''}"/>>제목</option>
                    <option value="C" <c:out value="${pageDto.cri.type == 'C'?'selected':''}"/>>내용</option>
                    <option value="R" <c:out value="${pageDto.cri.type == 'R'?'selected':''}"/>>분류</option>
                    <option value="TC" <c:out value="${pageDto.cri.type == 'TC'?'selected':''}"/>>제목 or 내용</option>
                    <option value="TW" <c:out value="${pageDto.cri.type == 'TW'?'selected':''}"/>>제목 or 분류</option>
                    <option value="TCR" <c:out value="${pageDto.cri.type == 'TCR'?'selected':''}"/>>제목 or 내용 or 분류</option>
                 </select>                               
                 
                 <input type="text" name="keyword" id=""  value='<c:out value="${pageDto.cri.keyword}"/>'/>
                 <button style="background-color : rgb(255, 115, 86); 
	border-color: rgb(251, 67, 87);" class="btn btn-default">Search</button>
              </form>
          </div>
         <!-- start Pagination -->
              <!-- end Pagination -->
             </div>
            </div>                                 
    
      <div class="row" style="width:100%"> 
         <ul class="contactus">
            <li>[문의안내]</li>
             <li>*&nbsp;게시물에&nbsp;대한&nbsp;문의는&nbsp;페이지&nbsp;상단의&nbsp;담당자&nbsp;및&nbsp;전화번호&nbsp;내용을&nbsp;참고하세요.
             <br>
            *&nbsp;고객상담센터&nbsp;국번없이&nbsp;1234(전화연결장애 문의 : 012-345-6789)&nbsp; </li>
         </ul>
      </div>
      </div>
      </div>
    </div>
     

<!-- 페이지 나누기를 위한 폼 -->     
<form action="" method="get" id="actionForm">
   <input type="hidden" name="pageNum" value="${pageDto.cri.pageNum}"/>
   <input type="hidden" name="amount" value="${pageDto.cri.amount}"/>
   <input type="hidden" name="type" value="${pageDto.cri.type}"/>
   <input type="hidden" name="keyword" value="${pageDto.cri.keyword}"/>
   <input type="hidden" name="INFO_BNO" value=""/>   
</form>       
 <!-- /.panel-heading -->
                   
<!-- 스크립트 -->
<script>
let result = '${result}';
</script>
<%@include file="../includes/footer.jsp"%>