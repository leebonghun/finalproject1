package com.company.controller;


import java.util.List;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.domain.CscDTO;
import com.company.domain.InfoDTO;
import com.company.service.NoticeService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/movie/*")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
		
	@GetMapping("/noticeinsert")
	public void registerGet() {
		//return "/movie/noticeinsert";
	}
	
	@PostMapping("/noticeinsert")
	public String registerPost(InfoDTO insertDto, RedirectAttributes rttr) {
		log.info("register 가져오기" + insertDto);

		// 첨부파일 확인하기
//		if(insertDto.getAttachList()!=null) {
//			insertDto.getAttachList().forEach(attach ->log.info(attach+""));
//		}
		noticeService.register(insertDto);

		// log.info("bno"+insertDto.getBno());
		rttr.addFlashAttribute("result", insertDto.getINFO_BNO());
		return "redirect:/movie/noticelist";  
	}
	@GetMapping("noticeread")
	public void noticeread(int INFO_BNO, Model model) {
		log.info("공지사항 게시판 글을 읽으러 이동중입니다.");
	
		InfoDTO readdto = noticeService.getRow(INFO_BNO);
		
		model.addAttribute("readdto", readdto);
	
	}
	@GetMapping("noticelist")
	public void noticelist(Model model) {
		log.info("공지사항으로 이동중입니다.");
		
		List<InfoDTO> list = noticeService.getList();
		log.info(""+list);
		
		model.addAttribute("list", list);
	}

	
//	@GetMapping({ "noticeread", "noticemodify" })
//	public void noticeread(int INFO_BNO, Model model) {
//		log.info("공지사항글으로 이동중입니다.");
//
//
//		InfoDTO readdto = noticeService.getRow(INFO_BNO);
//
//		model.addAttribute("readdto", readdto);     
//		
//	}
//	
//	
//	@PostMapping("noticemodify")
//	public String modify(InfoDTO modifyDto) {
//		log.info("게시글 수정" + modifyDto );
//
//		
//		
//		
//		
//		// 수정완료후 list로 이동
//		noticeService.update(modifyDto);
//
//		
//		
//
//		
//		return"redirect:/movie/noticelist";
//	}
//
//	@PostMapping("remove")
//	public String removePost(int INFO_BNO ) {
//		log.info("게시글 삭제" + INFO_BNO);
//
////		// 첨부파일 목록 얻어오기
////		List<AttachFileDTO> attachList = service.findByBno(bno);
//		
//		noticeService.remove(INFO_BNO);
//		// 수정삭제 후 리스트로 이동
////		if (cscService.remove(CSC_BNO)) {
//			//첨부 폴더 파일 삭제
////			deleteFiles(attachList);
////			// 페이지 나누기 값
////			rttr.addAttribute("pageNum", cri.getPageNum());
////			rttr.addAttribute("amount", cri.getAmount());
////
////			// 검색 값
////			rttr.addAttribute("type", cri.getType());
////			rttr.addAttribute("keyword", cri.getKeyword());
////
////			rttr.addFlashAttribute("result", "success");
////		}
//
//		return "redirect:/movie/noticelist";
//	}

	
	
	
}
