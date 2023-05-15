package com.itwillbs.funding.mapper;

import com.itwillbs.funding.vo.MemberVO;

public interface MemberMapper {
	public int insertUser(MemberVO member);
	public MemberVO selectUser(String member_email);
	public String selectPasswd(String member_email);
	public String isAdmin(String member_email);
}
