package com.itwillbs.ifund.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class NoticeController {
	@GetMapping("notice")
	public String notice() {
		return "notice/notice";
	}
	@GetMapping("noticeDetail")
	public String notice_Detail() {
		return "notice/notice_view";
	}
}
