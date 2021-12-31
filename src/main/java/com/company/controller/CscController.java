package com.company.controller;


import java.util.List;






import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import com.company.domain.Criteria;
import com.company.domain.CscDTO;
import com.company.service.CscService;



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
	
//	@PostMapping("/cscinsert")
//	public String cscinsertPost(CscDTO insertDto, RedirectAttributes rttr) {
//		log.info("register 가져오기" + insertDto);
//
//		// 첨부파일 확인하기
////		if(insertDto.getAttachList()!=null) {
////			insertDto.getAttachList().forEach(attach ->log.info(attach+""));
////		}
//
//		cscService.register(insertDto);
//
//		// log.info("bno"+insertDto.getBno());
//		rttr.addFlashAttribute("result", insertDto.getCSC_BNO());
//		return "redirect:/movie/csclist";
//	}
	
	@PostMapping("/cscinsert")
	public String cscinsertPost(CscDTO insertDto) {
		log.info("register 가져오기" + insertDto);

		// 첨부파일 확인하기
//		if(insertDto.getAttachList()!=null) {
//			insertDto.getAttachList().forEach(attach ->log.info(attach+""));
//		}

		cscService.register(insertDto);

		// log.info("bno"+insertDto.getBno());
		
		return "redirect:/movie/csclist";
	}
	
	@GetMapping({ "cscread", "cscmodify" })
	public void cscread(int CSC_BNO, Model model) {
		log.info("고객센터글으로 이동중입니다.");


		CscDTO readdto = cscService.getRow(CSC_BNO);

		model.addAttribute("readdto", readdto);
		
	}
	
	
	@PostMapping("cscmodify")
	public String modify(CscDTO modifyDto) {
		log.info("게시글 수정" + modifyDto );

		
		
		
		
		// 수정완료후 list로 이동
		cscService.update(modifyDto);

		
		

		
		return"redirect:/movie/csclist";
	}
	
	@PostMapping("cscread")
	public String modify2(CscDTO modifyDto2) {
		log.info("답글 입력" + modifyDto2 );

		
		
		
		
		// 수정완료후 list로 이동
		cscService.update(modifyDto2);

		
		

		
		return"redirect:/movie/csclist";
	}
	
	

	
	
	
	
	@PostMapping("remove")
	public String removePost(int CSC_BNO ) {
		log.info("게시글 삭제" + CSC_BNO);

//		// 첨부파일 목록 얻어오기
//		List<AttachFileDTO> attachList = service.findByBno(bno);
		
		cscService.remove(CSC_BNO);
		// 수정삭제 후 리스트로 이동
//		if (cscService.remove(CSC_BNO)) {
			//첨부 폴더 파일 삭제
//			deleteFiles(attachList);
//			// 페이지 나누기 값
//			rttr.addAttribute("pageNum", cri.getPageNum());
//			rttr.addAttribute("amount", cri.getAmount());
//
//			// 검색 값
//			rttr.addAttribute("type", cri.getType());
//			rttr.addAttribute("keyword", cri.getKeyword());
//
//			rttr.addFlashAttribute("result", "success");
//		}

		return "redirect:/movie/csclist";
	}
	
	
	
}
