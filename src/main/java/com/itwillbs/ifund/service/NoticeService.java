package com.itwillbs.ifund.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.mapper.NoticeMapper;
import com.itwillbs.ifund.mapper.PreorderMapper;
import com.itwillbs.ifund.vo.ProjectListVO;

@Service
public class NoticeService {
	@Autowired
	private NoticeMapper mapper;

	public List getNoticeList(String searchText) {
		return mapper.getNoticeList(searchText);
	}

	public Map getNoticeDetail(int board_idx) {
		return mapper.getNoticeDetail(board_idx);
	}
	
	

}
