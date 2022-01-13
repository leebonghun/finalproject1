<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../includes/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/css/noticelist.css"></script>

<script src="/resources/js/noticelist.js"></script>
<style>
input[type="text"] {
    border-radius: 16px;
    border: 2px solid #ddd;
    background-color: #fff;
    height: 32px;
    line-height: 32px;
    font-size: 14px;
}

tr{         
	border: 2px solid #ddd;
	border-radius: 30px;
    background-color: #fff;
    height: 34px;
    font-size: 14px;
}

table table-hover {
	border: 2px solid #ddd;
	border-radius: 16px;
    background-color: #fff;
    height: 34px;
    font-size: 14px;
}


.a1 {
	border-radius: 16px;
	border: 2px solid #ddd;
    background-color: #fff;
    height: 32px;
    line-height: 32px;
    font-size: 14px;
}


select {
	border-radius: 16px;
	border: 2px solid #ddd;
    background-color: #fff;
    height: 32px;
    line-height: 32px;
    font-size: 14px;
}
.row {
    margin: 0px auto;
    width: 830px;
    background-color: #fff;
}

.event-list p {
    margin: 0;
    text-align: center;
}

</style>
</head>
<body>
<div class="container">
   <div>
      <h2 class="h2" style="color: black;">
         <img src="/resources/images/notice1.png" style="height: 60px;" /> 공지사항
      </h2>            
   </div>   
</div>

<div class="panel-body" >
   <div>
      <div style="text-align: right;">

     

	  <!-- 글작성한 관리자에게만 권한을 부여하여 아무나 수정, 삭제 한거 불가하게 기능 설정  -->
		<sec:authorize access="hasRole('ROLE_ADMIN')" >
       		<button type="button" class="btn btn-info" onclick="location.href='/movie/noticeinsert'"
   		    	     style="background-color: black; border-color: black;">글쓰기</button>
        </sec:authorize>

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
                           <th style="background: black; font:sans-serif; color: white;">번 호</th>
                           <th style="background: black; font:sans-serif; color: white;">분 류</th>
                           <th style="background: black; font:sans-serif; color: white;">제 목</th>
                           <th style="background: black; font:sans-serif; color: white;">내 용</th>
                           <th style="background: black; font:sans-serif; color: white;">작성일</th>
                       </tr>                           
                   </thead>
            

            <!-- 게시판 리스트 반복문 -->
            <tbody >
               <c:forEach var="infodto" items="${list}">             
                  <tr class="table-active" >            
                     <th scope="row" style="font:sans-serif; color: black;">${infodto.rn}</th>
                     <td style="font:sans-serif; color: black;">${infodto.INFO_RFI}</td>
                     <td style="font:sans-serif; color: black;"><a class="move" href="${infodto.INFO_BNO}">${infodto.INFO_TITLE}</a></td>            
                     <td style="font:sans-serif; color: black;">${infodto.INFO_CONTENT}</td>
                     <td style="font:sans-serif; color: black;"><fmt:formatDate pattern="yyyy-MM-dd HH:mm"  value="${infodto.INFO_REGDATE}"/></td>
                  </tr>                        
               </c:forEach>               
            </tbody>
           </table>
        </div><!-- end search -->
          <div class="text-center" style="text-align: center;">
             <ul class="pagination">
                <c:if test="${pageDto.prev}">
                   <li class="paginate_button previous">
                      <a href="${pageDto.startPage-10}" style="background-color: black; border-color: black;">Previous</a>
                   </li>
                </c:if>
                
                <c:forEach var="idx" begin="${pageDto.startPage}" end="${pageDto.endPage}">
                   <li class="paginate_button ${pageDto.cri.pageNum==idx?'active':''}">
                      <a href="${idx}" style="background-color: black; border-color: black;">${idx}</a>
                   </li>
                </c:forEach>
                
                <c:if test="${pageDto.next}">
                 <li class="paginate_button next">
                    <a href="${pageDto.endPage+1}" style="background-color: black; border-color: black;">Next</a>
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
                    <option value="" style="color: black;">---------</option>
                    <option value="T" style="color: black;" <c:out value="${pageDto.cri.type == 'T'?'selected':''}"/>>제목</option>
                    <option value="C" style="color: black;" <c:out value="${pageDto.cri.type == 'C'?'selected':''}"/>>내용</option>
                    <option value="R" style="color: black;" <c:out value="${pageDto.cri.type == 'R'?'selected':''}"/>>분류</option>
                    <option value="TC" style="color: black;" <c:out value="${pageDto.cri.type == 'TC'?'selected':''}"/>>제목 or 내용</option>
                    <option value="TW" style="color: black;" <c:out value="${pageDto.cri.type == 'TW'?'selected':''}"/>>제목 or 분류</option>
                    <option value="TCR" style="color: black;" <c:out value="${pageDto.cri.type == 'TCR'?'selected':''}"/>>제목 or 내용 or 분류</option>
                 </select>                               
                 
                 <input type="text" name="keyword" id=""  value='<c:out value="${pageDto.cri.keyword}"/>'/>
                 <button style="background-color: black; border-color: black; color: white;" class="btn btn-default">검색</button>
              </form>
          </div>
         <!-- start Pagination -->
              <!-- end Pagination -->
             </div>
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
</body>
</html>
<%@include file="../includes/footer.jsp"%>