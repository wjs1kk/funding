package com.itwillbs.ifund.mapper;

import com.itwillbs.ifund.vo.MemberVO;

public interface MemberMapper {
	public int insertUser(MemberVO member);
	public MemberVO selectUser(String member_email);
	public String selectPasswd(String member_email);
	public String isAdmin(String member_email);
	public String selectEmailCheck(String member_email);
}
