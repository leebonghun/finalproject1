/**
 * noticeList.js 페이지
 */
function pressSchTxt(event){
	if(event.keyCode==13){
		fnSelectInfs(1);
		if(event.preventDefault){
			event.preventDefault();
		}else{
			event.returnValue = false;
		}
	}
}

function fnSelectInfs(pageIndex) {
    $("#pageIndex").val(pageIndex); 
    $("#frm").attr("action",  "/news/noticeList.jsp");
    $("#frm").submit();
}
var scEventListener = {
	fnView: function(bbs_seq) {
        
        $("#frm").attr("action",  "/movie/noticeList.jsp?bbs_seq="+bbs_seq);
        $("#frm").submit(); 
    },
    fnList: function(div_cd){
	
    	$('#searchDivCd').val(div_cd);
    	$("#frm").attr("action",  "/movie/noticeList.jsp");
    	$('#frm').submit();
    }
};

$(function() {
	$("title").text($("title").text() + ">" + $(".tab_menu > li > a.on").text());
});
