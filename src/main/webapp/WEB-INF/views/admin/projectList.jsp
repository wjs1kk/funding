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
	$(function() {
		$("#selectOption").on("change", function() {
			$.ajax({
				 url: 'projectList',
		          type: 'GET',
		          success: function() {
		        	  location.href = "projectList?selectOption="+$("#selectOption").val()
	        	  }
			})
		})
		
		let option = ${selectOption};
		
		if(option != null){
			$('#selectOption option').eq(option).prop('selected', true);
		}
		
	})
	

	
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
				<nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme"
					id="layout-navbar">
					<div
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0   d-xl-none ">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>
					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">
						<!-- Search -->
						<!-- 2023-06-02 박경은 - 검색기능(searchKeyword) 추가 -->
						<form action="memberList">
							<div class="navbar-nav align-items-center">
								<div class="nav-item d-flex align-items-center">
									<i class="bx bx-search fs-4 lh-0"></i> <input type="text"
										class="form-control border-0 shadow-none search"
										placeholder="Search..." aria-label="Search..."
										name="searchKeyword" value="${param.searchKeyword }"
										id="searchKeyword"> <input class="enter" type="submit"
										hidden="" />
								</div>
							</div>
						</form>
						<!-- /Search -->
						<ul class="navbar-nav flex-row align-items-center ms-auto">
							<!-- User -->
							<!-- 2023-06-02 박경은 - 로그아웃 -->
							<li class="nav-item navbar-dropdown dropdown-user dropdown">
								<a class="dropdown-item" href="logout"> <i
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
					<input type="hidden" id="label" name="label" value="">
					<div class="container-xxl flex-grow-1 container-p-y">
						<h4 class="fw-bold py-3 mb-4">
							<span class="text-muted fw-light"></span> 프로젝트 목록 
						</h4>
						
						<select class="select2 form-select"
							id="selectOption" style="width: 150px; margin-bottom: 20px;">
							<option value="0">전체</option>
							<option value="1">진행중</option>
							<option value="2">마감</option>
						</select>
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
									<c:choose>
										<c:when test="${!empty projects }">
											<tbody class="table-border-bottom-0">
										<c:forEach var="projects" items="${projects }">
											<tr class="cursor-pointer"
												onclick="location.href='projectList/${projects.project_idx}'">
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
												<c:choose>
													<c:when test="${projects.target_rate < 0 || empty projects.target_rate }">
														<td>0 %</td>
													</c:when>
													<c:otherwise>
														<td><fmt:formatNumber value="${projects.target_rate }" pattern="#,###" />%</td>
													</c:otherwise>
												</c:choose>
												<td>${projects.project_detail_person }명</td>
											
											</tr>
										</c:forEach>
									</tbody>
										</c:when>
										<c:otherwise>
											<td>등록된 내역이 없습니다.</td>
										</c:otherwise>
									</c:choose>
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