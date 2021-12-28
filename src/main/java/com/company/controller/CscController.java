package com.company.controller;


import java.util.List;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.company.domain.CscDTO;
import com.company.service.CscService;

import com.company.domain.movieDTO;
import com.company.service.MovieService;


import lombok.extern.log4j.Log4j2;

@Log4j2
@Controller
@RequestMapping("/movie/*")
public class CscController {
	
	@Autowired
	private CscService cscService;
	
		
	
	
	
	
	
	
	@GetMapping("csclist")
	public void csclist(Model model) {
		log.info("고객센터으로 이동중입니다.");
		
		List<CscDTO> list = cscService.getList();
		log.info(""+list);
		
		model.addAttribute("list", list);
	}
	@GetMapping("cscinsert")
	public void cscinsert() {
		log.info("고객센터글작성으로 이동중입니다.");
		
	}
	
	@PostMapping("/cscinsert")
	public String registerPost(CscDTO insertDto, RedirectAttributes rttr) {
		log.info("register 가져오기" + insertDto);

		// 첨부파일 확인하기
//		if(insertDto.getAttachList()!=null) {
//			insertDto.getAttachList().forEach(attach ->log.info(attach+""));
//		}

		cscService.register(insertDto);

		// log.info("bno"+insertDto.getBno());
		rttr.addFlashAttribute("result", insertDto.getCSC_BNO());
		return "redirect:/movie/csclist";
	}
	
	@GetMapping("cscread")
	public void cscread() {
		log.info("고객센터글으로 이동중입니다.");
		
	}
	
	
	
	
	
}
