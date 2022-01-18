package com.company.controller;

import java.util.Random;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	 
	@Autowired
	private JavaMailSender mailSender;
	
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
	
	 /* 이메일 인증 */
    @RequestMapping(value="/mailCheck", method=RequestMethod.GET)
    @ResponseBody
    public String mailCheckGET(String email) throws Exception{
        
        /* 뷰(View)로부터 넘어온 데이터 확인 */
        log.info("이메일 데이터 전송 확인");
        log.info("인증번호 : " + email);

        /* 인증번호(난수) 생성 */
        Random random = new Random();
        int checkNum = random.nextInt(888888) + 111111;
        log.info("인증번호 " + checkNum);
        
        /* 이메일 보내기 */
       
        String toMail = email;
        String title = "회원가입 인증 이메일 입니다.";
        String content = 
                "홈페이지를 방문해주셔서 감사합니다." +
                "<br><br>" + 
                "인증 번호는 " + checkNum + "입니다." + 
                "<br>" + 
                "해당 인증번호를 인증번호 확인란에 기입하여 주세요.";
        

        try {
            
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper helper = new MimeMessageHelper(message, true, "utf-8");
            helper.setTo(toMail);
            helper.setSubject(title);
            helper.setText(content);
            mailSender.send(message);
            
        }catch(Exception e) {
            e.printStackTrace();
        }
        
        String num = Integer.toString(checkNum);            
        return num;
        
    }
	
	 
}

