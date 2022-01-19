/**
 *  
 */
$(function(){
   
   //완료 클릭시
   $("#insert").click(function(e){
      e.preventDefault();
   
      
      let title=$("input[name='INFO_TITLE']").val();
      let content=$("textarea[name='INFO_CONTENT']").val();
      
      if(title===''){
         swal('제목을 넣어주세요');
         return;
      }else if(content===''){
         swal('내용을 입력해주세요');
         return;
      }
         
      if($("#insertForm").submit()){
         swal('문의 등록이 완료되었습니다');
      
      }
   })
   
   
})