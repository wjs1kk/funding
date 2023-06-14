<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default"
	data-assets-path="${pageContext.request.contextPath }/resources/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<meta name="description" content="" />

<title>와디즈 관리자 - 회원관리 상세</title>

<link
	href="${pageContext.request.contextPath }/resources/assets/img/favicon/favicon.ico"
	rel="icon" type="image/x-icon" />
<link href="https://fonts.googleapis.com" rel="preconnect" />
<link href="https://fonts.gstatic.com" crossorigin rel="preconnect" />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/resources/assets/vendor/fonts/boxicons.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/resources/assets/vendor/css/core.css"
	rel="stylesheet" class="template-customizer-core-css" />
<link
	href="${pageContext.request.contextPath }/resources/assets/vendor/css/theme-default.css"
	rel="stylesheet" class="template-customizer-theme-css" />
<link
	href="${pageContext.request.contextPath }/resources/assets/css/demo.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath }/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css"
	rel="stylesheet" />
<script
	src="${pageContext.request.contextPath }/resources/assets/vendor/js/helpers.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/assets/js/config.js"></script>
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

					<div class="container-xxl flex-grow-1 container-p-y">
						<h4 class="fw-bold py-3 mb-4">회원목록</h4>

						<!-- Basic Layout & Basic with Icons -->
						<div class="row">
							<!-- Basic Layout -->
							<div class="col-xxl">
								<div class="card mb-4">
									<div
										class="card-header d-flex align-items-center justify-content-between">
										<h5 class="mb-0" id="member_name">구매자 정보</h5>
										<small class="text-muted float-end">Supporter Info</small>
									</div>
									<div class="card-body">
										<form action="memberListDetailPro" name="memberList"
											method="post">
											<input type="hidden" name="member_idx"
												value="${param.member_idx }"> <input type="hidden"
												name="pageNum" value="${param.pageNum }">
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label" for="member_name">이름</label>
												<div class="col-sm-10">
													<div class="input-group input-group-merge">
														<input type="text" id="member_name" name="member_name"
															class="form-control" value="${memberInfo.member_name}"
															aria-label="john.doe" readonly="readonly"
															aria-describedby="basic-default-email2">
													</div>
												</div>
											</div>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label" for="member_email">이메일</label>
												<div class="col-sm-10">
													<div class="input-group input-group-merge">
														<input type="text" id="member_email" name="member_email"
															class="form-control" value="${memberInfo.member_email}"
															aria-label="john.doe" readonly="readonly"
															aria-describedby="basic-default-email2">
													</div>
												</div>
											</div>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label"
													for="basic-default-phone">전화번호</label>
												<div class="col-sm-10">
													<input type="text" id="basic-default-phone"
														class="form-control phone-mask" aria-label="658 799 8941"
														readonly="readonly" value="${memberInfo.member_phone}">
												</div>
											</div>

										</form>
									</div>
								</div>
							</div>
							<!-- Basic with Icons -->
						</div>
					</div>
					<div class="container-xxl flex-grow-1 container-p-y">
						<!-- Basic Layout & Basic with Icons -->
						<div class="row">
							<!-- Basic Layout -->
							<div class="col-xxl">
								<div class="card mb-4">
									<div
										class="card-header d-flex align-items-center justify-content-between">
										<h5 class="mb-0" id="member_name">판매자 정보</h5>
										<!-- 2023-05-30 박경은 - Maker Info 에서 Representative Info로 수정 -->
										<!-- 2023-05-30 박경은 - memberInfo 와 별도로 repInfo 로 수정 및 DB변경에 따라 html 수정 -->
										<small class="text-muted float-end">Representative Info</small>
									</div>
									<div class="card-body">
										<form action="memberListDetailPro" name="memberInfo"
											method="post">
											<input type="hidden" name="member_idx"
												value="${param.member_idx }"> <input type="hidden"
												name="pageNum" value="${param.pageNum }">
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label" for="member_name">대표자
													이름</label>
												<div class="col-sm-10">
													<div class="input-group input-group-merge">
														<input type="text" id="member_name" name="member_name"
															class="form-control" value="${repInfo.rep_name}"
															aria-label="john.doe" readonly="readonly"
															aria-describedby="basic-default-email2">
													</div>
												</div>
											</div>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label" for="member_email">대표자
													이메일</label>
												<div class="col-sm-10">
													<div class="input-group input-group-merge">
														<input type="text" id="member_email" name="member_email"
															class="form-control" value="${repInfo.rep_email}"
															aria-label="john.doe" readonly="readonly"
															aria-describedby="basic-default-email2">
													</div>
												</div>
											</div>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label"
													for="basic-default-phone">세금계산서 이메일</label>
												<div class="col-sm-10">
													<input type="text" id="basic-default-phone"
														class="form-control phone-mask"
														value="${repInfo.rep_tax_email}"
														aria-label="658 799 8941" readonly="readonly"
														aria-describedby="basic-default-phone">
												</div>
											</div>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label"
													for="basic-default-phone">세금계산서 은행</label>
												<div class="col-sm-10">
													<input type="text" id="basic-default-phone"
														class="form-control phone-mask"
														value="${repInfo.rep_tax_bank}"
														aria-label="658 799 8941" readonly="readonly"
														aria-describedby="basic-default-phone">
												</div>
											</div>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label"
													for="basic-default-phone">세금계산서 계좌번호</label>
												<div class="col-sm-10">
													<input type="text" id="basic-default-phone"
														class="form-control phone-mask"
														value="${repInfo.rep_tax_account}"
														aria-label="658 799 8941" readonly="readonly"
														aria-describedby="basic-default-phone">
												</div>
											</div>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label"
													for="basic-default-phone">세금계산서 예금주명</label>
												<div class="col-sm-10">
													<input type="text" id="basic-default-phone"
														class="form-control phone-mask"
														value="${repInfo.rep_tax_depositor}"
														aria-label="658 799 8941" readonly="readonly"
														aria-describedby="basic-default-phone">
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
							<!-- Basic with Icons -->

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

	<script
		src="${pageContext.request.contextPath }/resources/assets/vendor/libs/jquery/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/vendor/libs/popper/popper.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/vendor/js/bootstrap.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/vendor/js/menu.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>
	<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>