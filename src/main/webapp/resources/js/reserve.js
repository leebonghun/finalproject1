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
	

	
})
