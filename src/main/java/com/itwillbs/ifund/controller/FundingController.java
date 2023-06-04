package com.itwillbs.ifund.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.ifund.vo.ProjectListVO;
import com.itwillbs.ifund.service.FundingService;
import com.itwillbs.ifund.vo.RewardVO;

@Controller
public class FundingController {
	@Autowired
	private FundingService fundingService;
	
	@GetMapping("funding")
	public String funding(Model model, @RequestParam(defaultValue = "전체") String category, @RequestParam(defaultValue = "") String order) {
		List<ProjectListVO> projectDetailList = fundingService.selectFundingProject(category, order);
		model.addAttribute("projectDetailList", projectDetailList);
		
		List categoryList = fundingService.categoryList();
		model.addAttribute("categoryList", categoryList);
		return "funding/funding";
	}
	@GetMapping("detail")
	public String funding_detail(Model model, String num) {
		Map<String, Object> selectFundingDetail = fundingService.selectFundingDetail(Integer.parseInt(num));
		Map<String, Object> selectMaker = fundingService.selectMaker(Integer.parseInt(num));
		List<RewardVO> selectReward = fundingService.selectReward(Integer.parseInt(num));
		
		model.addAttribute("selectMaker", selectMaker);
		model.addAttribute("selectFundingDetail",selectFundingDetail);
		model.addAttribute("selectReward", selectReward);

		return "funding/funding_detail";
	}
	@GetMapping("comingsoon")
	public String comingsoon(Model model) {
		List categoryList = fundingService.categoryList();
		model.addAttribute("categoryList", categoryList);
		return "funding/comingsoon";
	}
	@GetMapping("rewardSelect")
	public String rewardSelect(Model model, String num) {
		List<RewardVO> selectReward = fundingService.selectReward(Integer.parseInt(num));
		System.out.println(selectReward);
		model.addAttribute("selectReward", selectReward);
		return "funding/rewardSelect";
	}
	@GetMapping("payment")
	public String payment() {
		return "funding/payment";
	}
	@GetMapping("preorder")
	public String preorder(Model model, @RequestParam(defaultValue = "") String category, @RequestParam(defaultValue = "") String order) {
		List<ProjectListVO> projectPreorderList = fundingService.selectPreorderProject(category, order);
		System.out.println(category + ", " + order);
		model.addAttribute("projectPreorderList", projectPreorderList);
		
		List categoryList = fundingService.categoryList();
		model.addAttribute("categoryList", categoryList);
		
		return "funding/preorder";
	}
}
