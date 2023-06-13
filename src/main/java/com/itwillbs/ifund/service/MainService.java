package com.itwillbs.ifund.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.mapper.MainMapper;

@Service
public class MainService {
	
	@Autowired 
	private MainMapper mapper;

	public List slide() {
		return mapper.slide();
	}
	
	
}
