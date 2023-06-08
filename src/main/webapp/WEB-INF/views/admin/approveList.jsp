<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="resources/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>관리자 - 승인대기 목록</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script
	src="${pageContext.request.contextPath}/resources/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script
	src="${pageContext.request.contextPath}/resources/assets/js/config.js"></script>
</head>
<link rel="${pageContext.request.contextPath}/resources/css/core.css"></link>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	<!-- 모달 실행 -->
	function showModal(modalId, btnId, inputName) {
		$("input[name=project_title]").val($("#td_project_title").text());
		let idx = document.getElementById(btnId).getAttribute("value");
// 		$("#project_idx").val(idx);
// 		alert('idx= ' + $("#project_idx").val() + ': ' + modalId);
// 		$("#project_idx2").val(idx);
		
		var modal = document.getElementById(modalId);
		var closeBtn = document.getElementById('closeBtn' + modalId);
		var xBtn = document.getElementById('xBtn' + modalId);
		
		modal.classList.add('show');
		modal.style.display = 'block';
		
		// 모달 끄는 버튼
		closeBtn.addEventListener('click', () => {
			modal.className = 'modal fade';
			modal.style.display = 'none';
		})
		xBtn.addEventListener('click', () => {
			modal.className = 'modal fade';
			modal.style.display = 'none';
		});
	}
	
	<!-- 요금제  -->
	const Plan = {
			LIGHT: "1",
			BASIG: "2",
			PRO:   "3"
	};
	
	<!-- 승인 -->
	function modalApprove(project_plan, project_idx, project_title) {
		showModal('approve', 'approveBtn', 'project_coming_soon_date');
		let comingSoonDate = $("input[name=project_coming_soon_date]");
		$("#project_idx").val(project_idx);
		$("#project_title").val(project_title);
		
		// 오픈예정
		if (project_plan == Plan.LIGHT) {
		  comingSoonDate.attr('readonly', true);
		  comingSoonDate.attr('placeholder', '날짜를 지정할 수 없습니다.');
		} 
	}
	
	<!-- 승인 거부 -->
	function modalDenied(project_idx, project_title) {
		showModal('denied', 'deniedBtn', 'approve_reason');
		$("#project_idx2").val(project_idx);
		$("#project_title2").val(project_title);
	}
	
</script>
<!-- 모달 css -->
<style type="text/css">
.modal {
	background-color: rgba(0, 0, 0, 0.4);
}

.dropdown-menu.show {
	overflow: visible;
}

.fade {
    transition: opacity .15s linear;
}

</style>
<style type="text/css">
.form-control:disabled, .form-control[readonly] {
	background-color: white;
	opacity: 1;
}
</style>
<body>
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->
			<jsp:include page="../inc/admin_top.jsp"></jsp:include>
			<!-- / Menu -->
			<!-- 승인 모달 -->
			<form id="modalForm" action="approve" method="post"
				onsubmit="return confirm('승인 하시겠습니까?')">
				<div class="modal fade" id="approve" tabindex="-1"
					aria-modal="true" style="display: none" role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel1">Modal title</h5>
								<button type="button" id="xBtnapprove" class="btn-close"
									data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<div class="row g-2">
									<div class="col mb-3">
										<label for="nameBasic" class="form-label">프로젝트명</label> <input
											type="text" id="project_title" readonly="readonly"
											name="project_title" class="form-control" value=""
											placeholder="Enter Name" />
									</div>
								</div>
								<div class="row g-2">
									<div class="col mb-0">
										<label for="html5-date-input" class="col-md-2 col-form-label">오픈예정+</label>
										<div class="col-md-12">
											<input class="form-control" name="project_coming_soon_date" type="date" placeholder="DD / MM / YY"
												id="html5-date-input">
										</div>
									</div>
								</div>
								<div class="row g-2">
									<div class="col mb-0">
										<label for="html5-date-input" class="col-md-2 col-form-label">시작일</label>
										<div class="col-md-12">
											<input class="form-control" name="project_start_date" type="date" placeholder="DD / MM / YY"
												id="html5-date-input">
										</div>
									</div>
									<div class="col mb-0">
										<label for="html5-date-input" class="col-md-2 col-form-label">마감일</label>
										<div class="col-md-12">
											<input class="form-control" name="project_end_date" type="date" placeholder="DD / MM / YY"
												id="html5-date-input">
										</div>
									</div>
								</div>
							</div>
							<input type="hidden" name="project_idx" id="project_idx">
							<input type="hidden" name="project_title" id="project_title">
							<div class="modal-footer">
								<button type="button" id="closeBtnapprove"
									class="btn btn-outline-secondary" data-bs-dismiss="modal">
									취소</button>
								<button type="submit" class="btn btn-primary">승인</button>
							</div>
						</div>
					</div>
				</div>
			</form>
			<!-- /승인 모달 -->
			<!-- 거부 모달 -->
			<form id="modalForm" action="approveDenied" method="post"
				onsubmit="return confirm('승인 거부 하시겠습니까?')">
				<div class="modal fade" id="denied" tabindex="-1"
					aria-modal="true" style="display: none" role="dialog">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel1">Modal title</h5>
								<button type="button" id="xBtndenied" class="btn-close"
									data-bs-dismiss="modal" aria-label="Close"></button>
							</div>
							<div class="modal-body">
								<div class="row">
									<div class="col mb-3">
										<label for="nameBasic" class="form-label">프로젝트명</label> <input
											type="text" id="project_title2" readonly="readonly"
											name="project_title" class="form-control" value=""
											placeholder="Enter Name" />
									</div>
								</div>
								<div class="row g-2">
									<div class="col mb-0">
										<label for="dobBasic" class="form-label">거부 사유</label> <input
											type="text" name="approve_reason" id="dobBasic"
											class="form-control" placeholder="거부 사유를 입력해주세요." />
									</div>
								</div>
							</div>
							<input type="hidden" name="project_idx" id="project_idx2">
							<div class="modal-footer">
								<button type="button" id="closeBtndenied"
									class="btn btn-outline-secondary" data-bs-dismiss="modal">
									취소</button>
								<button type="submit" class="btn btn-primary">확인</button>
							</div>
						</div>
					</div>
				</div>
			</form>
			<!-- /거부모달 -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->
				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">

						<ul class="navbar-nav flex-row align-items-center ms-auto">
							<!-- Place this tag where you want the button to render. -->

							<!-- User -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="nav-link dropdown-toggle hide-arrow"
								href="javascript:void(0);" data-bs-toggle="dropdown">
									<div class="avatar avatar-online">
