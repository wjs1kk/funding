package com.itwillbs.funding.mapper;

import java.util.List;

import com.itwillbs.funding.vo.MemberVO;
import com.itwillbs.funding.vo.PointVO;

public interface MypageMapper {
	//0516수정
	public MemberVO selectUser(Integer member_idx);
	public String selectPasswd(Integer member_idx);
	public int updateUser(MemberVO memberVO);
	public List<PointVO> selectPoint(Integer member_idx);
	
}
