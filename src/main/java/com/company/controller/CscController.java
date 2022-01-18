package com.company.controller;


import java.security.Principal;
import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.company.domain.Criteria;
import com.company.domain.CscDTO;
import com.company.domain.PageDTO;
import com.company.service.CscService;



import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/movie/*")
public class CscController {
   
   @Autowired
   private CscService cscService;
   
      
   /*
    * @GetMapping("mailSender") public void cscMailSender() {
    * log.info("메일전송으로 이동중입니다..");
    * 
    * }
    */
   
   
   @GetMapping("csclist")
   public void csclist(Model model, Criteria cri) {
      log.info("고객센터으로 이동중입니다."+cri);
      
      List<CscDTO> list = cscService.getList(cri);
      // 페이지 나누기를 위한 정보
      int totalCnt = cscService.getTotalCount(cri);
      log.info(""+list);
      model.addAttribute("pageDto", new PageDTO(cri, totalCnt));
      model.addAttribute("list", list);
   }
   
   
   @PreAuthorize("isAuthenticated()")
   @GetMapping("cscinsert")
   public void cscinsert() {
      log.info("고객센터글작성으로 이동중입니다.");
      
   }
   
//   @PostMapping("/cscinsert")
//   public String cscinsertPost(CscDTO insertDto, RedirectAttributes rttr) {
//      log.info("register 가져오기" + insertDto);
//
//      // 첨부파일 확인하기
////      if(insertDto.getAttachList()!=null) {
////         insertDto.getAttachList().forEach(attach ->log.info(attach+""));
////      }
//
//      cscService.register(insertDto);
//
//      // log.info("bno"+insertDto.getBno());
//      rttr.addFlashAttribute("result", insertDto.getCSC_BNO());
//      return "redirect:/movie/csclist";
//   }
   @PreAuthorize("isAuthenticated()")
   @PostMapping("/cscinsert")
   public String cscinsertPost(CscDTO insertDto, RedirectAttributes rttr) {
      log.info("register 가져오기" + insertDto);

      // 첨부파일 확인하기
//      if(insertDto.getAttachList()!=null) {
//         insertDto.getAttachList().forEach(attach ->log.info(attach+""));
//      }

      cscService.register(insertDto);
      rttr.addFlashAttribute( insertDto.getCSC_BNO());
      // log.info("bno"+insertDto.getBno());
      
      return "redirect:/movie/csclist";
   }
   
   @GetMapping({ "/cscread", "/cscmodify" })
   public void cscread(int CSC_BNO, @ModelAttribute("cri") Criteria cri, Model model) {
      log.info("고객센터글으로 이동중입니다.");


      CscDTO readdto = cscService.getRow(CSC_BNO);

      model.addAttribute("readdto", readdto);
      
   }
   
   
   @PostMapping("cscmodify")
   public String cscmodify(CscDTO modifyDto, Criteria cri, RedirectAttributes rttr) {
      log.info("게시글 수정" + modifyDto+ "" + cri );

      
      
      
      
      // 수정완료후 list로 이동
      cscService.update(modifyDto);
      // 페이지 나누기 값
            rttr.addAttribute("pageNum", cri.getPageNum());
            rttr.addAttribute("amount", cri.getAmount());
            // 검색 값
            rttr.addAttribute("type", cri.getType());
            rttr.addAttribute("keyword", cri.getKeyword());

            rttr.addFlashAttribute("result", "success");
      
      

      
      return"redirect:/movie/csclist";
   }
   
   @Autowired
   private JavaMailSender mailSender;
   
   /* @RequestMapping(value = "cscread", method = RequestMethod.POST) */
   @PostMapping("cscread")
   public String cscmodify2(CscDTO modifyDto2, Criteria cri, RedirectAttributes rttr,String user_id, String CSC_TITLE, String CSC_EMAIL,int CSC_BNO,
         String message) {
      log.info("답글 입력" + modifyDto2 );
      
      try {
         MimeMessage mimeMessage = mailSender.createMimeMessage();
         MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");

         
         // 메일서버 사용하는 아이디를 작성하면됨
         messageHelper.setTo(CSC_EMAIL); // 받는사람 이메일
         messageHelper.setSubject(user_id +"님 안녕하세요~!  " +"MMB 고객센터글 : "+CSC_TITLE +"에 답변이 완료되었습니다.");// 메일제목
         messageHelper.setText("안녕하세요MMB입니다. 현재 고객님의 고객센터글 번호:  "+CSC_BNO+"  제목:  "+CSC_TITLE+"에 대한 답변이 완료되었습니다."
               + "자세한 내용은  홈페이지의 -> 마이페이지 -> 내 문의 -> 내 고객센터 글 목록에서 확인부탁드립니다. "
               + "더욱 더 노력하는 BBM이 되도록 노력하겠습니다. 감사합니다."
               + "바로가기 주소:  http://localhost:8080/movie/index"); // 메일 내용 
                                                                           
         mailSender.send(mimeMessage);
      } catch (Exception e) {
         e.printStackTrace();
      }
      
      
      
      
      // 수정완료후 list로 이동
      cscService.update2(modifyDto2);

      // 페이지 나누기 값
      rttr.addAttribute("pageNum", cri.getPageNum());
      rttr.addAttribute("amount", cri.getAmount());
      // 검색 값
      rttr.addAttribute("type", cri.getType());
      rttr.addAttribute("keyword", cri.getKeyword());

      rttr.addFlashAttribute("result", "success");
      

      
      return"redirect:/movie/csclist";
   }
   

   
   
   
   
   @PostMapping("cscremove")
   public String cscremovePost(int CSC_BNO,String user_id ,Criteria cri, RedirectAttributes rttr ) {
      log.info("게시글 삭제" + CSC_BNO);

//      // 첨부파일 목록 얻어오기
//      List<AttachFileDTO> attachList = service.findByBno(bno);
      
      cscService.remove(CSC_BNO);
      // 수정삭제 후 리스트로 이동
//      if (cscService.remove(CSC_BNO)) {
         //첨부 폴더 파일 삭제
//         deleteFiles(attachList);
//         // 페이지 나누기 값
      rttr.addAttribute("pageNum", cri.getPageNum());
         rttr.addAttribute("amount", cri.getAmount());
//
//         // 검색 값
         rttr.addAttribute("type", cri.getType());
         rttr.addAttribute("keyword", cri.getKeyword());
//
      rttr.addFlashAttribute("result", "success");
//      }

      return "redirect:/movie/csclist";
   }
   
   @GetMapping("mypagecsclist")
   public void cscmylist(Model model,Principal username) {
      log.info("내 글목록으로 이동중입니다.");
      
      List<CscDTO> mylist = cscService.getmyList(username);
      // 페이지 나누기를 위한 정보
   
      log.info(""+mylist);
      
      model.addAttribute("mylist", mylist);
   
      
   }
   
   
   
}