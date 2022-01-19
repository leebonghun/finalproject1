/**
 * cscmodify.js
 */

$(function(){   
   //remove,list일대 전송될 폼
   let formObj=$("#actionForm");   
   
   let button=$("form[role='form']").find("button");   
   
   $(button).click(function(e){
      e.preventDefault(); //submit 막기
      
      //어느버튼에서 명령이 왔는가?      
      //data-*
      let oper =$(this).data("oper");
      
      if(oper=='modify'){
         
          let title=$("input[name='CSC_TITLE']").val();
      let content=$("textarea[name='CSC_CONTENT']").val();
         
           if(title===''){
         swal('제목을 넣어주세요');
         return;
      }else if(content===''){
         swal('내용을 입력해주세요');
         return;
      }
         
         swal('문의 수정이 완료되었습니다');      
         formObj =$("form[role='form']");   
      } if(oper=='remove'){
         swal('문의 삭제가 완료되었습니다');
         formObj.attr("action","/movie/cscremove")
         .attr("method","post");
      }if(oper =='list'){         
         formObj.attr("action","/movie/csclist")
               .attr("method","get")
               .find("input[name='CSC_BNO']").remove();
      }
      
      formObj.submit();
   })
   
   
   
   
   
   
})

