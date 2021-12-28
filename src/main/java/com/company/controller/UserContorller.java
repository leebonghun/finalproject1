package com.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.service.UserService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/signup/*")
public class UserContorller {
	
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
			rttr.addFlashAttribute("check", "false"); // => 주소줄에 보이지 않지만 잠시동안만 세셧ㄴ에 담아
			//return "step1"; => WEB-INF/views/step1.jsp
			return "redirect:/signup/step1";
		}
		return "signup/step2";
	}
		
	//중복 아이디 검사
	@ResponseBody 
	@PostMapping("/checkId")
	public String IdCheck(String userid) {
		log.info("중복 아이디 검사" + userid);
	
		if (service.dupId(userid)!=null) {
			return "false"; 
		}
		return "true"; 
	}
	 
	 
}
