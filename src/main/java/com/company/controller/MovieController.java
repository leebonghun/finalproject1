package com.company.controller;


import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

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

import com.company.domain.PwdDTO;
import com.company.domain.ReserveDTO;
import com.company.domain.UserDTO;
import com.company.service.CscService;


import com.company.service.MovieReplyService;
import com.company.service.MovieReserveService;
import com.company.domain.movieDTO;
import com.company.domain.ticketDTO;
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
	
	@Autowired
	private MovieReserveService reservice;

	
	

	
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
	public void reserve(Model model,int movieCD) {
		log.info("영화 예매 페이지로 이동중입니다. "+movieCD);
		movieDTO movieDto = service.read(movieCD);
		
		List<ReserveDTO> listDto = reservice.reserveRead(movieCD);
		model.addAttribute("movieDto", movieDto);
		model.addAttribute("list1",listDto);
		
	}

	@GetMapping("mybbm")
	public void mybbm(Model model, Principal username) {
		
		List<ticketDTO> mylist = reservice.getmyList(username);
		
		log.info("나의 예매정보보러가기~"+mylist);
		model.addAttribute("mylist",mylist);
		
	}
	@PreAuthorize("isAuthenticated()")
	@PostMapping("mybbm")
	public String mybbmread(Model model,ticketDTO insertDto) {
		
		if(!reservice.insert(insertDto)) {
			return "redirect:/movie/movieList";
		}
		return "redirect:/movie/mybbm";
		
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
	public void signin(String error) {		
//
		log.info("로그인 페이지 요청"+error);
	}
	
	
	@GetMapping("/login-error")
	public String loginError(Model model) {
		model.addAttribute("error", "로그인 정보가 맞지 않습니다");
		return "/movie/signin";
	}
	
	//회원탈퇴
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/userleave")
	public void leaveGet() {
		log.info("회원 탈퇴 페이지 요청");
	}
	@PostMapping("/userleave")
	public String leavePost(UserDTO leaveDto, HttpSession session,RedirectAttributes rttr) {
		log.info("탈퇴 요청 "+leaveDto);
		// userid, password		
		
		if (userService.leave(leaveDto)) {
			//세션해제
			session.invalidate();
			return "redirect:/movie/index";
		} 
		return "redirect:/movie/userleave"; //탈퇴가 실패시
	}
	
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/mypage")
	public void mypage() {
		log.info("마이페이지");
	}
	
	//비밀번호 변경
	@PreAuthorize("isAuthenticated()")
	@GetMapping("/pwdmodify")
	public void changePwd() {
		log.info("pwdModify 요청");
	}
	@PostMapping("/pwdmodify")
	public String changePwdPost(PwdDTO pwdDto, HttpSession session) {
		log.info("비밀번호 변경 요청 "+pwdDto);
		//userid 가져오기
		
		if(userService.modify(pwdDto)){
			//성공시
			//비밀번호 변경이 되면 기존의 세션 해제
			session.invalidate();
			return "redirect:/movie/signin";
		}
		//실패시
		return "redirect:/movie/pwdmodify";
	}
	
	
}
