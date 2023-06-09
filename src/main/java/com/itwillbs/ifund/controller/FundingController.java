package com.itwillbs.ifund.controller;

import java.util.ArrayList;
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
		List<RewardVO> selectReward = fundingService.selectReward(Integer.parseInt(num));
		Map<String, Object> fundingDetail = fundingService.fundingDetail(Integer.parseInt(num));
		
		model.addAttribute("selectReward", selectReward);
		model.addAttribute("fundingDetail", fundingDetail);
		
		System.out.println(fundingDetail);

		return "funding/funding_detail";
	}
	@GetMapping("comingsoon")
	public String comingsoon(Model model, @RequestParam(defaultValue = "") String category, @RequestParam(defaultValue = "") String order) {
		List comingsoonProject = fundingService.selectComingsoonProject(category, order);
		List categoryList = fundingService.categoryList();
		
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("comingsoon", comingsoonProject);
		return "funding/comingsoon";
	}
	@GetMapping("rewardSelect")
	public String rewardSelect(Model model, String num) {
		List<RewardVO> selectReward = fundingService.selectReward(Integer.parseInt(num));
		System.out.println(selectReward);
		model.addAttribute("selectReward", selectReward);
		return "funding/rewardSelect";
	}
	// 06-09 김동욱 결제페이지에 갈 때 리워드 정보 다시 가져와서 출력
	@GetMapping("payment")
	public String payment(@RequestParam Map map, Model model) {
		
		String[] reward_idx = ((String)map.get("reward_idx")).split(", ");
		String[] reward_quantity = ((String)map.get("reward_quantity")).split(", ");
		
		List rewardList = new ArrayList();
		
		
		for(int i = 0; i < reward_idx.length; i++) {
			Map rewardMap = fundingService.getPayReward(Integer.parseInt(reward_idx[i]));
			rewardMap.put("rewardQuantity", Integer.parseInt(reward_quantity[i]));
			rewardList.add(rewardMap);
		}
		
		
//		for(String reward_idx_split : reward_idx) {
//			System.out.println(Integer.parseInt(reward_idx_split));
//			Map rewardMap = fundingService.getPayReward(Integer.parseInt(reward_idx_split));
//			rewardMap.put("rewardQuantity", rewardList);
//			
//			rewardList.add(rewardMap);
//		}
		
		model.addAttribute("rewardList", rewardList);
		
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
