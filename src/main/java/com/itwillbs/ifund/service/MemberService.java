package com.itwillbs.ifund.service;

import java.util.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

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
	public Map findUser(String member_email) {
		return mapper.findUser(member_email);
	}
	// 이메일 발송을 위한 아이
	public void updatePass(String member_email, String securePasswd) {
		mapper.updatePass(member_email, securePasswd);
	}
	public String memberEmailCheck(String member_email) {
		return mapper.selectEmailCheck(member_email);
	}
}
