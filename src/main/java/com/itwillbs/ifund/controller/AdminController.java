package com.itwillbs.ifund.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.ifund.service.AdminService;
import com.itwillbs.ifund.vo.MemberVO;
import com.itwillbs.ifund.vo.NoticeVO;
import com.itwillbs.ifund.vo.PageInfo;
import com.itwillbs.ifund.vo.ProjectVO;
import com.itwillbs.ifund.vo.RepresentativeVO;

enum Role {
	BASIG_MEMBER("0"), // 일반회원
	ADMIN("1"); // 관리자

	String code;

	private Role(String code) {
		this.code = code;
	}
}

enum ApproveStatus {
	APPROVE("1"), // 승인
	DECLINE("2"); // 거부

	String code;

	private ApproveStatus(String code) {
		this.code = code;
	}

}

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;

	@Value("${client_id}")
	private String client_id;

	// 관리자 메인페이지
	@GetMapping("admin")
	public String admin(String member_email, Model model, HttpSession session) {
		String isAdmin = (String) session.getAttribute("isAdmin");
		Integer member_idx = (Integer) session.getAttribute("member_idx");

		if (member_idx == null || isAdmin.equals(Role.BASIG_MEMBER.code)) {
			model.addAttribute("msg", "접근 권한이 없습니다.");
			return "fail_back";
		} else {
			return "admin/index";
		}
	}

	// 2023-06-02 박경은 - 로그아웃
	@GetMapping("admin/logout")
	public String logout(HttpSession session, HttpServletResponse response) {
		session.invalidate();
		return "redirect:/";
	}

	// 관리자 회원목록
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	@GetMapping("admin/memberList")
	public String memberList(Model model, HttpSession session, @RequestParam(defaultValue = "") String searchKeyword,
			@RequestParam(defaultValue = "1") int pageNum) {

		int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit;
		int listCount = adminService.selectMemberListCount(searchKeyword);
		int pageListLimit = 5;
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		int endPage = startPage + pageListLimit - 1;
		if (endPage > maxPage) {
			endPage = maxPage;
		}

		PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
		model.addAttribute("pageInfo", pageInfo);

		// 회원목록 출력
		List<MemberVO> memberList = adminService.memberList(searchKeyword, startRow, listLimit);
		model.addAttribute("memberList", memberList);
		return "admin/memberList";
	}

	// 관리자 회원 조회
	// 2023-05-30 박경은 - memberInfo 와 별도로 repInfo 생성 및 매핑주소, 파라미터 수정
	// 2023-06-02 박경은 - 검색기능 때문에 List/member_idx=(숫자) 형식으로 수정
	@GetMapping("admin/memberListDetail")
	public String memberList_detail(Model model, MemberVO member, RepresentativeVO rep) {
		MemberVO memberInfo = adminService.selectMember(member.getMember_idx());
		Map repInfo = adminService.selectRep(rep);
		model.addAttribute("memberInfo", memberInfo);
		model.addAttribute("repInfo", repInfo);
		return "admin/memberList_detail";
	}

	// 관리자 공지사항목록
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	@GetMapping("admin/noticeList")
	public String noticeList(Model model, @RequestParam(defaultValue = "") String searchKeyword,
			@RequestParam(defaultValue = "1") int pageNum) {

		// 페이징
		int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit;
		int listCount = adminService.selectNoticeListCount(searchKeyword);
		int pageListLimit = 5;
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		int endPage = startPage + pageListLimit - 1;
		if (endPage > maxPage) {
			endPage = maxPage;
		}

		PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
		model.addAttribute("pageInfo", pageInfo);

		// 공지사항목록 출력
		List<NoticeVO> noticeList = adminService.noticeList(searchKeyword, startRow, listLimit);
		model.addAttribute("noticeList", noticeList);

		return "admin/noticeList";
	}

	// 2023-05-25 박경은 - 관리자 공지사항 작성
	@GetMapping("admin/noticeListWrite")
	public String noticeList_write(Model model, NoticeVO notice) {
		return "admin/noticeList_write";
	}

	@PostMapping("admin/noticeListWritePro")
	public String noticeList_writePro(NoticeVO notice, Model model, HttpSession session) {

		// 2023-05-31 박경은 - 파일 업로드
		String uploadDir = "/resources/upload";
		String saveDir = session.getServletContext().getRealPath(uploadDir);

		try {
			// 날짜 구별
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			notice.setBoard_file_path("/" + sdf.format(date));

			// 경로
			saveDir = saveDir + notice.getBoard_file_path();
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);

		} catch (IOException e) {
			e.printStackTrace();
		}

		MultipartFile mFile = notice.getFile();
		String originalFileName = mFile.getOriginalFilename();
		String uuid = UUID.randomUUID().toString();
		notice.setBoard_file(uuid.substring(0, 8) + "_" + originalFileName);

		// 글 작성
		int insertCount = adminService.insertNotice(notice);

		if (insertCount > 0) {

			try {
				mFile.transferTo(new File(saveDir, notice.getBoard_file()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}

			return "redirect:/admin/noticeList";

		} else {
			model.addAttribute("msg", "글 쓰기 실패!");
			return "fail_back";
		}

	}

	// 관리자 공지사항 상세
	@GetMapping("admin/noticeListDetail")
	public String noticeList_detail(Model model, @RequestParam int board_idx) {
		NoticeVO notice = adminService.selectNotice(board_idx);
		model.addAttribute("notice", notice);
		return "admin/noticeList_detail";
	}

	// 관리자 공지사항 수정
	@PostMapping("admin/noticeListDetailPro")
	public String noticeList_detailPro(Model model, NoticeVO notice, HttpSession session,
			@RequestParam(defaultValue = "1") int pageNum, int board_idx) {

		// 2023-06-01 박경은 - 파일 업로드
		boolean isUploadProcess = false;

		String uploadDir = "/resources/upload";
		String saveDir = session.getServletContext().getRealPath(uploadDir);

		if (notice.getFile() != null && !notice.getFile().getOriginalFilename().equals("")) {

			isUploadProcess = true;

			String originalFileName = notice.getFile().getOriginalFilename();

			// 파일명 중복 방지
			String uuid = UUID.randomUUID().toString();
			notice.setBoard_file(uuid.substring(0, 8) + "_" + originalFileName);

			// 날짜
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			notice.setBoard_file_path("/" + sdf.format(date));
			saveDir = saveDir + notice.getBoard_file_path();
		}

		// 수정
		int updateCount = adminService.noticeDetail(notice);

		if (updateCount > 0) {
			// 2023-06-01 박경은 - 파일 업로드 추가
			if (isUploadProcess) {
				try {
					Path path = Paths.get(saveDir);
					Files.createDirectories(path);

					MultipartFile mFile = notice.getFile();
					mFile.transferTo(new File(saveDir, notice.getBoard_file()));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}

			return "redirect:/admin/noticeListDetail?board_idx=" + notice.getBoard_idx() + "&pageNum=" + pageNum;
		} else {
			model.addAttribute("msg", "글 수정 실패");
			return "fail_back";
		}
	}

	// 2023-05-31 박경은 - 관리자 공지사항 수정 파일삭제
	@ResponseBody
	@PostMapping("admin/BoardDeleteNoticeFile")
	public void deleteNoticeFile(@RequestParam int board_idx, @RequestParam String board_file,
			@RequestParam String board_file_path, HttpServletResponse response, HttpSession session) {

		try {
			response.setCharacterEncoding("UTF-8");

			int deleteCount = adminService.deleteNoticeFile(board_idx);

			if (deleteCount > 0) {
				String uploadDir = "/resources/upload";
				String saveDir = session.getServletContext().getRealPath(uploadDir);
				saveDir += board_file_path;

				Path path = Paths.get(saveDir + "/" + board_file);
				Files.deleteIfExists(path);

				response.getWriter().print("true");
			} else {
				response.getWriter().print("false");
			}

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	// 2023-05-22 박경은 - 관리자 공지사항 삭제
	@GetMapping("admin/noticeListDeletePro")
	public String noticeList_deletePro(Model model, @RequestParam(defaultValue = "1") int pageNum, int board_idx) {

		int deleteCount = adminService.deleteNotice(board_idx);

		if (deleteCount > 0) {
			return "redirect:/admin/noticeList?pageNum=" + pageNum;
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
	}

	// 관리자 보도자료목록
	// 2023-06-02 박경은 - 검색기능(searchKeyword) 추가
	@GetMapping("admin/newsList")
	public String newsList(Model model, HttpSession session, @RequestParam(defaultValue = "") String searchKeyword,
			@RequestParam(defaultValue = "1") int pageNum) {

		// 페이징
		int listLimit = 10;
		int startRow = (pageNum - 1) * listLimit;
		int listCount = adminService.selectNewsListCount(searchKeyword);
		int pageListLimit = 5;
		int maxPage = listCount / listLimit + (listCount % listLimit > 0 ? 1 : 0);
		int startPage = (pageNum - 1) / pageListLimit * pageListLimit + 1;
		int endPage = startPage + pageListLimit - 1;
		if (endPage > maxPage) {
			endPage = maxPage;
		}

		PageInfo pageInfo = new PageInfo(listCount, pageListLimit, maxPage, startPage, endPage);
		model.addAttribute("pageInfo", pageInfo);

		// 보도자료목록 출력
		List<NoticeVO> newsList = adminService.newsList(searchKeyword, startRow, listLimit);
		model.addAttribute("newsList", newsList);

		return "admin/newsList";
	}

	// 2023-05-25 박경은 - 관리자 보도자료 작성
	@GetMapping("admin/newsListWrite")
	public String newsList_write(Model model, NoticeVO news) {
		return "admin/newsList_write";
	}

	@PostMapping("admin/newsListWritePro")
	public String newsList_writePro(NoticeVO news, Model model, HttpSession session) {

		// 2023-05-31 박경은 - 파일 업로드
		String uploadDir = "/resources/upload";
		String saveDir = session.getServletContext().getRealPath(uploadDir);
		try {
			// 날짜
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			news.setBoard_file_path("/" + sdf.format(date));

			// 경로
			saveDir = saveDir + news.getBoard_file_path();
			Path path = Paths.get(saveDir);
			Files.createDirectories(path);
		} catch (IOException e) {
			e.printStackTrace();
		}

		MultipartFile mFile = news.getFile();

		String originalFileName = mFile.getOriginalFilename();
		String uuid = UUID.randomUUID().toString();
		news.setBoard_file(uuid.substring(0, 8) + "_" + originalFileName);

		// 글 작성
		int insertCount = adminService.insertNews(news);
		if (insertCount > 0) {

			try {
				mFile.transferTo(new File(saveDir, news.getBoard_file()));
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return "redirect:/admin/newsList";
		} else {
			model.addAttribute("msg", "글 쓰기 실패!");
			return "fail_back";
		}

	}

	// 관리자 보도자료 상세
	@GetMapping("admin/newsListDetail")
	public String newsList_detail(Model model, HttpSession session, @RequestParam int board_idx) {
		NoticeVO news = adminService.selectNews(board_idx);
		model.addAttribute("news", news);
		return "admin/newsList_detail";
	}

	// 관리자 보도자료 수정
	@PostMapping("admin/newsListDetailPro")
	public String newsList_detailPro(Model model, NoticeVO news, HttpSession session,
			@RequestParam(defaultValue = "1") int pageNum, int board_idx) {

		// 2023-06-01 박경은 - 파일 업로드
		boolean isUploadProcess = false;

		String uploadDir = "/resources/upload";
		String saveDir = session.getServletContext().getRealPath(uploadDir);

		if (news.getFile() != null && !news.getFile().getOriginalFilename().equals("")) {
			isUploadProcess = true;

			String originalFileName = news.getFile().getOriginalFilename();

			String uuid = UUID.randomUUID().toString();
			news.setBoard_file(uuid.substring(0, 8) + "_" + originalFileName);

			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			news.setBoard_file_path("/" + sdf.format(date));
			saveDir = saveDir + news.getBoard_file_path();
		}

		// 수정
		int updateCount = adminService.newsDetail(news);

		if (updateCount > 0) {
			// 2023-06-01 박경은 - 파일 업로드 추가
			if (isUploadProcess) {
				try {
					Path path = Paths.get(saveDir);
					Files.createDirectories(path);

					MultipartFile mFile = news.getFile();
					mFile.transferTo(new File(saveDir, news.getBoard_file()));
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
			return "redirect:/admin/newsListDetail?board_idx=" + news.getBoard_idx() + "&pageNum=" + pageNum;
		} else {
			model.addAttribute("msg", "글 수정 실패");
			return "fail_back";
		}
	}

	// 2023-06-01 박경은 - 관리자 보도자료 수정 파일삭제
	@ResponseBody
	@PostMapping("admin/BoardDeleteNewsFile")
	public void deleteNewsFile(@RequestParam int board_idx, @RequestParam String board_file,
			@RequestParam String board_file_path, HttpServletResponse response, HttpSession session) {

		try {
			response.setCharacterEncoding("UTF-8");

			int deleteCount = adminService.deleteNewsFile(board_idx);

			if (deleteCount > 0) {
				String uploadDir = "/resources/upload";
				String saveDir = session.getServletContext().getRealPath(uploadDir);
				saveDir += board_file_path;

				Path path = Paths.get(saveDir + "/" + board_file);
				Files.deleteIfExists(path);

				response.getWriter().print("true");
			} else {
				response.getWriter().print("false");
			}

		} catch (IOException e) {
			e.printStackTrace();
		}

	}

	// 2023-05-22 박경은 - 관리자 보도자료 삭제
	@GetMapping("admin/newsListDeletePro")
	public String newsList_deletePro(Model model, @RequestParam(defaultValue = "1") int pageNum, int board_idx) {

		int deleteCount = adminService.deleteNews(board_idx);

		if (deleteCount > 0) {
			return "redirect:/admin/newsList?pageNum=" + pageNum;
		} else {
			model.addAttribute("msg", "삭제 실패!");
			return "fail_back";
		}
	}

	// ---------------------------------------

	// 프로젝트 목록
	@GetMapping("admin/projectList")
	public String projectList(Model model) {
		List projectList = adminService.getAllProjectList();
		model.addAttribute("projectList", projectList);
		return "admin/projectList";
	}

	// 프로젝트 목록 필터링
	@GetMapping("admin/projectList/{label}")
	public String projectListByLabel(@PathVariable("label") String label, Model model) {
		List projectList = adminService.sortProjectList(label);
		model.addAttribute("projectList", projectList);
		return "admin/projectList";
	}

	// 프로젝트 목록 상세
	@GetMapping("admin/projectList/detail/{project_idx}")
	public String projectListDetail(Model model, ProjectVO project, @PathVariable("project_idx") String project_idx) {
		Map projectDetail = adminService.getDetailList(project);
		model.addAttribute("project", projectDetail);
		return "admin/projectList_detail";
	}

	// 0517 은산
	// 관리자 승인대기목록
	@GetMapping("admin/approveList")
	public String approveList(Model model, ProjectVO project, HttpSession session) {
		List pendingList = adminService.getPendingList(project);
		model.addAttribute("pendingList", pendingList);
		return "admin/approveList";
	}

	// 0518 은산
	// 프로젝트 승인
	@PostMapping("admin/approve")
	public String approve(Model model, HttpSession session, ProjectVO project) {
		String isAdmin = (String) session.getAttribute("isAdmin");
		Integer member_idx = (Integer) session.getAttribute("member_idx");
		MemberVO member = adminService.selectMember(member_idx);
		// 관리자 이름
		String admin_name = member.getMember_name();
		// 승인
		int updateCount = adminService.updateApproveList(project);

		if (updateCount > 0) {
			model.addAttribute("project_idx", project.getProject_idx());
			model.addAttribute("admin_name", admin_name);
			adminService.insertApproveHistory(model);

			Map projectDetail = adminService.getDetailList(project);
			String status = (String) projectDetail.get("project_approve_status");

			if (status.equals(ApproveStatus.APPROVE.code)) {
				adminService.createProjectDetail(model);
			}

			return "redirect:/admin/approveList";

		} else {
			model.addAttribute("msg", "승인 실패");
			return "fail_back";
		}

	}

	// 0525은산
	// 프로젝트 승인 거부
	@PostMapping("admin/approveDenied")
	public String approveDenied(Model model, ProjectVO project, @RequestParam("approve_reason") String approve_reason) {
		adminService.approveDenied(project);

		return "admin/approveList";
	}

}
