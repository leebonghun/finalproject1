<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/js/mypagecsclist.js"></script>
<script src="/resources/css/bootstrap.css"></script>
<script src="/resources/css/csclist.css"></script>

</head>
<body>
<div class="container">							
				<div class="panel-body" >
			<div>
				<div>
					<img src="/resources/images/내글목록.png" style="height: 50px;  " />
			<h4 class="latest-text w3_faq_latest_text w3_latest_text"  style="margin-left: 0px;  display: inline;">내 고객센터 글목록</h4>
			
				</div>
			</div>
			<table class="table" id=csctbl>
				<thead >
					<tr style="background-color: black;" >
						<th scope="col"  style="color: white;">글번호</th>
						<th scope="col"style="color: white;">사유</th>
						<th scope="col"style="color: white;">제목</th>
						<th scope="col"style="color: white;">접수상태</th>
						<th scope="col"style="color: white;">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="mycscDto" items="${mylist}">
						<tr class="table-active">
							<th scope="row">${mycscDto.CSC_BNO}</th>
							<td>${mycscDto.CSC_RFI}
							</td>										
							<td  id="tit" ><a class="move" href="${mycscDto.CSC_BNO}" style="color: black;">
							${mycscDto.CSC_TITLE}   
							</a></td>	
							<c:if test="${mycscDto.CSC_CHECK == '[답변 대기중]' }">						
							<td style=" color:blue;">${mycscDto.CSC_CHECK}</td>
							</c:if>
							<c:if test="${mycscDto.CSC_CHECK == '[답변완료]' }">
								<td style=" color:red;">${mycscDto.CSC_CHECK}
									</td>	
								</c:if>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${mycscDto.CSC_REGDATE}"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>		
			</div>
	
</div>
  <input type="hidden" name="${_csrf.parameterName}"
                        value="${_csrf.token}" />
<!--  페이지 나누기를 위한 폼 -->
   <form action="" method="get" id="actionForm">
      
      <input type="hidden" name="CSC_BNO" value="${mycscDto.CSC_BNO}">

   </form>

   <%--시큐리티 적용으로 인한 추가 --%>
   <input type="hidden" name="${_csrf.parameterName}"
      value="${_csrf.token}" />
   <input type="hidden" name="user_id" value="${readdto.user_id}" />
   <!-- 스크립트 -->
   <script>
   
      let result = '${result}';
   </script>

<!-- 
<script type="text/javascript">


$(function(){
	//글제목 클릭시
	$(".move").click(function(e){
		//a테그 속성 중지
		e.preventDefault();
		
		let CSC_BNO=$(this).attr('href');
	//actionForm에 CSC_BNO 값을 추가
	actionForm.find("input[name='CSC_BNO']").val(CSC_BNO);
	//actionForm action 설정 /movie/cscread
	actionForm.attr("action","/movie/cscread")
	//actionForm 보내기	
	actionForm.submit();
	})
	
	
	
	
	
})	
</script> 
 -->



</body>
</html>
 <%@include file="../includes/footer.jsp"%> 