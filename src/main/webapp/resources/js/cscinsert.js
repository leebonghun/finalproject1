/**
 * cscinsert.jsp
 */



$(function(){
   
   //완료 클릭시
   $("#insert").click(function(e){
      e.preventDefault();
   
      
      let title=$("input[name='CSC_TITLE']").val();
      let content=$("textarea[name='CSC_CONTENT']").val();
      
      if(title===''){
         alert('제목을 넣어주세요');
         return;
      }else if(content===''){
         alert('내용을 입력해주세요');
         return;
      }
         
      $("#insertForm").submit();
   })
   
   
})