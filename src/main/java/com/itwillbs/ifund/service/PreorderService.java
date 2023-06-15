package com.itwillbs.ifund.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.mapper.PreorderMapper;
import com.itwillbs.ifund.vo.ProjectListVO;

@Service
public class PreorderService {
	@Autowired
	private PreorderMapper mapper;

	public List<ProjectListVO> selectPreorderProject(String category, String order, String selectbox) {
		return mapper.selectPreorderProject(category, order, selectbox);
	}
}
