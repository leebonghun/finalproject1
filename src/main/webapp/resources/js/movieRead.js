/**
 * 
 */
$(function(){
		
		
		
		//list로 돌아가기
		$("#goBack").click(function(){
			
			location.href='/movie/movieList';
			
		})
		
	
		//댓글 전체 가져오기 함수 호출
		showList(1);
		//댓글 보여줄 영역 가져오기
		let replyUl = $(".chat");
		//댓글 페이지 나누기 영역 가져오기
		let replyPageFooter = $(".panel-footer");
		let pageNum = 1;
	
	
		let form = $("#actionForm");
		
		$(".btn-info").click(function(){
			form.attr("action","/movie/movieList");
			form.find("input[name='movieCD']").remove();
				
			
			form.submit();
			
		})
		
		$(".btn-default").click(function(){
			form.attr("action","/board/modify");
			form.submit();
			
		})
		
		//댓글 작성
		
		//댓글 삽입
		//댓글 모달 창 영역 가져오기
		let modal = $('#replyModal');
		
		//모달 창 영역 안의 요소 가져오기
		let modalReply = modal.find("input[name='replyContent']");
		let modalReplyer = modal.find("input[name='replyer']");
		let modalReplyDate = modal.find("input[name='replyDate']");
		
		let modalRegisterBtn = modal.find("#modalRegisterBtn");
		let modalModifyBtn = modal.find("#modalModifyBtn");
		let modalRemoveBtn = modal.find("#modalRemoveBtn");
		
		
		
		
		//beforeSend : ajax 구문안에다가 추가해서 header 값으로 보내야 하는 값들을 전송(ajax 코드 안에 해당 코드가 존재해야함)
		//ajaxSend() 함수도 존재 : ajax 호출되면 무조건 이 값을 헤더로 전송
		
		$(document).ajaxSend(function(e,xhr,options){
			xhr.setRequestHeader(csrfHeaderName,csrfTokenValue);
		})

		$("#addReplyBtn").click(function(){
			
			//input 안에 들어있는 value 제거
			modal.find("input").val("");
			
			
			
			//댓글 날짜 요소 숨기기
			modalReplyDate.closest("div").hide();
			
			modal.find("button[id != 'modalCloseBtn']").hide();
			modalRegisterBtn.show();
			
			//로그인 사용자 보여주기
			modalReplyer.val(replyer).attr("readonly","readonly");
			
			
			//댓글 modal 창 보여주기
			modal.modal('show');
		})//addReplyBtn end
		
		//댓글 등록버튼 클릭시
		modalRegisterBtn.click(function(){
			
			var replyContent = {movieCD:movieCD,replyer:modalReplyer.val(),replyContent:modalReply.val()};
			
		replyService.add(replyContent,function(result){
			if(result){
				if(result =='success'){
					swal("댓글 등록 성공");
				}
				modal.find("input").val("");
				modal.modal("hide");
				showList(-1);
			}
			
			});//add end
		})
		
		
		
		
		
		
		//댓글 삭제
		modalRemoveBtn.click(function(){
			//로그인 여부
			if(!replyer){
				swal('로그인 한 후 삭제가 가능합니다');
				modal.modal("hide");
				return;
			}
			//로그인 사용자 == 댓글 작성자
			
			//댓글 작성자 가져오기
			let oriReplyer = modalReplyer.val();
			if(replyer != oriReplyer){
				
				swal("자신의 댓글만 삭제가 가능합니다");
				modal.modal("hide");
				return;
			}
			
		replyService.remove(modal.data("replycd"),oriReplyer,function(result){
			if(result=='success'){
				swal("삭제 성공");
			}
			modal.modal("hide");
			showList(pageNum);
		},
		function(msg){
			swal(msg);
		}
	);//remove end
			
		})
	
	
		modalModifyBtn.click(function(){
			//로그인 여부
			if(!replyer){
				swal('로그인 한 후 수정이 가능합니다');
				modal.modal("hide");
				return;
			}
			//로그인 사용자 == 댓글 작성자
			
			//댓글 작성자 가져오기
			let oriReplyer = modalReplyer.val();
			if(replyer != oriReplyer){
				swal("자신의 댓글만 수정이 가능합니다");
				modal.modal("hide");
				return;
			}
			
			
			var replyContent={replyCd:modal.data("replycd"),
			replyContent:modalReply.val(),
			replyer:oriReplyer
			};
			
		replyService.update(replyContent,function(data){
			//alert(data);
			if(data=='success'){
				swal("수정성공");
				
			}
			modal.modal("hide");
			showList(pageNum);
		},
		function(msg){
			swal(msg);
		}
	);//update end
			
		})
	
		
		
		
		//댓글이 반복되는 코드는 실제로존재하는 것이 아닌 나중에 동적으로 생성되기 떄문에
		//있는 요소에 이벤트를 걸고 나중에 위임하는 형태로 작성
		replyUl.on("click","li",function(){
			
			var replyCd = $(this).data("replycd");
		
			
			//console.log("replyCd"+replyCd);
		replyService.get(replyCd,function(data){
				console.log(data);
				
				modalReply.val(data.replyContent);
				modalReplyer.val(data.replyer).attr("readonly","readonly");
				modalReplyDate.val(replyService.displayTime(data.replyDate)).attr("readonly","readonly");
				
				
				modal.data("replycd",data.replyCd);
				
				//작성날짜 영역 보여주기
				modal.find("[name='replyDate']").closest("div").show(); //제일 가까운 div를 보여줘
				//모든 버튼 다시 보여주기
				modal.find("button").show();
				
				//등록버튼 숨기기
				
				
				
				modal.find("#modalRegisterBtn").hide();
				modal.modal("show");
				
			});
		})
		
		
	
	
	
	
	
		//댓글 전체 가져오기
		function showList(page){
		replyService.getList({movieCD:movieCD,page:page||1},function(total,data){
			console.log("댓글 전체 개수 :"+total);
			console.log(data);
			
			//새글을 작성한 경우 마지막 페이지를 띄우기위해 새 댓글 작성
			if(page == -1){
				pageNum = Math.ceil(total/10.0);
				showList(pageNum);
				return;
			}			
			
			
			//댓글이 없는 게시물일 경우
			if(data==null || data.length==0){
				replyUl.html("");
				return;
			}
			//댓글이 있는 게시물일 경우
			let str="";
			for(var i=0,len=data.length||0;i<len;i++){
				str += "<li class='left clearfix' data-replyCd='"+data[i].replyCd+"'>"; //첫번째 댓글의 rno
				str += "<div><div class='replyAll' id='replyAll'>";
				str += "<strong class='primary-font' id='replyer'>"+data[i].replyer+"</strong>";
				str += "<small class='pull-right text-muted'>"+replyService.displayTime(data[i].replyDate)+"</small>";
				str += "<p>"+data[i].replyContent+"</p>";
				str += "</div></div></li>";
			}
			replyUl.html(str);
			showReplyPage(total);
			
		});//getList end
	}//showList END
	function showReplyPage(total){
		//마지막 페이지 계산
		let endPage = Math.ceil(pageNum/10.0)*10;
		//시작페이지
		let startPage = endPage - 9;
		//이전 버튼
		let prev = startPage!=1;
		//다음 버튼
		var next = false;
				
		if(endPage*10 >= total){
			endPage = Math.ceil(total/10.0);
		}
		if(endPage*10 < total){
			next = true;
		}	
		let str ="<ul class='pagination pull-right'>";
		if(prev){
			str += "<li class='paginate_button'>";
			str += "<a href='"+(startPage-1)+"'>Previous</a></li>";
			
		}
		
		for(var i=startPage;i<=endPage;i++){
			var active = pageNum == i ? "active":"";
			str += "<li class='paginate_button "+active+"'>";
			str += "<a href='"+i+"'>"+i+"</a></li>";
		}
		
		if(next){
			str += "<li class='paginate_button'>";
			str += "<a href='"+(endPage+1)+"'>Next</a></li>";
			
		}
		
		str += "</ul>";
		replyPageFooter.html(str);
	}//showReplyPage end
		
	//댓글 페이지 번호 클릭시
	//이벤트 위임의 방식
	
	replyPageFooter.on("click","li a",function(e){
			e.preventDefault(); //a 태그동작 중지
			
			pageNum = $(this).attr('href'); 
			showList(pageNum);
	})
	
});