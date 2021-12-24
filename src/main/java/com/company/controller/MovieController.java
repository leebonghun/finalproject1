package com.company.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/movie/*")
public class MovieController {
	@GetMapping("index")
	public void index() {
		log.info("메인 홈페이지 입니다");
		
	}
	
	@GetMapping("movieList")
	public void movieList() {
		log.info("영화 리스트 페이지로 이동중입니다.");
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
	@GetMapping("csclist")
	public void csc() {
		log.info("고객센터으로 이동중입니다.");
	}
	@GetMapping("cscinsert")
	public void cscinsert() {
		log.info("고객센터글작성으로 이동중입니다.");
	}
	@GetMapping("cscread")
	public void cscread() {
		log.info("고객센터글으로 이동중입니다.");
	}
	@GetMapping("selectSeat")
	public void selectSeat() {
		log.info("좌석선택 중..");
	}
	
}
