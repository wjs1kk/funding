<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="resources/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>와디즈 관리자 - 회원관리 상세</title>

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
<style type="text/css">
.form-control:disabled, .form-control[readonly] {
	background-color: white;
	opacity: 1;
}
</style>
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

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->

				<nav
					class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">

					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0   d-xl-none ">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">
						<ul class="navbar-nav flex-row align-items-center ms-auto">

							<!-- User -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="dropdown-item" href="auth-login-basic.html"> <i
									class="bx bx-power-off me-2"></i> <span class="align-middle">Log
										Out</span>
							</a>

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
						<!-- Basic with Icons -->
						<h4 class="fw-bold py-3 mb-4">프로젝트 정보</h4>
						<div class="row">
							<div class="col-xl">
								<div class="card mb-4">
									<div class="card-body">
										<form>
											<div class="mb-3">
												<div>
													<c:choose>
														<c:when test="${project.project_status eq 2}">
															<span class="badge bg-danger">마감</span>
														</c:when>
														<c:when test="${project.project_status eq 1 }">
															<span class="badge bg-primary">진행중</span>
														</c:when>
														<c:otherwise>
															<span class="badge bg-label-secondary">오픈전</span>
														</c:otherwise>
													</c:choose>
												</div>
												<c:if test="${project.project_status > 0}">
													<c:if test="${project.d_day > 0}">
														<div style="margin-top: 15px;">
															<span style="line-height: 34px;
																font-size: 24px; font-weight: 500;">
																${project.project_detail_person}명
															</span>
															<span>
																 참여
															</span>
															<span style="border: solid 1px #e7f9f9; background-color: #e7f9f9;
																color: #00c4c4;">${Math.abs(project.d_day)}일 남음
															</span>
														</div>
														<div style="margin-top: 15px;">
															<span style="line-height: 34px;
															font-size: 24px; font-weight: 500;">
																<fmt:formatNumber value="${project.project_detail_amount}" pattern="#,###" />원
															</span>
															<span>
																<fmt:formatNumber value="${project.target_rate}" pattern="#,###" />% 달성
															</span>
														</div>
													</c:if>
													<c:if test="${project.d_day < 0}">
														<div style="margin-top: 15px;">
															<span style="line-height: 34px;
																font-size: 24px; font-weight: 500;">
																${project.project_detail_person}명
															</span>
															<span>
																 참여
															</span>
														</div>
														<div style="margin-top: 15px;">
															<span style="line-height: 34px;
															font-size: 24px; font-weight: 500;">
																<fmt:formatNumber value="${project.project_target}" pattern="#,###" />원
															</span>
															<span>
																<fmt:formatNumber value="${project.target_rate}" pattern="#,###" />% 달성
															</span>
														</div>
													</c:if>
													
												</c:if>
												
											</div>
											<div class="mb-3">
												<label class="form-label" for="basic-default-fullname">유형</label>
												<c:choose>
													<c:when test="${project.project_type eq 0}">
														<input type="text" class="form-control" value="펀딩"
															id="basic-default-fullname">
													</c:when>
													<c:otherwise>
														<input type="text" class="form-control" value="공동구매"
															id="basic-default-fullname">
													</c:otherwise>
												</c:choose>
											</div>
											<div class="mb-3">
												<label class="form-label" for="basic-default-fullname">카테고리</label>
												<input type="text" class="form-control"
													value="${project.project_category}"
													id="basic-default-fullname" placeholder="John Doe">
											</div>
											<div class="mb-3">
												<label class="form-label" for="basic-default-fullname">제목</label>
												<input type="text" class="form-control"
													value="${project.project_title}"
													id="basic-default-fullname" placeholder="John Doe">
											</div>

											<div class="mb-3">
												<label class="form-label" for="basic-default-phone">요약</label>
												<input type="text" id="basic-default-phone"
													value="${project.project_summary}"
													class="form-control phone-mask" placeholder="658 799 8941">
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="col-xl">
								<div class="card mb-4">
									<div class="card-body">
										<form>
											<div class="mb-3">
											<label class="form-label" for="basic-default-email">플랜</label>
											<div class="input-group input-group-merge">
											<c:choose>
													<c:when test="${project.project_plan eq 3 }">
														<span class="badge bg-info">Pro</span>
													</c:when>
													<c:when test="${project.project_plan eq 2 }">
														<span class="badge bg-warning">Basic</span>
													</c:when>
													<c:otherwise>
														<span class="badge bg-label-secondary">Light</span>
													</c:otherwise>
												</c:choose>
												</div>
											</div>
											<div class="mb-3">
												<label class="form-label" for="basic-default-email">오픈예정+</label>
												<div class="input-group input-group-merge">
													<input type="text" class="form-control"
														value="${project.project_coming_soon_date}"
														id="basic-default-company">
												</div>
											</div>
											<div class="mb-3">
												<label class="form-label" for="basic-default-fullname">시작일</label>
												<input type="text" class="form-control"
													value="${project.project_start_date }"
													id="basic-default-fullname">
											</div>
											<div class="mb-3">
												<label class="form-label" for="basic-default-company">마감일</label>
												<input type="text" class="form-control"
													value="${project.project_end_date }"
													id="basic-default-company">
											</div>
											<div class="mb-3">
												<label class="form-label" for="basic-default-company">목표금액</label>
												<input type="text" class="form-control"
													value="<fmt:formatNumber value="${project.project_target}" pattern="#,###" />원"
													id="basic-default-company">
											</div>
										</form>
									</div>
								</div>
							</div>

						</div>
						<h4 class="fw-bold py-3 mb-4">프로젝트 내용</h4>
						<!-- Basic Layout & Basic with Icons -->
						<div class="row">
							<!-- Basic Layout -->
							<div class="col-xxl">
								<div class="card mb-4">
									<div class="card-body">
										<form>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label"
													for="basic-default-phone">내용</label>
												<div class="col-sm-10">
													<div style="border: 1px solid #d9dee3; border-radius: 6px">
														${project.project_content}</div>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>


						</div>
						<h4 class="fw-bold py-3 mb-4">리워드</h4>
						<div class="row">
							<div class="card" style="margin-bottom: 50px">
								<div class="table-responsive text-nowrap">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>리워드명</th>
												<th>가격</th>
												<th>내용</th>
												<th>옵션</th>
												<th>제한수량</th>
											</tr>
										</thead>
										<c:choose>
											<c:when test="${!empty reward }">
												<tbody class="table-border-bottom-0">
													<c:forEach var="reward" items="${reward }">
														<tr>
															<td>${reward.reward_name }</td>
															<td>
																<fmt:formatNumber value="${reward.reward_amount}" pattern="#,###" />원
															</td>
															<td>${reward.reward_content}</td>
															<td>${reward.reward_option }</td>
															<td>
																<fmt:formatNumber value="${reward.reward_quantity}" pattern="#,###" />개
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</c:when>	
											<c:otherwise>
												<td>등록된 리워드가 없습니다.</td>
											</c:otherwise>
										</c:choose>
									</table>
								</div>
							</div>
						</div>
						<h4 class="fw-bold py-3 mb-4">참여내역</h4>
						<div class="row">
							<div class="card" style="margin-bottom: 50px">
								<div class="table-responsive text-nowrap">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>참여날짜</th>
												<th>회원명</th>
												<th>리워드</th>
												<th>가격</th>
												<th>포인트</th>
												<th>쿠폰</th>
												<th>배송비</th>
												<th>후원</th>
												<th>총 비용</th>
											</tr>
										</thead>
										
										<c:choose>
											<c:when test="${!empty payment }">
												<tbody class="table-border-bottom-0">
													<c:forEach var="payment" items="${payment }">
														<tr>
															<td>
 															${payment.payment_date }
