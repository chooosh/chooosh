package com.side_on.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VoteController {
	
	/**
	 * 투표만들기
	 * @return 투표만들기
	 */
	@RequestMapping("/vote/pollInsert")
	public String pollInsert() {
	
		return "vote/pollInsert";
	}
	
	/**
	 * 투표 만드는 폼
	 * @return 투표 만드는 폼
	 */
	@RequestMapping("/vote/pollInsertProc")
	public String pollInsertProc() {
	
		return "vote/pollInsertProc";
	}
	
	/**
	 * 투표하기
	 * @return 투표하기
	 */
	@RequestMapping("/vote/pollForm")
	public String pollForm() {
	
		return "vote/pollForm";
	}
	
	/**
	 * 투표하기 폼
	 * @return 투표하기 폼
	 */
	@RequestMapping("/vote/pollFormProc")
	public String pollFormProc() {
	
		return "vote/pollFormProc";
	}
	
	/**
	 * 투표리스트
	 * @return 투표리스트
	 */
	@RequestMapping("/vote/pollList")
	public String pollList() {
	
		return "vote/pollList";
	}
	
	/**
	 * 투표 결과
	 * @return 투표 결과
	 */
	@RequestMapping("/vote/pollView")
	public String pollView() {
	
		return "vote/pollView";
	}
}
