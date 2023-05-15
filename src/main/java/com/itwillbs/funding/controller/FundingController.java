package com.itwillbs.funding.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FundingController {
	@GetMapping("funding")
	public String funding() {
		return "funding/funding";
	}
	@GetMapping("fundingDetail")
	public String funding_detail() {
		return "funding/funding_detail";
	}
	@GetMapping("comingsoon")
	public String comingsoon() {
		return "funding/comingsoon";
	}
	@GetMapping("rewardSelect")
	public String rewardSelect() {
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
