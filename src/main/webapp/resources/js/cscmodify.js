/**
 * cscmodify.js
 */

(function(){
	
	//remove,list일대 전송될 폼
	let formObj=$("#actionForm");
	
	
	$("button").click(function(e){
		e.preventDefault(); //submit 막기
		
		//어느버튼에서 명령이 왔는가?
		
		//data-*
		let oper =$(this).data("oper");
		
		if(oper=='modify'){
			formObj =$("form[role='form']");			
		} if(oper=='remove'){
			formObj.attr("action","/movie/remove")
			.attr("method","post");
		}if(oper =='list'){
			
			formObj.attr("action","/movie/csclist")
					.attr("method","get")
					.find("input[name='CSC_BNO']").remove();
		}
		
		formObj.submit();
	})
	
	
	
	//사유가 비선택 되었을경우 클릭시
	/*$(".btn-info").click(function(e){
		e.preventDefault();*/
		//type 값이 들어 있는지 확인
	//값이 없는 경우 메세지 띄우고 돌아가기
		/*alert($("select[name='type']").val());
		alert($("input[name='keyword']").val());*/
		/*let CSC_RFI=$("input[name='CSC_RFI']").val();
		
		
		if(CSC_RFI===''){
			alert('사유를 선택해 주십시오');
			return;
		}*/
		
		/*//pagenum의 값을 1로변경
		$("#searchForm").find("input[name='pageNum']").val("1");
		
		//검색폼보내기
		$("#searchForm").submit();*/
	/*})	*/
	
	
	
	
})


