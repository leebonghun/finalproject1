package com.company.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.domain.CscDTO;

import com.company.domain.MovieReplyDTO;
import com.company.domain.UserDTO;

import com.company.domain.LoginDTO;

import com.company.service.CscService;
import com.company.service.MovieReplyService;
import com.company.domain.movieDTO;
import com.company.service.MovieService;
import com.company.service.UserService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/movie/*")
public class MovieController {
	
	@Autowired
	private MovieReplyService replyService;
	
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
	@GetMapping("noticeList")
	public void notice() {
		log.info("공지사항으로 이동중입니다.");
	}
	@GetMapping("event")
	public void event() {
		log.info("이벤트로 이동중입니다.");
	}
	
	
	@GetMapping("selectSeat")
	public void selectSeat() {
		log.info("좌석선택 중..");
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
