package com.company.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.company.domain.EventDTO;
import com.company.service.EventService;

import lombok.extern.log4j.Log4j2;


@Log4j2
@Controller
@RequestMapping("/movie/*")
public class EventController {
	
	@Autowired
	private EventService eventService;
	
	
	@GetMapping("/eventread")
	public void eventread(int EVENT_BNO, Model model) {
		log.info("이벤트로 이동중입니다.");
		
		EventDTO readdto = eventService.getRow(EVENT_BNO);
		
		model.addAttribute("readdto", readdto);
	}
	
}