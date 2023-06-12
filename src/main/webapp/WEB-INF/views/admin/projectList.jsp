<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="resources/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

<title>관리자 - 프로젝트 관리</title>
	
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="${pageContext.request.contextPath}/resources/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="${pageContext.request.contextPath}/resources/assets/js/config.js"></script>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
	
ul li {
    list-style:none;
    float: right;
    margin-left: 20px;
    display: flex;
}

</style>

<style>
.labelFont {
 color: black;
 
}
</style>	
<script type="text/javascript">
// 	var selectElement = document.getElementById("selectOption");


	
</script>	
</head>
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
				<nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
			      <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0   d-xl-none ">
			        <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
			          <i class="bx bx-menu bx-sm"></i>
			        </a>
			      </div>    
			      <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">    
			        <!-- Search -->
			        <div class="navbar-nav align-items-center">
			          <div class="nav-item d-flex align-items-center">
			            <i class="bx bx-search fs-4 lh-0"></i>
			            <input type="text" class="form-control border-0 shadow-none" placeholder="Search..." aria-label="Search...">
			          </div>
			        </div>
			        <!-- /Search -->       
			        <ul class="navbar-nav flex-row align-items-center ms-auto">        
			          <!-- Place this tag where you want the button to render. -->
			          <li class="nav-item lh-1 me-3">
			            <span></span>
			          </li>
			          <!-- User -->
			          <li class="nav-item navbar-dropdown dropdown-user dropdown">
			            <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
			              <div class="avatar avatar-online">
<!-- 			                <img src="../assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle"> -->
			              </div>
			            </a>
			            <ul class="dropdown-menu dropdown-menu-end">
			              <li>
			                <a class="dropdown-item" href="#">
			                  <div class="d-flex">
			                    <div class="flex-shrink-0 me-3">
			                      <div class="avatar avatar-online">
<!-- 			                        <img src="../assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle"> -->
			                      </div>
			                    </div>
			                    <div class="flex-grow-1">
			                      <span class="fw-semibold d-block">John Doe</span>
			                      <small class="text-muted">Admin</small>
			                    </div>
			                  </div>
			                </a>
			              </li>
			              <li>
			                <div class="dropdown-divider"></div>
			              </li>
			              <li>
			                <a class="dropdown-item" href="#">
			                  <i class="bx bx-user me-2"></i>
			                  <span class="align-middle">My Profile</span>
			                </a>
			              </li>
			              <li>
			                <a class="dropdown-item" href="#">
			                  <i class="bx bx-cog me-2"></i>
			                  <span class="align-middle">Settings</span>
			                </a>
			              </li>
			              <li>
			                <a class="dropdown-item" href="#">
			                  <span class="d-flex align-items-center align-middle">
			                    <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
			                    <span class="flex-grow-1 align-middle">Billing</span>
			                    <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
			                  </span>
			                </a>
			              </li>
			              <li>
			                <div class="dropdown-divider"></div>
			              </li>
			              <li>
			                <a class="dropdown-item" href="auth-login-basic.html">
			                  <i class="bx bx-power-off me-2"></i>
			                  <span class="align-middle">Log Out</span>
			                </a>
			              </li>
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
					<input type="hidden" id="label" name="label" value="">
					<div class="container-xxl flex-grow-1 container-p-y">
						<h4 class="fw-bold py-3 mb-4">
							<span class="text-muted fw-light"></span> 프로젝트 목록 
						</h4>
						<form id="selectForm" action="projectSelectOption" method="post" name="selectForm">
							<select class="select2 form-select"
								id="selectOption" onchange="this.form.submit()" style="width: 150px; margin-bottom: 20px;">
								<option value="0" selected>전체</option>
								<option value="1">진행중</option>
								<option value="2">마감</option>
								<option value="3">승인거부</option>
								<option value="4">검색 추가 예정</option>
							</select>
						</form>
						<div class="card">
							<div class="table-responsive text-nowrap">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>NO</th>
											<th>상태</th>
											<th>프로젝트명</th>
											<th>유형</th>
											<th>승인</th>
											<th>기간</th>
											<th>진행률</th>
											<th>참여자수</th>
										</tr>
									</thead>
									<tbody class="table-border-bottom-0">
										<c:forEach var="projects" items="${projects }">
											<tr class="cursor-pointer"
												onclick="location.href='detail/${projects.project_idx}'">
												<td>${projects.project_idx }</td>
												<c:choose>
													<c:when test="${projects.project_status eq 2 }">
														<td id="td_project_plan">
															<span class="badge bg-danger">마  감</span>
														</td>
													</c:when>
													<c:when test="${projects.project_status eq 1 }">
														<td id="td_project_plan">
															<span class="badge bg-primary">진행중</span>
														</td>
													</c:when>
													<c:otherwise>
														<td id="td_project_plan">
															<span class="badge bg-label-secondary">오픈전</span>
														</td>
													</c:otherwise>
												</c:choose>
												<td>${projects.project_title }</td>
												<c:choose>
													<c:when test="${projects.project_type eq 0}">
														<td>펀딩</td>
													</c:when>
													<c:otherwise>
														<td>공동구매</td>
													</c:otherwise>
												</c:choose>
												<c:choose>
													<c:when test="${projects.project_approve_status eq 3 }">
														<td>거부</td>
													</c:when>
													<c:when test="${projects.project_approve_status eq 2 }">
														<td>승인</td>
													</c:when>
													<c:when test="${projects.project_approve_status eq 1 }">
														<td>대기</td>
													</c:when>
													<c:otherwise>
														<td id="td_project_plan">
															<span class="badge bg-label-secondary">미제출</span>
														</td>
													</c:otherwise>
												</c:choose>
												<td>${projects.project_start_date } ~ ${projects.project_end_date }</td>
												<td><fmt:formatNumber value="${projects.target_rate }" pattern="#,###" />%</td>
												<td>${projects.project_detail_person }명</td>
											
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
	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/libs/jquery/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/libs/popper/popper.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/js/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

	<script src="${pageContext.request.contextPath}/resources/assets/vendor/js/menu.js"></script>
	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

	<!-- Page JS -->

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>