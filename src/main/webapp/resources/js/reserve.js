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
	$("#myrev").click(function(){
		
		
		swal('예매가 정상적으로 되었습니다');
		
	})
	
	/*$("input[type='submit']").on("click",function(e){
		e.preventDefault();	
		IMP.init('imp46297553');
		IMP.request_pay({
		    pg : 'kcp',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '상품1' , //결제창에서 보여질 이름
		    amount : 8000, //실제 결제되는 가격
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울 강남구 도곡동',
		    buyer_postcode : '123-456'
		}, 
		
		function(rsp) {
			console.log(rsp);
		    if ( rsp.success ) {
		    	var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		    } else {
		    	 var msg = '결제에 실패하였습니다.';
		         msg += '에러내용 : ' + rsp.error_msg;
		    }
		    alert(msg);
		});
		submit();
	});*/
	
	/*IMP.init('imp46297553');
		IMP.request_pay({
		    pg : 'kcp',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : '상품1' , //결제창에서 보여질 이름
		    amount : 8000, //실제 결제되는 가격
		    buyer_email : 'iamport@siot.do',
		    buyer_name : '구매자이름',
		    buyer_tel : '010-1234-5678',
		    buyer_addr : '서울 강남구 도곡동',
		    buyer_postcode : '123-456'
		}, 
		
		function(rsp) {
			console.log(rsp);
		    if ( rsp.success ) {
		    	var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		    } else {
		    	 var msg = '결제에 실패하였습니다.';
		         msg += '에러내용 : ' + rsp.error_msg;
		    }
		    alert(msg);
		});*/
	
})
