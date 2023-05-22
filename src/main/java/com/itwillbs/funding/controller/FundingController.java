package com.itwillbs.funding.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.funding.service.FundingService;
import com.itwillbs.funding.vo.ProjectListVO;
import com.itwillbs.funding.vo.ProjectVO;
import com.itwillbs.funding.vo.RewardVO;

@Controller
public class FundingController {
	@Autowired
	private FundingService fundingService;
	
	@GetMapping("funding")
	public String funding(Model model) {
		List<ProjectListVO> projectDetailList = fundingService.selectFundingProject();
		model.addAttribute("projectDetailList", projectDetailList);
		
		return "funding/funding";
	}
	@GetMapping("detail")
	public String funding_detail(Model model, String num) {
		Map<String, Object> selectFundingDetail = fundingService.selectFundingDetail(Integer.parseInt(num));
		Map<String, Object> selectMaker = fundingService.selectMaker(Integer.parseInt(selectFundingDetail.get("member_idx").toString()));
		List<RewardVO> selectReward = fundingService.selectReward(Integer.parseInt(num));
		model.addAttribute("selectMaker", selectMaker);
		model.addAttribute("selectFundingDetail",selectFundingDetail);
		model.addAttribute("selectReward", selectReward);

		return "funding/funding_detail";
	}
	@GetMapping("comingsoon")
	public String comingsoon() {
		return "funding/comingsoon";
	}
	@GetMapping("rewardSelect")
	public String rewardSelect(Model model, String num) {
		List<RewardVO> selectReward = fundingService.selectReward(3);
		model.addAttribute("selectReward", selectReward);
		System.out.println(selectReward.get(0).getProject_idx());
		return "funding/rewardSelect";
	}
	@GetMapping("payment")
	public String payment() {
		return "funding/payment";
	}
	@GetMapping("preorder")
	public String preorder() {
		return "funding/preorder";
	}
}
