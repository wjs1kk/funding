package com.itwillbs.ifund.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwillbs.ifund.mapper.MemberMapper;
import com.itwillbs.ifund.vo.MemberVO;

@Service
public class MemberService {
	@Autowired
	private MemberMapper mapper;
	
	public int insertUser(MemberVO member) {
		return mapper.insertUser(member);
	}
	public MemberVO selectUser(String member_email) {
		return mapper.selectUser(member_email)!= null ? mapper.selectUser(member_email) : null;
	}
	public String selectPasswd(String member_email) {
		return mapper.selectPasswd(member_email);
	}
	public String isAdmin(String member_email) {
		return mapper.isAdmin(member_email);
	}
}
