<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<!DOCTYPE html>
<html>
<%@include file="../includes/header.jsp"%>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
table {
   list-style: none;
    padding-left: 0px;
}

table.st th, td {
   border: 1px solid #bcbcbc;
}


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

#cls{
padding-left: auto;
padding-right: auto;
padding: 10px;
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
    width: 864px;
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
         <img src="/resources/images/mybbn.png" style="height: 60px;" /> 내 예매 내역
      </h2>            
   </div>   
</div>

      <!-- /.panel-heading -->
        <div class="panel-body" > 
           <div class="board_info">
         <div class="row" >          
               <table class="table table-hover" id="dtotbl" >
                  <colgroup>
                   <col class="col-md-3">
                   <col class="col-md-3">
                   <col class="col-md-2">
                   <col class="col-md-2">
                   <col class="col-md-2">
               </colgroup>              
                   <thead>
                       <tr>
                           <th style="background: black; font:sans-serif; color: white;">관람 영화</th>
                           <th style="background: black; font:sans-serif; color: white;">관람BBM</th>
                           <th style="background: black; font:sans-serif; color: white;">관람 일시</th>
                           <th style="background: black; font:sans-serif; color: white;">관람일</th>
                           <th style="background: black; font:sans-serif; color: white;">결제 금액</th>
                       </tr>                           
                   </thead>
                  <tbody>
                     <c:forEach var="list" items="${mylist}">
                        <tr class="table-active">
                           <th scope="row">${list.movieNM}</th>
                           <td>${list.reserveDay} , ${list.reserveTime}</td>
                           <td>${list.reservePlace}(${list.reserveGuan})</td>
                           <td>${list.reserveSeat}</td>
                           <td>${list.reserveNm}</td>
                        </tr>
                     </c:forEach>
                  </tbody>
                  

            <!-- 게시판 리스트 반복문 -->
            <tbody>
                     <c:forEach var="cscDto" items="${list}">
                        <tr class="table-active">
                           <th scope="row">${cscDto.rn}</th>
                           <td>${cscDto.CSC_RFI}</td>
                           <td id="tit"><a class="move" href="${cscDto.CSC_BNO}" style="color: black;">
                                 ${cscDto.CSC_TITLE} </a></td>
                           <c:if test="${cscDto.CSC_CHECK == '[답변 대기중]'}">
                              <td>${cscDto.CSC_CHECK}</td>
                           </c:if>
                           
                           <c:if test="${cscDto.CSC_CHECK == '[답변완료]'}">
                              <td style="color: red;">${cscDto.CSC_CHECK}</td>
                           </c:if>
                           <td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
                                 value="${cscDto.CSC_REGDATE}" /></td>

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
                    <option value="R" style="color: black;" <c:out value="${pageDto.cri.type == 'R'?'selected':''}"/>>사유</option>
                    <option value="TC" style="color: black;" <c:out value="${pageDto.cri.type == 'TC'?'selected':''}"/>>제목 or 내용</option>
                    <option value="TW" style="color: black;" <c:out value="${pageDto.cri.type == 'TW'?'selected':''}"/>>제목 or 사유</option>
                    <option value="TCR" style="color: black;" <c:out value="${pageDto.cri.type == 'TCR'?'selected':''}"/>>제목 or 내용 or 사유</option>
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


         <!-- start Pagination -->
              <!-- end Pagination -->
                     
           

                   
<!--  페이지 나누기를 위한 폼 -->
<form action="" method="get" id="actionForm">
   <input type="hidden" name="pageNum" value="${pageDto.cri.pageNum}">
   <input type="hidden" name="amount" value="${pageDto.cri.amount}">
   <input type="hidden" name="type" value="${pageDto.cri.type}">
   <input type="hidden" name="keyword" value="${pageDto.cri.keyword}">
   <input type="hidden" name="CSC_BNO" value="">
</form>

<%--시큐리티 적용으로 인한 추가 --%>
<input type="hidden" name="${_csrf.parameterName}"
  value="${_csrf.token}" />