<%-- 																		<fmt:formatDate value="${payment.payment_date}" pattern="yyyy-MM-dd HH:mm:ss" type="date"/> --%>
<%-- 																<fmt:formatDate value="${payment.payment_date }" pattern="yyyy-MM-dd HH:mm" /> --%>
															</td>
															<td>${payment.member_name }</td>
															<td>${payment.reward_name }</td>
															<td>
																<fmt:formatNumber value="${payment.reward_amount}" pattern="#,###" />
															</td>
															<td>
																<fmt:formatNumber value="${payment.used_point_amount}" pattern="#,###" />
															</td>
															<td>
																<fmt:formatNumber value="${payment.used_coupon_amount}" pattern="#,###" />
															</td>
															<td>
																<fmt:formatNumber value="${payment.delivery_fee}" pattern="#,###" />원
															</td>
															<td>
																<fmt:formatNumber value="${payment.donation}" pattern="#,###" />원
															</td>
															<td>
																<strong><fmt:formatNumber value="${payment.total_amount}" pattern="#,###" />원
																</strong>
															</td>
														</tr>
													</c:forEach>
												</tbody>
											</c:when>
											<c:otherwise>
												<tr style="text-align: center;">
													<td>참여 내역이 없습니다.</td>
												</tr>
											</c:otherwise>
										</c:choose>
										
									</table>
								</div>
							</div>
							<div class="row justify-content-end">
								<div class="col-sm-10"
									style="text-align: center; padding: 20px">
									<button type="button" class="btn btn-primary"
										onclick="history.back(); return false;">뒤로가기</button>
								</div>
							</div>
						</div>
					</div>

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