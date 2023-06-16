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

<title>ifund 관리자 - 공지사항 작성</title>

<meta name="description" content="" />

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath }/resources/assets/img/favicon/favicon.ico" />

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendor/fonts/boxicons.css" />

<!-- Core CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/demo.css" />

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script
	src="${pageContext.request.contextPath }/resources/assets/vendor/js/helpers.js"></script>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script
	src="${pageContext.request.contextPath }/resources/assets/js/config.js"></script>
</head>
<!-- 2023-05-31 박경은 - 스크립트 지움 -->
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

						<!-- 2023-06-02 박경은 - 검색기능(searchKeyword) 추가 -->
						<!-- Search -->
						<form action="newsList">
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
						<h4 class="fw-bold py-3 mb-4">보도자료 작성</h4>

						<!-- Basic Layout & Basic with Icons -->
						<div class="row">
							<!-- Basic Layout -->
							<div class="col-xxl">
								<div class="card mb-4">
									<div
										class="card-header d-flex align-items-center justify-content-between">
									</div>
									<div class="card-body" id="newsList_detail">
										<!-- 2023-05-31 박경은 - enctype="multipart/form-data" 추가 -->
										<form action="newsListWritePro" name="newsList" method="post"
											enctype="multipart/form-data">
											<input type="hidden" name="board_idx" id="board_idx"
												value="${param.board_idx }"> <input type="hidden"
												name="pageNum" value="${param.pageNum }">
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label" for="board_subject">제목</label>
												<div class="col-sm-10">
													<div class="input-group input-group-merge">
														<input type="text" id="board_subject" name="board_subject"
															class="form-control"
															placeholder="제목을 입력하세요." aria-label="john.doe"
															aria-describedby="basic-default-email2">
													</div>
												</div>
											</div>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label" for="board_content">내용</label>
												<div class="col-sm-10">
													<textarea placeholder="내용을 입력하세요." class="form-control"
														id="board_content" name="board_content" rows="3"
														style="height: 206px;"></textarea>
												</div>
											</div>
											<div class="row mb-3">
												<label class="col-sm-2 col-form-label" for="board_file">파일</label>
												<div class="col-sm-10">
													<!-- 2023-05-31 박경은 - name="file"로 수정 -->
													<input class="form-control" type="file" id="board_file"
														name="file">
												</div>
											</div>
											<!-- 2023-05-30 박경은 - 날짜 삭제 -->
											<div class="row justify-content-end">
												<div class="col-sm-10">
													<button type="button" class="btn btn-secondary"
														onclick="javascript:history.back()">목록</button>
													<button type="submit" class="btn btn-primary">저장</button>
													<button type="button" class="btn btn-danger"
														onclick="deleteNews('${news.board_idx}')">삭제</button>
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


	<!-- Core JS -->
	<!-- build:js assets/vendor/js/core.js -->
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
	<!-- endbuild -->

	<!-- Vendors JS -->

	<!-- Main JS -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>

	<!-- Page JS -->

	<!-- Place this tag in your head or just before your close body tag. -->
	<script async defer src="https://buttons.github.io/buttons.js"></script>
</body>
</html>