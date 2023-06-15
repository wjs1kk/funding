package com.itwillbs.ifund.mapper;

import java.util.*;

import org.apache.ibatis.annotations.*;

import com.itwillbs.ifund.vo.MemberVO;

public interface MemberMapper {
	public int insertUser(MemberVO member);
	public MemberVO selectUser(String member_email);
	public String selectPasswd(String member_email);
	public String isAdmin(String member_email);
	public Map findUser(String member_email);
}
