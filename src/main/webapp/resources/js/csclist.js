/**
 *  list.jsp
 */

$(function(){
	/*checkModal(result);
	
	history.replaceState({},null,null);*/
	/*function checkModal(result){
		if(result===''||history.state){
			return ;
		}
		if(parseInt(result) > 0){
			$(".modal-body").html("게시글"+parseInt(result)+"번이 등록됨");
		}
		$("#myModal").modal("show");
	}*/
	
	
	//페이지 나누기 스크립트
	let actionForm=$("#actionForm");
	
	//번호 클릭시 클릭된 번호 값 가져오기
	$(".paginate_button a").click(function(e){
		
		
		//a 태그의 속성을 중지
		e.preventDefault();
		
		let pageNum=$(this).attr("href");
		//가져온 번호를 actionfrom 안의 pagenum 값으로 대체
		actionForm.find("input[name='pageNum']").val(pageNum);
		
		//action 수정
		actionForm.attr("action","/movie/csclist");
		
		//bno제거
		actionForm.find("input[name='CSC_BNO']").remove();
			
		//폼전송
		actionForm.submit();
	})
	//amount 클릭이 되면
	$("#amount").change(function(){
		//amouunt 값 가져오기
		let amount=$(this).val();	
	
	//가져온 값을 actionForm의 amount 값 수정하기
	actionForm.find("input[name='amount']").val(amount);
	
	//bno제거
		actionForm.find("input[name='CSC_BNO']").remove();
		
	//actionForm보내기
	actionForm.submit();
	})
	
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
	
	//검색버튼 클릭시
	$(".btn-default").click(function(e){
		e.preventDefault();
		//type 값이 들어 있는지 확인
	//값이 없는 경우 메세지 띄우고 돌아가기
		/*alert($("select[name='type']").val());
		alert($("input[name='keyword']").val());*/
		let type=$("select[name='type']").val();
		let keyword=$("select[name='keyword']").val();
		
		if(type===''){
			alert('검색 기준을 입력해 주세요');
			return;
		}else if(keyword===''){
			alert('검색어를 입력해주세요');
			return;
		}
		
		//pagenum의 값을 1로변경
		$("#searchForm").find("input[name='pageNum']").val("1");
		
		//검색폼보내기
		$("#searchForm").submit();
	})
	
	
	
	//keyword 값이 없는 경우 메세지 띄우고 돌아가기
	
	//검색 폼 보내기
})