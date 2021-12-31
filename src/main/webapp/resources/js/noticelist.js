/**
 * noticelist.js 페이지
 */
$(function(){	
	
	//페이지 나누기 script
	let actionForm = $("#actionForm");

	//번호 클릭 시 클릭된 번호 값을 가져오기
	$(".paginate_button a").click(function(e){		
		
		//a태그의 속성을 중지
		e.preventDefault();

		let pageNum = $(this).attr("href");		
		
		//가져온 번호를 actionForm 안의 pageNum 값으로 대체
		actionForm.find("input[name='pageNum']").val(pageNum);

		//action 수정
		actionForm.attr("action","/movie/noticelist");
		
		//bno 제거
		actionForm.find("input[name='INFO_BNO']").remove();
  
		//폼 전송
		actionForm.submit();		
	})
	
	// amount 값이 변경이 일어나면 
	$("#amount").change(function(){
		
		let actionForm = $("#actionForm");
		
	// amount 값 가져오기
		let amount = $(this).val();		
	
	// 가져온 값을 actionForm에 amount 값 수정하기
		actionForm.find("input[name='amount']").val(amount);
	
	//bno 제거
		actionForm.find("input[name='INFO_BNO']").remove();
	
	// actionForm 보내기
		actionForm.submit();
	})
	
	//글제목 클릭 시
	 $(".move").click(function(e){
		
		//a태그 속성 중지
		e.preventDefault();
		
		let INFO_BNO = $(this).attr('href');
		
		//actionForm에 bno 값을 추가한다
		actionForm.find("input[name='INFO_BNO']").val(INFO_BNO);

		//actionForm action 설정 /notice/read
		actionForm.attr("action","/movie/noticeread");
	
		//actionForm 보내기
	 	actionForm.submit();
	})
	
	//검색버튼 클릭 시 
	$(".btn-default").click(function(e){
		e.preventDefault();
	//alert($("select[name='type']").val());
	//alert($("input[name='keyword']").val());
	
	let type = $("select[name='type']").val();
	let keyword = $("input[name='keyword']").val();
	//type에 값이 들어 있는지 확인
	if(type === ''){
		alert('검색 기준을 입력해 주세요');
		return;
	} else if(keyword === ''){
		//값이 없는 경우 메세지 띄우고 돌아가기
		alert('검색어를 입력해 주세요');
		return;
	}
	
	//pageNum의 값을 1로 변경하기
	$("#searchForm").find("input[name='pageNum']").val("1");
	
	
	//검색 폼 보내기
	$("#searchForm").submit();
		
	})
	
	
	
})        
	
	
	
	