<input type="hidden" name="user_id" value="${readdto.user_id}" />
      <div class="container" style="text-align: center; padding: 15px; ">
         <table class="st" style="width: 860px;">
            <tbody>
              <tr>
                <td width="170px">이용안내</td>
                <td>
                   <li>예매 변경은 불가능하며, 취소 후 재 예매를 하셔야만 합니다.</li>
                   <li>영수증은 상영 시간 전까지 My BBM 에서 출력하실 수 있습니다. 단, 신용카드로 예매하신 경우만 한합니다.</li>
                   <li>상영 시간 이후 관람하신 영화의 영수증 출력을 원하실 경우, 0000-0000로 문의 주시기 바랍니다.</li>
                   <li>취소하신 내역이 나타나지 않거나 궁금하신 사항이 있으시면, 고객센터로 문의해 주시기 바랍니다.</li>
                </td>
              </tr>
              <tr>
                <td>티켓 교환방법</td>
                <td>
                   <li>
                     <p><strong>티켓판매기(ATM)에서 발권하실 경우</strong><br />예매번호 또는 고객인증번호 (법정생년월일 6자리 + 휴대폰번호 뒷 7~8자리)를 입력하시면 티켓을 편하게 발권하실 수 있습니다.</p>
                  </li>
                  <li>
                     <p><strong>매표소에서 발권하실 경우</strong><br />티켓교환권을 출력하여 매표소에 방문하시면 티켓으로 교환하실 수 있습니다.<br />
                      (티켓교환권 출력이 어려운 경우, 예매번호와 신분증을 지참하시면 매표소에서 티켓을 수령하실 수 있습니다.)</p>
                  </li>
                </td>
              </tr>
              <tr>
                <td>예매 취소 안내</td>
                <td>
                   <li>
                       <p><strong>카카오페이</strong><br />
                           카카오페이머니나 카카오포인트를 사용하신 경우 각각의 잔액으로 원복되며, 카드 결제를 하신 경우는 카드사 정책에 따라 승인취소가 진행되며 3일 이후 매입 취소시 영업일 기준 3~10일 소요됩니다.</p>
                    </li>
              </tr>
              <tr>
                <td>환불 규정 안내</td>
                <td>
                   <li>
                   <p><strong>현장 취소를 하는 경우</strong><br />상영시간 이전까지만 가능하며, 상영시간 이후 취소나 환불은 되지 않습니다.</p>
                  </li>
                   <li>
                     <p>
                       <strong>홈페이지에서 예매 취소할 경우</strong><br />
                       부분 취소는 불가능합니다. (ex. 4장을 인터넷으로 예매한 경우 4장 모두 취소만 가능)<br />
                       홈페이지 예매 취소는 상영시간 20분전까지 가능합니다.<br />
                       <em style="color:#0000FF";>(단, 씨네&포레관, 씨네&리빙룸, SUITE CINEMA 제외)</em><br />
                       상영시간 이후 취소나 환불은 되지 않습니다
                       </p>                              
                  </li>
                   <li>
                        <p>
                         <strong>모바일 앱/웹(m.cgv.co.kr)에서 예매 취소할 경우</strong><br />
                         부분 취소는 불가합니다.(ex. 4장을 인터넷으로 예매한 경우 4장 모두 취소만 가능)<br /> 
                         모바일 앱/웹 예매 취소는 상영시간 15분전까지 가능합니다.<br />
                         <em style="color:#0000FF";>(단, 씨네&포레관, 씨네&리빙룸, SUITE CINEMA 제외)</em><br /> 
                         상영시간 이후 취소나 환불은 되지 않습니다.
                        </p>
                   </li>
                   <li>
                       <p><strong>단, 일부 행사의 경우 행사 당일 취소, 변경 불가 합니다.</strong></p>
                   </li>
                   </td>
                 </tr>
               </tbody>
             </table>
        </div>
   
<!-- 스크립트 -->
<script>
  let result = '${result}';
</script>
</body>
</html>
<%@include file="../includes/footer.jsp"%>