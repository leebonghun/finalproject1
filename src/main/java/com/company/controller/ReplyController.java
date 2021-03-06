package com.company.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.company.domain.Criteria;
import com.company.domain.MovieReplyDTO;
import com.company.domain.ReplyPageDTO;
import com.company.service.MovieReplyService;
import com.company.service.MovieService;

import lombok.extern.log4j.Log4j2;

@Log4j2
@RestController
@RequestMapping("/replies")
public class ReplyController {

	@Autowired
	private MovieReplyService service;
	
	@PreAuthorize("isAuthenticated()")
	@PostMapping("/new")
	public ResponseEntity<String> create(@RequestBody MovieReplyDTO insertDto) {
		log.info("댓글 입력..");

		return service.insertReply(insertDto) ? new ResponseEntity<String>("success", HttpStatus.OK) :

				new ResponseEntity<String>("fail", HttpStatus.BAD_REQUEST);
	}
	

	@GetMapping("/{replyCd}")
	public ResponseEntity<MovieReplyDTO> read(@PathVariable int replyCd,Model model) {
		log.info("dsad" + replyCd);
	
		
	
		
		return new ResponseEntity<MovieReplyDTO>(service.getRow(replyCd), HttpStatus.OK);

	}
	


	
	//페이지 나누기 댓글 처리 
	@GetMapping("/pages/{movieCD}/{page}")
	public ResponseEntity<ReplyPageDTO> list(@PathVariable int movieCD,@PathVariable int page) {
		log.info("댓글전체가져오기");
		
		Criteria cri = new Criteria(page,10);
		
		return new ResponseEntity<ReplyPageDTO>(service.list(cri,movieCD), HttpStatus.OK);
		
	}
	@PreAuthorize("principal.username == #updateDto.replyer")
	@PutMapping("/{replyCd}")
	public ResponseEntity<String> update(@PathVariable int replyCd, @RequestBody MovieReplyDTO updateDto,Model model) {
		
		// updateDto 세팅하기
		updateDto.setReplyCd(replyCd);
		
		model.addAttribute("updateDto",updateDto);
		return service.updateReply(updateDto) ? new ResponseEntity<String>("success", HttpStatus.OK)
				: new ResponseEntity<String>("fail", HttpStatus.BAD_REQUEST);
	}
	@PreAuthorize("principal.username == #reply.replyer")
	@DeleteMapping("/{replyCd}")
	public ResponseEntity<String> delete(@PathVariable int replyCd,@RequestBody MovieReplyDTO reply) {

		return service.deleteReply(replyCd) ? new ResponseEntity<String>("success", HttpStatus.OK)
				: new ResponseEntity<String>("fail", HttpStatus.BAD_REQUEST);
	}

	
}
