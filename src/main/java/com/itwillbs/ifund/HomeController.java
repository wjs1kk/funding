package com.itwillbs.ifund;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.ifund.service.FundingService;
import com.itwillbs.ifund.vo.ProjectListVO;

@Controller
public class HomeController {
	@Autowired
	private FundingService fundingService;

	@GetMapping("/")
	public String home(Model model) {
		List<ProjectListVO> projectOpneList = fundingService.selectOpenProject();
		model.addAttribute("projectOpneList", projectOpneList);
		return "main";
	}
}
