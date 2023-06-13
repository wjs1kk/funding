package com.itwillbs.ifund.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.ui.Model;

import com.itwillbs.ifund.vo.CouponVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.NoticeVO;
import com.itwillbs.ifund.vo.ProjectVO;
import com.itwillbs.ifund.vo.RepresentativeVO;

public interface AdminMapper {
	// 2023-05-15 박경은 - 관리자 회원목록 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public List<MemberVO> memberList(@Param("searchKeyword") String searchKeyword, @Param("startRow")int startRow, @Param("listLimit")int listLimit);
	// 2023-05-15 박경은 - 관리자 회원목록 수 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public int selectMemberListCount(@Param("searchKeyword") String searchKeyword);
	// 2023-05-16 박경은 - 관리자 회원 조회
	public MemberVO selectMember(int member_idx);
	public Map selectRep(RepresentativeVO rep);
	// 2023-06-07 박경은 - 쿠폰관리 목록
	public List selectCouponList(CouponVO coupon);
	public CouponVO selectCoupon(@Param("coupon_idx") String coupon_idx);
	public int updateCoupon(CouponVO coupon);
	// 2023-05-25 박경은 - 관리자 공지사항목록 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public List<NoticeVO> noticeList(@Param("searchKeyword") String searchKeyword, @Param("startRow")int startRow, @Param("listLimit")int listLimit);
	// 2023-05-25 박경은 - 관리자 공지사항목록 수 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public int selectNoticeListCount(@Param("searchKeyword") String searchKeyword);
	// 2023-05-25 박경은 - 관리자 공지사항 조회
	public NoticeVO selectNotice(int board_idx);
	// 2023-05-25 박경은 - 관리자 공지사항 작성
	public int insertNotice(NoticeVO notice);
	// 2023-05-25 박경은 - 관리자 공지사항 수정
	public int noticeDetail(NoticeVO notice);
	// 2023-05-31 박경은 - 관리자 공지사항 수정 파일삭제
	public int deleteNoticeFile(int board_idx);
	// 2023-05-25 박경은 - 관리자 공지사항 삭제
	public int deleteNotice(int board_idx);
	// 2023-05-16 박경은 - 관리자 보도자료목록 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public List<NoticeVO> newsList(@Param("searchKeyword") String searchKeyword, @Param("startRow")int startRow, @Param("listLimit")int listLimit);
	// 2023-05-16 박경은 - 관리자 보도자료목록 수 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public int selectNewsListCount(@Param("searchKeyword") String searchKeyword);
	// 2023-05-16 박경은 - 관리자 보도자료 조회
	public NoticeVO selectNews(int board_idx);
	// 2023-05-25 박경은 - 관리자 보도자료 작성
	public int insertNews(NoticeVO news);
	// 2023-05-16 박경은 - 관리자 보도자료 수정
	public int newsDetail(NoticeVO news);
	// 2023-06-01 박경은 - 관리자 보도자료 수정 파일삭제
	public int deleteNewsFile(int board_idx);
	// 2023-05-22 박경은 - 관리자 보도자료 삭제
	public int deleteNews(@Param("board_idx")int board_idx);
		
		
		// ----------------------------------------
	
	// 05-16 은산 프로젝트 목록
	List<Map<String, Object>> selectAllProjectList();
	// 05-17 은산 승인대기 목록
	List selectPendingList(ProjectVO project);
	// 05-18 은산 프로젝트 승인
	public int updateApproveList(ProjectVO project);
	// 05-21 은산 프로젝트 상세
	Map selectDetailList(ProjectVO project);
	// 05-25 은산 프로젝트 승인 거부
	public int updateApproveDenied(ProjectVO project);
	// 은산 승인 내역
	public void insertApproveHistory(Model model);
	// 은산 프로젝트 승인 시 프로젝트 디테일 생성
	public void insertProjectDetail(Model model);
	// 은산 프로젝트 필터링
	public List selectSortedProjectList(String label);
	// 
	public int updateProjectStatus(@Param("projectIdx") Integer projectIdx, @Param("projectStatus")String projectStatus);
	public List selectRewardList(ProjectVO project);


}
