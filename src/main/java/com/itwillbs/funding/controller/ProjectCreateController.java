package com.itwillbs.funding.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProjectCreateController {
	@GetMapping("intro")
	public String intro(HttpSession session) {
		if(session.getAttribute("member_idx") == null) {
			return "redirect:/login";
		}
		return "projectcreate/intro";
	}
	@GetMapping("project/main")
	public String create_funding() {
		
		return "projectcreate/create_funding";
	}
	@GetMapping("project/plan")
	public String create_funding_plan_select() {
		return "projectcreate/create_funding_plan_select";
	}
//	프로젝트 정보
	@GetMapping("project/screening")
	public String create_funding_project_info() {
		return "projectcreate/create_funding_project_info";
	}
	@GetMapping("project/makerInfo")
	public String create_funding_maker_Info() {
		return "projectcreate/create_funding_maker_Info";
	}
	@GetMapping("project/contractInfo")
	public String create_funding_contract_Info() {
		return "projectcreate/create_funding_contract_Info";
	}
	@GetMapping("project/story")
	public String create_funding_project_story() {
		return "projectcreate/create_funding_project_story";
	}
	@GetMapping("project/policy")
	public String create_funding_project_policy() {
		return "projectcreate/create_funding_project_policy";
	}
	@GetMapping("project/baseinfo")
	public String create_funding_project_baseInfo() {
		return "projectcreate/create_funding_project_baseInfo";
	}
}
