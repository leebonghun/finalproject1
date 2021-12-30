/**
 * cscread.jsp
 */

$(function() {

	


	let form = $("#actionForm");
	//list 를 클릭하면 전체 리스트 보여주기
	$(".btn-info").click(function() {
		//actionForm에서 CSC_BNO 제거
		form.find("input[name='CSC_BNO']").remove();
		//actionForm action /movie/csclist
		form.attr("action", "/movie/csclist");
		//actionForm 전송
		form.submit();
	})


	//modify를 클릭하면 actionForm 보내기
	$(".btn btn-warning").click(function() {
		form.attr("action", "/movie/cscmodify");
		form.submit();
	})
	

	
	
	
	
	//beforeSend : ajax 추가해서 header 값으로 보내야 하는 값들을 전송(ajax 코드 안에 해당 코드가 존재해야 함)
	//ajaxSend(): ajax 호출되면 무저건 이 값을 헤더로 전송
	$(document).ajaxSend(function(e,xhr,options){
		xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
	});
	
	
		

})
