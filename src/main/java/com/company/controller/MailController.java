package com.company.controller;

import javax.mail.internet.MimeMessage;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller

public class MailController {
	@Autowired
	private JavaMailSender mailSender;
	// mailSend 코드

	@RequestMapping(value = "/mail/mailSend", method = RequestMethod.POST)
	public String mailSend(String name, String last_name, String email, String phone,
			String message) {
		try {
			MimeMessage mimeMessage = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(mimeMessage, true, "UTF-8");

			
			// 메일서버 사용하는 아이디를 작성하면됨
			messageHelper.setTo(email); // 받는사람 이메일
			messageHelper.setSubject("[포트폴리오] 안녕하세요 저는" + name + last_name + "입니다.");// 메일제목
			messageHelper.setText(message + " 연락처는 " + phone + "입니다. Email은 " + email + "입니다."); // 메일 내용 
																									
			mailSender.send(mimeMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "redirect:/";

	}
	
	/*
	 * @RequestMapping(value = "/mail/mailSend2", method = RequestMethod.POST)
	 * public String mailSend2(String user_id, String CSC_TITLE, String
	 * CSC_EMAIL,int CSC_BNO, String message) { try { MimeMessage mimeMessage =
	 * mailSender.createMimeMessage(); MimeMessageHelper messageHelper = new
	 * MimeMessageHelper(mimeMessage, true, "UTF-8");
	 * 
	 * 
	 * // 메일서버 사용하는 아이디를 작성하면됨 messageHelper.setTo(CSC_EMAIL); // 받는사람 이메일
	 * messageHelper.setSubject(user_id +"님 안녕하세요~!  " +"MMB 고객센터글 : "+CSC_TITLE
	 * +"에 답변이 완료되었습니다.");// 메일제목
	 * messageHelper.setText("안녕하세요MMB입니다. 현재 고객님의 고객센터글 번호:  "+CSC_BNO+"  제목:  "
	 * +CSC_TITLE+"에 대한 답변이 완료되었습니다." +
	 * "자세한 내용은  홈페이지의 -> 마이페이지 -> 내 문의 -> 내 고객센터 글 목록에서 확인부탁드립니다. " +
	 * "더욱 더 노력하는 BBM이 되도록 노력하겠습니다. 감사합니다."); // 메일 내용
	 * 
	 * mailSender.send(mimeMessage); } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return "redirect:/";
	 * 
	 * }
	 */
	
	
	
	
	
	

	/*
	 * private String from = "보내는사람"; private String subject = "메일제목 (생략가능)";
	 */

	/*
	 * @RequestMapping(value = "/mail") public String sendMail() { try { MimeMessage
	 * message = mailSender.createMimeMessage(); MimeMessageHelper messageHelper =
	 * new MimeMessageHelper(message, true, "UTF-8"); messageHelper.setTo("받는사람");
	 * messageHelper.setText("메일본문"); messageHelper.setFrom(from);
	 * messageHelper.setSubject(subject); // 메일제목은 생략이 가능하다
	 * mailSender.send(message); } catch (Exception e) { System.out.println(e); }
	 * return "Sucess"; }
	 */

}
