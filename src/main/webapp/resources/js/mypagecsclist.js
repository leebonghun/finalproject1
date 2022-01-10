/**
 * mypagecsclist.jsp
 */

$(function(){
	//글제목 클릭시
	$(".move").click(function(e){
		//a테그 속성 중지
		e.preventDefault();
		
		let CSC_BNO=$(this).attr('href');
	//actionForm에 CSC_BNO 값을 추가
	$("#actionForm").find("input[name='CSC_BNO']").val(CSC_BNO);
   //actionForm action 설정 /movie/cscread
   $("#actionForm").attr("action","/movie/cscread");
   //actionForm 보내기   
   $("#actionForm").submit();
   })
	
	
	
	
	
})	