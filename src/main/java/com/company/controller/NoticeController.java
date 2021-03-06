package com.company.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.domain.Criteria;
import com.company.domain.InfoDTO;
import com.company.domain.PageDTO;
import com.company.service.NoticeService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/movie/*")
public class NoticeController {
	
	@Autowired
	private NoticeService noticeService;
	
	// 전체 리스트 조회
	@GetMapping("noticelist")
	public void noticelist(Model model,Criteria cri) { //객체 생성구문
		log.info("전체 리스트 요청 "+cri);
		
		List<InfoDTO> list = noticeService.getList(cri);
		
		//페이지 나누기를 위한 정보 얻기
		int totalCnt = noticeService.getTotalCount(cri);
		
		model.addAttribute("pageDto", new PageDTO(cri, totalCnt));
		model.addAttribute("list", list);
	}
	@PreAuthorize("isAuthenticated()")
	@GetMapping("noticeinsert")
	public void insertGet() {
		log.info("공지사항 글 작성으로 이동중입니다.");
		//return "/movie/noticeinsert";
	}
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/noticeinsert")
	public String registerPost(InfoDTO insertDto, RedirectAttributes rttr) {
		log.info("register 가져오기" + insertDto);

		// 첨부파일 확인하기
//		if(insertDto.getAttachList()!=null) {
//			insertDto.getAttachList().forEach(attach ->log.info(attach+""));
//		}
		noticeService.register(insertDto);

		// log.info("bno"+insertDto.getBno());
		rttr.addFlashAttribute(insertDto.getINFO_BNO());
		return "redirect:/movie/noticelist";  
	}
	

	
	
	// 특정 번호 조회
	@GetMapping({"/noticeread", "/noticemodify"})
	public void noticereadGet(int INFO_BNO, @ModelAttribute("cri") Criteria cri, Model model) {
		log.info("read or modify 요청 "+INFO_BNO);


		InfoDTO readdto = noticeService.getRow(INFO_BNO);

		model.addAttribute("readdto", readdto);     
		
	}
	
	
	
	// /noticemodify/post
	@PostMapping("/noticemodify")
	public String modify(InfoDTO modifyDto, Criteria cri, RedirectAttributes rttr) {
		log.info("게시글 수정" +modifyDto+" "+cri);

		// 수정완료후 list로 이동
		noticeService.update(modifyDto);

		// 페이지 나누기 값
		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());

		// 검색 값
		rttr.addAttribute("type", cri.getType());
		rttr.addAttribute("keyword", cri.getKeyword());
		
		rttr.addFlashAttribute("result", "success");
		return "redirect:/movie/noticelist";
	}

	// /noticemodify/post
	@PostMapping("noticeremove")
	public String noticeremove(int INFO_BNO, Criteria cri, RedirectAttributes rttr) {
		log.info("게시글 삭제" + INFO_BNO);

	noticeService.remove(INFO_BNO);
	// 페이지 나누기 값
	rttr.addAttribute("pageNum", cri.getPageNum());
	rttr.addAttribute("amount", cri.getAmount());

	// 검색 값
	rttr.addAttribute("type", cri.getType());
	rttr.addAttribute("keyword", cri.getKeyword());

	rttr.addFlashAttribute("result", "success");

	return "redirect:/movie/noticelist";
	}

	
	
	
}
