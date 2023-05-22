package com.itwillbs.funding.mapper;

import com.itwillbs.funding.vo.MemberVO;

public interface MypageMapper {
	//0516수정
	public MemberVO selectUser(Integer member_idx);
	public String selectPasswd(Integer member_idx);
	public int updateUser(MemberVO memberVO);
}