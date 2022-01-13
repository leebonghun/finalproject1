/**
 * 
 */



$(function(){
	
	
	
	$("#myrev").click(function(e){
		
		e.preventDefault();
		
		$("#noaction").find($("#selectbox1 option:selected").val());
		$("#noaction").find($("#selectbox2 option:selected").val());
		$("#noaction").find($("#selectbox3 option:selected").val());
		$("#noaction").find($("#selectbox4 option:selected").val());
		
		$("#noaction").find($("input[name='reserveSeat']:checked").val());
		
		
		
		
		$("#noaction").attr("action","/movie/mybbm");
		
		$("#noaction").submit();
		
	})
	
	
	
	
	
})
