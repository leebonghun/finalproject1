/**
 * noticemodify.js
 */

$(function(){	
	//remove,list일대 전송될 폼
	let formObj=$("#actionForm");	
	
	let button=$("form[role='form']").find("button");	
	
	$(button).click(function(e){
		e.preventDefault(); //submit 막기
		
		//어느버튼에서 명령이 왔는가?		
		//data-*
		let oper =$(this).data("oper");
		
		if(oper=='modify'){
			swal("공지사항 수정이 완료되었습니다");
			formObj =$("form[role='form']");			
		} if(oper=='remove'){
			swal("공지사항 삭제 완료되었습니다");
			formObj.attr("action","/movie/noticeremove")
			.attr("method","post");
		}if(oper =='list'){
			formObj.attr("action","/movie/noticelist")
					.attr("method","get")
					.find("input[name='INFO_BNO']").remove();
		}
		
		formObj.submit();
	})
	
	
	
	
	
	
})


