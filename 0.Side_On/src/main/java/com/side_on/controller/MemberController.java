package com.side_on.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.side_on.dto.Member;
import com.side_on.dto.Notice;
import com.side_on.service.MemberService;
import com.side_on.service.NoticeService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class MemberController {

	@Autowired
	public NoticeService noticeService;
	
	@Autowired
	public MemberService memberService;
	
	@RequestMapping("/member/loginForm")
	public String loginForm() {
		log.debug("loginForm() Load :: ");
		return "member/loginForm";
	}
	
	@RequestMapping("/member/login")
	public String login(String memberId, String memberPw, HttpSession session) {
		log.debug("login user :: " + memberId + ", " + memberPw);

		String grade = memberService.login(memberId, memberPw);
		log.debug("login grade :: " + grade);

		Member dto = memberService.loginToMember(memberId, memberPw);		
		log.debug("dto :: " + dto);
		
		if(grade != null && dto != null) {
			session.setAttribute("memberId", memberId);
			session.setAttribute("grade", grade);
			session.setAttribute("dto", dto);
			if(grade.equals("A")) {
				log.debug("login admin Success :: ");
				return "admin/dashboard";
			} else {
				log.debug("login user Success :: ");
				return "main";
			}
		} else {
			log.debug("login Fail :: ");
			return "member/loginForm";
		}
	}

	@RequestMapping("/admin/dashboard")
	public String dashboard(Model model) {
		List<Notice> noticeList = noticeService.noticeList();
		model.addAttribute("noticeList", noticeList);
		return "admin/dashboard";
	}
	
	@RequestMapping("/member/deleteForm")
	public String deleteForm() {
		log.debug("deleteForm() Load :: ");
		return "member/deleteForm";
	}
	
	@RequestMapping("/member/deleteMember")
	public String deleteMember(String memberId, String memberPw) {
		log.debug("deleteMember Load :: ");
		log.debug(memberId + ", " + memberPw);
		boolean result = memberService.deleteMember(memberId, memberPw);
		if(result == true) {
			log.debug("deleteMember Success :: ");
			return "member/loginForm";
		} else {
			log.debug("deleteMember Fail :: ");
			return "member/deleteForm";
		}
	}
	
	@RequestMapping("/member/register")
	public String register() {
		log.debug("### register load :: ");
		return "member/register";
	}
	
	@RequestMapping("/member/registerDone")
	public String registerDone(Member dto, Model model) {
		log.info("### register :: ");
		log.debug("### " + dto);
		
		int result = memberService.addMember(dto);
		if (result == 1) {
			model.addAttribute("message", "[??????????????????] ????????? ??? ????????? ???????????????");
			return "member/registerDone";
		} else {
			model.addAttribute("message", "[??????????????????] ?????? ????????? ?????? ??????????????? ????????????.");
			return "main";
		}
	}
	
	@RequestMapping("/member/test")
	public String test() {
		log.debug("### test :: ");
		return "member/test";
	}

//	@RequestMapping(value = "/member/idCheck",  method = RequestMethod.POST)
//	public @ResponseBody HashMap<String, Object> idCheck(Model model, @RequestParam String memberId) {
//		log.info("### ????????? :: " + memberId);
//		 return memberService.idCheck(memberId, model);
//		 
//	}
	
	@RequestMapping("/member/idCheck")
	public String idCheck() {
		log.debug("### idCheck :: ");
		return "member/idCheck";
	}
	 
	@RequestMapping("/member/idCheckProc")
	public String idCheckProc() {
		log.debug("### idCheckProc :: ");
		return "member/idCheckProc";
	}
}
