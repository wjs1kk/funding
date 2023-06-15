package com.itwillbs.ifund.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.itwillbs.ifund.mapper.AdminMapper;
import com.itwillbs.ifund.vo.AccountVO;
import com.itwillbs.ifund.vo.CalculateVO;
import com.itwillbs.ifund.vo.CouponVO;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.NoticeVO;
import com.itwillbs.ifund.vo.ProjectVO;
import com.itwillbs.ifund.vo.RepresentativeVO;

@Service
public class AdminService {
	@Autowired
	private AdminMapper mapper;

	// 2023-05-15 박경은 - 관리자 회원목록 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public List<MemberVO> memberList(String searchKeyword, int startRow, int listLimit) {
		return mapper.memberList(searchKeyword, startRow, listLimit);
	}

	// 2023-05-15 박경은 - 관리자 회원목록 수 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public int selectMemberListCount(String searchKeyword) {
		return mapper.selectMemberListCount(searchKeyword);
	}

	// 2023-05-16 박경은 - 관리자 회원 조회
	public MemberVO selectMember(int member_idx) {
		return mapper.selectMember(member_idx);
	}

	public Map selectRep(RepresentativeVO rep) {
		return mapper.selectRep(rep);
	}

	// 2023-06-06 박경은 - 쿠폰관리 목록
	public List selectCouponList(CouponVO coupon) {
		return mapper.selectCouponList(coupon);
	}

	public CouponVO selectCoupon(String coupon_idx) {
		return mapper.selectCoupon(coupon_idx);
	}

	public int updateCoupon(CouponVO coupon) {
		return mapper.updateCoupon(coupon);
	}

	// 2023-05-25 박경은 - 관리자 공지사항목록 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public List<NoticeVO> noticeList(String searchKeyword, int startRow, int listLimit) {
		return mapper.noticeList(searchKeyword, startRow, listLimit);
	}

	// 2023-05-25 박경은 - 관리자 공지사항목록 수 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public int selectNoticeListCount(String searchKeyword) {
		return mapper.selectNoticeListCount(searchKeyword);
	}

	// 2023-05-25 박경은 - 관리자 공지사항 조회
	public NoticeVO selectNotice(int board_idx) {
		return mapper.selectNotice(board_idx);
	}

	// 2023-05-25 박경은 - 관리자 공지사항 작성
	public int insertNotice(NoticeVO notice) {
		return mapper.insertNotice(notice);
	}

	// 2023-05-25 박경은 - 관리자 공지사항 수정
	public int noticeDetail(NoticeVO notice) {
		return mapper.noticeDetail(notice);
	}

	// 2023-05-31 박경은 - 관리자 공지사항 수정 파일삭제
	public int deleteNoticeFile(int board_idx) {
		return mapper.deleteNoticeFile(board_idx);
	}

	// 2023-05-25 박경은 - 관리자 공지사항 삭제
	public int deleteNotice(int board_idx) {
		return mapper.deleteNotice(board_idx);
	}

	// 2023-05-16 박경은 - 관리자 보도자료목록 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public List<NoticeVO> newsList(String searchKeyword, int startRow, int listLimit) {
		return mapper.newsList(searchKeyword, startRow, listLimit);
	}

	// 2023-05-16 박경은 - 관리자 보도자료목록 수 조회
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	public int selectNewsListCount(String searchKeyword) {
		return mapper.selectNewsListCount(searchKeyword);
	}

	// 2023-05-16 박경은 - 관리자 보도자료 조회
	public NoticeVO selectNews(int board_idx) {
		return mapper.selectNews(board_idx);
	}

	// 2023-05-25 박경은 - 관리자 공지사항 작성
	public int insertNews(NoticeVO news) {
		return mapper.insertNews(news);
	}

	// 2023-05-17 박경은 - 관리자 보도자료 수정
	public int newsDetail(NoticeVO news) {
		return mapper.newsDetail(news);
	}

	// 2023-06-01 박경은 - 관리자 보도자료 수정 파일삭제
	public int deleteNewsFile(int board_idx) {
		return mapper.deleteNewsFile(board_idx);
	}

	// 2023-05-22 박경은 - 관리자 보도자료 삭제
	public int deleteNews(int board_idx) {
		return mapper.deleteNews(board_idx);
	}

	// --------------------------------------

	// 05-16 은산 프로젝트 목록
	public List<Map<String, Object>> getAllProjectList(String selectOption) {
		return mapper.selectAllProjectList(selectOption);
	}

	// 05-17 은산 승인대기 목록
	public List getPendingList(ProjectVO project) {
		return mapper.selectPendingList(project);
	}

	// 05-18 은산 프로젝트 승인
	public int updateApproveList(ProjectVO project) {
		return mapper.updateApproveList(project);
	}

	// 05-21 은산 프로젝트 상세
	public Map getDetailList(ProjectVO project) {
		return mapper.selectDetailList(project);
	}

	// 05-25 은산 프로젝트 승인거부
	public int approveDenied(ProjectVO project) {
		return mapper.updateApproveDenied(project);
	}

	// 은산 승인 내역
	public void insertApproveHistory(Model model) {
		mapper.insertApproveHistory(model);
	}

	// 은산 프로젝트 승인 시 프로젝트 디테일 생성
	public void createProjectDetail(Model model) {
		mapper.insertProjectDetail(model);
	}

	public List sortProjectList(String label) {
		return mapper.selectSortedProjectList(label);
	}

	public int updateProjectStatus(Integer projectIdx, String projectStatus) {
		return mapper.updateProjectStatus(projectIdx, projectStatus);
		
	}

	public List getRewardList(ProjectVO project) {
		return mapper.selectRewardList(project);
	}

	public List getPaymentList(ProjectVO project) {
		return mapper.selectPaymentList(project);
	}

	public List selectCalculateList(CalculateVO calculate) {
		return mapper.selectCalculateList(calculate);
	}

	public Map selectRepresentative(int member_idx) {
		return mapper.selectRepresentative(member_idx);
	}

	public AccountVO getAccountVO(int member_idx) {
		return mapper.getAccountVO(member_idx);
	}

	public int getCount(ProjectVO project) {
		return mapper.getCount(project);
	}



	

}
