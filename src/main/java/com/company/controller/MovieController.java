package com.company.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.domain.Criteria;

import com.company.domain.LoginDTO;
import com.company.domain.UserDTO;
import com.company.service.CscService;


import com.company.service.MovieReplyService;
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
	private MovieReplyService replyService;

	@Autowired
	private NoticeService noticeService;
	
	@Autowired
	private CscService cscService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MovieService service;
	
	

	
	@GetMapping("index")
	public void index() {
		log.info("메인 홈페이지 입니다");
		
	}
	
	@GetMapping("movieList")
	public void movieList(Model model,Criteria cri) {
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
	
	
	@GetMapping("eventlist")
	public void event() {
		log.info("이벤트로 이동중입니다.");
	}
	
	
	@GetMapping("selectSeat")
	public void selectSeat() {
		log.info("좌석선택 중..");
	}

	
	@GetMapping("movieRead")
	public void movieRead(int movieCD,@ModelAttribute("cri") Criteria cri,Model model) {
		log.info("상세정보 페이지로 이동중입니다.");
		
		movieDTO movieDto = service.read(movieCD);
		
		log.info("data"+movieDto);
		
		model.addAttribute("movieDto", movieDto);
		
			
	}
	
	//로그인
	@GetMapping("/signin")
	public void signin() {
		log.info("로그인 페이지 요청");
	}
	
	//회원탈퇴
	@GetMapping("/userleave")
	public void leaveGet() {
		log.info("회원 탈퇴 페이지 요청");
	}
	
	@PostMapping("/userleave")
	public String leavePost(UserDTO leaveDto, HttpSession session,RedirectAttributes rttr) {
		log.info("탈퇴 요청"+leaveDto);
		// userid, password
		UserDTO userDto = new UserDTO();
		
		
		String truePw = userDto.getUser_password();
	
			
		
		if (truePw == leaveDto.getUser_password() && userService.leave(leaveDto)) {
			//세션해제
			session.invalidate();
			return "redirect:/movie/index";
			
		} 
			return "redirect:/movie/userleave"; //탈퇴가 실패시
		
		
	}
	

	
}
