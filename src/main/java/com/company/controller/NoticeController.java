package com.company.controller;


import java.util.List;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public void noticeread() {
		log.info("공지사항으로 이동중입니다.");
	}
	@GetMapping("noticelist")
	public void noticelist(Model model) {
		log.info("공지사항으로 이동중입니다.");
		
		List<InfoDTO> list = noticeService.getList();
		log.info(""+list);
		
		model.addAttribute("list", list);
	}

	
	
	

	
	
	
}
