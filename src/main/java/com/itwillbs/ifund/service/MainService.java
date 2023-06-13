package com.itwillbs.ifund.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.mapper.MainMapper;

@Service
public class MainService {
	@Autowired
	private MainMapper mapper;
//	06/13 최근본 프로젝트 관련
	public Map selectProject(int project_idx) {
		return mapper.selectProject(project_idx);
	}
//	06/13 최근본 프로젝트 관련 끝

}
