package com.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.domain.UserDTO;
import com.company.service.UserService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/signup/*")
public class UserContorller {
	
	@Autowired
	private UserService service;
	 
	 @GetMapping("step1")
	 public void registGet() {
		 log.info("step1 요청");
	 }
	 
	// step2()
	@PostMapping("step2")
	public String step2(boolean agree, RedirectAttributes rttr) {
		// /register/step1
		log.info("step2 요청..."+agree);

		if(!agree) {
			//step1 페이지 보여주기
			rttr.addFlashAttribute("check", "false");
			//return "step1"; => WEB-INF/views/step1.jsp
			return "redirect:/signup/step1";
		}
		return "signup/step2";
	}
		
	//중복 아이디 검사
	@ResponseBody 
	@PostMapping("checkId")
	public String IdCheck(String userid) {
		log.info("중복 아이디 검사" + userid);
	
		if (service.dupId(userid)!=null) {
			return "false"; 
		}
		return "true"; 
	}
	
	@PostMapping("step3")
	public String step2Post(UserDTO userDto) {
		log.info("회원가입 요청..."+userDto);
		
		
		//중복아이디 체크
		try {
			if(!service.register(userDto)) {
				//회원가입 페이지로 이동
				return "/signup/step2";
			}
			
		} catch (Exception e) {
			return "/signup/step2";
		}

		return "redirect:/movie/index";
	}


	
	
	@GetMapping(value= {"/step2", "/step3"}) 
	public String handleGet() {
		log.info("/step2, /step3 직접 요청..." );
		
		return "redirect:/movie/index";
	}
	
	
	
	 
}