<!-- 										<img src="resources/assets/img/avatars/1.png" alt -->
<!-- 											class="w-px-40 h-auto rounded-circle" /> -->
									</div>
							</a>
								<ul class="dropdown-menu dropdown-menu-end">
									<li><a class="dropdown-item" href="#">
											<div class="d-flex">
												<div class="flex-shrink-0 me-3">
													<div class="avatar avatar-online">
<!-- 														<img src="resources/assets/img/avatars/1.png" alt -->
<!-- 															class="w-px-40 h-auto rounded-circle" /> -->
													</div>
												</div>
												<div class="flex-grow-1">
													<span class="fw-semibold d-block">John Doe</span> <small
														class="text-muted">Admin</small>
												</div>
											</div>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li><a class="dropdown-item" href="#"> <i
											class="bx bx-user me-2"></i> <span class="align-middle">My
												Profile</span>
									</a></li>
									<li><a class="dropdown-item" href="#"> <i
											class="bx bx-cog me-2"></i> <span class="align-middle">Settings</span>
									</a></li>
									<li><a class="dropdown-item" href="#"> <span
											class="d-flex align-items-center align-middle"> <i
												class="flex-shrink-0 bx bx-credit-card me-2"></i> <span
												class="flex-grow-1 align-middle">Billing</span> <span
												class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
										</span>
									</a></li>
									<li>
										<div class="dropdown-divider"></div>
									</li>
									<li><a class="dropdown-item" href="auth-login-basic.html">
											<i class="bx bx-power-off me-2"></i> <span
											class="align-middle">Log Out</span>
									</a></li>
								</ul>
							</li>
							<!--/ User -->
						</ul>
					</div>
				</nav>
				<!-- / Navbar -->
				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->
					<div class="container-xxl flex-grow-1 container-p-y">
						<h4 class="fw-bold py-3 mb-4">
							<span class="text-muted fw-light"></span> 승인대기 목록 취합2
						</h4>
						<div class="card">
							<div class="table-responsive text-nowrap"
								style="overflow: visible;">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>NO</th>
											<th>등록일</th>
											<th>요금제</th>
											<th>구분</th>
											<th>카테고리</th>
											<th>프로젝트명</th>
											<th>목표금액</th>
											<th>오픈예정 날짜</th>
											<th>작성자</th>
											<th></th>
										</tr>
									</thead>
									<tbody id="titleElement" class="table-border-bottom-0">
										<c:forEach var="pendingList" items="${pendingList }">
											<tr>
												<td>${pendingList.project_idx }</td>
												<td>${pendingList.project_create_date }</td>
												<c:choose>
													<c:when test="${pendingList.project_plan eq 3 }">
														<td id="td_project_plan"><span
															class="badge rounded-pill bg-info">Pro</span></td>
													</c:when>
													<c:when test="${pendingList.project_plan eq 2 }">
														<td id="td_project_plan"><span
															class="badge rounded-pill bg-warning">Basic</span></td>
													</c:when>
													<c:otherwise>
														<td id="td_project_plan"><span
															class="badge rounded-pill bg-label-secondary">Light</span></td>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${pendingList.project_type eq 1}">
														<td>펀딩</td>
													</c:when>
													<c:otherwise>
														<td>공동구매</td>
													</c:otherwise>
												</c:choose>
												<td>${pendingList.project_category }</td>
												<td id="td_project_title">${pendingList.project_title }</td>
												<td>${pendingList.project_target }원</td>
												<td>${pendingList.project_coming_soon_date }</td>
												<td>${pendingList.member_name }</td>
												<td>
													<div class="input-group">
														<button class="btn btn-outline-primary dropdown-toggle"
															type="button" data-bs-toggle="dropdown"
															aria-expanded="false">Dropdown</button>
														<ul class="dropdown-menu dropdown-menu-end" style="">
															<li><a class="dropdown-item" id="approveBtn"
																onclick="modalApprove(${pendingList.project_plan}, ${pendingList.project_idx}, '${pendingList.project_title}')">승인</a></li>
															<li><a class="dropdown-item" id="deniedBtn"
																onclick="modalDenied(${pendingList.project_idx}, '${pendingList.project_title}')">거부</a></li>
														</ul>
													</div>
												
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<hr class="my-5">
						<!-- / Content -->
						<div class="content-backdrop fade"></div>
					</div>
					<!-- Content wrapper -->
				</div>
				<!-- / Layout page -->
			</div>
			<!-- Overlay -->
			<div class="layout-overlay layout-menu-toggle"></div>
		</div>
		<!-- / Layout wrapper -->
	</div>
	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/libs/jquery/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/libs/popper/popper.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/js/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

	<!-- Page JS -->

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>