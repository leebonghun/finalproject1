package com.company.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.domain.CscDTO;

import com.company.domain.InfoDTO;

import com.company.domain.LoginDTO;

import com.company.service.CscService;

import com.company.domain.movieDTO;
import com.company.service.MovieService;

import com.company.service.NoticeService;

import com.company.service.UserService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/movie/*")
public class MovieController {
	

	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private CscService cscService;

	@Autowired
	private MovieService service;
	
	

	
	@GetMapping("index")
	public void index() {
		log.info("메인 홈페이지 입니다");
		
	}
	
	@GetMapping("movieList")
	public void movieList(Model model) {
		log.info("영화 리스트 페이지로 이동중입니다.");
		
		List<movieDTO> listDto = service.list();
		
		model.addAttribute("list",listDto);
		
	}
	@GetMapping("reserve")
	public void reserve() {
		log.info("영화 예매 페이지로 이동중입니다.");
	}
	@GetMapping("store")
	public void store() {
		log.info("상점으로 이동중입니다.");
	}
	
	
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
	@GetMapping("event")
	public void event() {
		log.info("이벤트로 이동중입니다.");
	}
	
	
	@GetMapping("selectSeat")
	public void selectSeat() {
		log.info("좌석선택 중..");
	}

	

	@PostMapping("/cscinsert")
	public String registerPost(CscDTO insertDto, RedirectAttributes rttr) {
		log.info("register 가져오기" + insertDto);
   
		// 첨부파일 확인하기
//		if(insertDto.getAttachList()!=null) {
//			insertDto.getAttachList().forEach(attach ->log.info(attach+""));
//		}

		cscService.register(insertDto);

		// log.info("bno"+insertDto.getBno());
		rttr.addFlashAttribute("result", insertDto.getCSC_BNO());
		return "redirect:/movie/csclist";
	}



	
	
	@GetMapping("movieRead")
	public void movieRead(int movieCD,Model model) {
		log.info("상세정보 페이지로 이동중입니다.");
		
		movieDTO movieDto = service.read(movieCD);
		
		model.addAttribute("movieDto", movieDto);
		
			
	}
	
	
	//로그인
	// 가입후 띄어주는 페이지
	@GetMapping("/signin")
	public void signin() {
		log.info("로그인 페이지 요청");
	}
	
		
	//loginPost(
//	@PostMapping("/signin")
//	public String loginPost(LoginDTO loginDto, HttpSession session) {
//		log.info("로그인 요청" + loginDto);
//		
//		loginDto = Uservice.login(loginDto);
//		
//		session.setAttribute("loginDto", loginDto);
//	
//		return "redirect:/"; //index로 보낼거얌
//	}
	
	
}
