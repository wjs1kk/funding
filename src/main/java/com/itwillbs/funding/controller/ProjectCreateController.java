package com.itwillbs.funding.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.funding.service.MemberService;
import com.itwillbs.funding.service.ProjectCreateService;

@Controller
public class ProjectCreateController {
	
	//05-16 김동욱 projectCreateService 추가
	@Autowired
	private ProjectCreateService projectCreateService;
	
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
	// 05-16 김동욱 리워드 설계 페이지 추가
	@GetMapping("project/reward")
	public String create_funding_project_reward() {
		return "projectcreate/create_funding_project_reward";
	}
	//05-16 김동욱 top.jsp에서 프로젝트 만들기 버튼 누를 시 새로운 프로젝트 생성
	@GetMapping("projectCreate")
	public String createFundingProject(HttpSession session) {
		int member_idx = Integer.parseInt(session.getAttribute("member_idx").toString());
		System.out.println("member_idx : " + member_idx);
		int insertCount = projectCreateService.createFundingProject(member_idx);
		return "redirect:/intro";
	}
	
}
