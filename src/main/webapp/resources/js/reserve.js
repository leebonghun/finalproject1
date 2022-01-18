/**
 * 
 */



$(function(){
	
	
	//let reserveSeat = '${seatDto}';
	let reserveSeat1 = [];
	
	
	
	reserveSeat = reserveSeat.split(",")
	console.log(reserveSeat);
	
	
	for(var i=0;i<reserveSeat.length;i++){
		reserveSeat[i]=reserveSeat[i].replace("[","");
		reserveSeat[i]=reserveSeat[i].replace("]","");
		reserveSeat[i]=reserveSeat[i].replace(" ","");
		reserveSeat1.push(reserveSeat[i]);
	}
	
	console.log("배열");
	console.log(reserveSeat1);		
	
	
	reserveSeat1.forEach(element =>{
		console.log("element1 "+element);
		$(":checkbox").each(function(idx,item){
			console.log($(item).attr("value"));
			console.log("element2 "+element);
			
			if($(item).attr("value") == element){				
				//$(item).prop("checked",true);	
				//$(item).addClass("reversed");	
				$(item).attr("disabled", true); 
				
			}
		})
	})

	
		
	$("input[type='checkbox']").on("click",function(){
		let count = $("input:checked[type='checkbox']").length;
		
		/*count=count - reserveSeat1.length;*/
		
		if(count>3){
			swal("3개 까지의 좌석만 선택할 수 있습니다");
			$(this).prop("checked",false);
		}	
			
	});
	/*$("#myrev").click(function(e){
		let formObj = $("#noaction");
		let movieNM = '${movieDto.movieNM}';
		let money = $("input:checked[type='checkbox']").length*8000;
		if($("input:checkbox[name=reserveSeat]").is(":checked") == true){
		    	swal('좌석 선택이 완료되었습니다');
				e.preventDefault();
				IMP.init('imp46297553');
		IMP.request_pay({
		    pg : 'kcp',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '${movieDto.movieNM}', //결제창에서 보여질 이름
		    amount : money, //실제 결제되는 가격
		    buyer_name : '<sec:authentication property="principal.username"/>',
		}, 
		
		function(rsp) {
			console.log(rsp);
		    if ( rsp.success ) {
		    	var msg = '예매가 완료되었습니다.';
				formObj.find("input[name='reserveMoney']").val(money);
				formObj.submit();
		    } else {
		    	 var msg = '결제에 실패하였습니다.';
		    }
		    swal(msg);
		});
		}else{
			swal('한 개이상의 좌석을 선택해주세요');
			e.preventDefault();
			return;
		}	
	})*/
	

	
})