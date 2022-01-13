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
				console.log("sdsd");
				$(item).prop("checked",true);	
				//break;			
			}
		})
	})

	
		
		
		
	
	
	/*$("#myrev").click(function(e){
		
		e.preventDefault();
		
		/*$("#noaction").find($("#selectbox1 option:selected").val());
		$("#noaction").find($("#selectbox2 option:selected").val());
		$("#noaction").find($("#selectbox3 option:selected").val());
		$("#noaction").find($("#selectbox4 option:selected").val());
		
		$("#noaction").find($("input[name='reserveSeat']:checked").val());
		
		
				
		
		
		
		$("#noaction").attr("action","/movie/mybbm");
		
		$("#noaction").submit();		
	})
	*/
	
	
	
	
})
