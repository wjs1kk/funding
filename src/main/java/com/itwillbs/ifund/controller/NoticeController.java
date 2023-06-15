package com.itwillbs.ifund.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.itwillbs.ifund.service.NoticeService;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@GetMapping("notice")
	public String notice(Model model,  String searchText) {
		List noticeList = noticeService.getNoticeList(searchText);
		model.addAttribute("noticeList", noticeList);
		return "notice/notice";
	}
	@GetMapping("noticeDetail")
	public String notice_Detail(int board_idx, Model model) {
		Map noticeMap = noticeService.getNoticeDetail(board_idx);
		model.addAttribute("noticeMap", noticeMap);
		return "notice/notice_view";
	}
}
