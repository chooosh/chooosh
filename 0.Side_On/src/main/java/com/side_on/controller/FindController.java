package com.side_on.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.side_on.dto.Find;
import com.side_on.service.FindService;


import lombok.extern.slf4j.Slf4j;


@Controller
@Slf4j
public class FindController {
	
	@Autowired
	public FindService findService;
	
	
	/** 목록 페이지 */
	@RequestMapping("/find/list")
	public String FindMemberList(Model model) {
		log.info("### findMember List :: ");
		
		List<Find> list = findService.findMemberList();
		model.addAttribute("list", list);
		
		log.debug("### list :: " + list);
		return "find/list";
	}
	
	
	@RequestMapping(value = "/find/test", method = RequestMethod.GET)
	public String findMemberTest(Model model) throws Exception {
		List<Find> testList = findService.findMemberTest();
		model.addAttribute("testList", testList);
		return "find/test";
	}
	
	
	/** 글 작성 페이지 
	@RequestMapping("/find/form")
	public String FindMemberForm() {
		return "find/form";
	}
	*/
	
	/** 글 상세 페이지
	@RequestMapping("/find/detail")
	public String FindMemberDetail() {
		return "find/detail";
	}
	*/
	
	/** 게시글 상세조회 화면  */
	@RequestMapping("/find/detail")
	public String FindMemberDetail(String find_writer, Model model) {
		log.info("### FindMemberDetail :: ");
		
		Find dto = findService.findMemberDetail(find_writer);
		
		model.addAttribute("dto", dto);
		return "find/detail";
	}
	
	/** 게시글 삭제 */
	@RequestMapping("/find/detail/delete")
	public String FindMemberDelete(int find_no, Model model) {
		log.info("### FindMember Delete :: ");
		int result = findService.findMemberDelete(find_no);
		if (result == 1) {
			return "find/deleteDone";
		} else {
			model.addAttribute("message", "삭제되지 않았습니다. 다시 확인해주세요.");
			return "find/error";
		}
	}
	
	/** 게시글 삭제 후 이동 페이지 */
	@RequestMapping("/find/detail/deleteDone")
	public String DeleteDone() {
		return "find/deleteDone";
	}
	
	
		
	/** 게시글 수정화면 
	@RequestMapping("/find/detail/update")
	public String FindMemberUpdate(String find_no, Model model) {
		log.debug("### FindMember Update :: ");
		Find dto = findService.FindMemberDetail(find_no);
		model.addAttribute("dto", dto);
		return "find/form";
	}
	*/
	
	/** 게시글 수정 */
	@RequestMapping("/find/detail/update")
	public String FindMemberUpdate(Find dto, Model model) {
			int result = findService.updateFindMember(dto);
			if (result == 1) {
				return "find/detail";
			} else {
				model.addAttribute("message", "수정 실패");
				return "find/error";
			}
		}
	
	
	
	/** 게시글 작성화면 */
	@RequestMapping("/find/form")
	public String findMemberForm() {
		log.info("### findMember form ::");
		return "find/form";
	}

    /** 게시글 작성 */
	@RequestMapping("/find/formDone")
	public String findMemberWrite(Find dto, Model model) {
		log.info("### findMember Write :: ");
		log.debug("###" + dto);
		
		int result = findService.insertFindMember(dto);
			if (result == 1) {
				return "find/formDone";
			} else {
				model.addAttribute("message", "작성 실패");
				return "find/list";
			}
		}
	
}
