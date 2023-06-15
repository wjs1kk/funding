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

<title>관리자 - 정산 내역 관리</title>

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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<style>
ul li {
	list-style: none;
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
	$(
			function() {
				$("#selectOption").on(
						"change",
						function() {
							$.ajax({
								url : 'managementList',
								type : 'GET',
								success : function() {
									location.href = "managementList?selectOption="
											+ $("#selectOption").val()
								}
							})
						})

				let option = $
				{
					selectOption
				}
				;

				if (option != null) {
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
						<!-- Search -->
						<div class="navbar-nav align-items-center">
							<div class="nav-item d-flex align-items-center">
								<i class="bx bx-search fs-4 lh-0"></i> <input type="text"
									class="form-control border-0 shadow-none"
									placeholder="Search..." aria-label="Search...">
							</div>
						</div>
						<!-- /Search -->
						<ul class="navbar-nav flex-row align-items-center ms-auto">
							<!-- Place this tag where you want the button to render. -->
							<li class="nav-item lh-1 me-3"><span></span></li>
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
							<span class="text-muted fw-light"></span> 정산 내역
						</h4>

						<select class="select2 form-select" id="selectOption"
							style="width: 150px; margin-bottom: 20px;">
							<option>전체</option>
							<option value="0">정산완료</option>
							<option value="1">미정산</option>
						</select>
						<div class="card">
							<div class="table-responsive text-nowrap">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>NO</th>
											<th>거래일자</th>
											<th>예금주명</th>
											<th>거래유형</th>
											<th>정산금액</th>
											<th>잔액</th>
										</tr>
									</thead>
									<c:choose>
										<c:when test="${!empty list}">
											<tbody class="table-border-bottom-0">
												<c:forEach var="list" items="${list }">
													<tr>
														<td>${list.history_idx }</td>
														<td>${list.confirmDate }</td>
														<td>${list.member_name }</td>
														<c:choose>
															<c:when test="${list.history_status == 'd'}">
																<td>입금</td>
															</c:when>
															<c:otherwise>
																<td>출금</td>
															</c:otherwise>
														</c:choose>
														<td><fmt:formatNumber value="${list.tran_amt }" pattern="#,###" />원</td>
														<td><fmt:formatNumber value="${list.balance }" pattern="#,###" />원</td>
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