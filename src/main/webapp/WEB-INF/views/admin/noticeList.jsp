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
<title>와디즈 관리자 - 공지사항</title>
<meta name="description" content="" />
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath }/resources/assets/img/favicon/favicon.ico" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendor/fonts/boxicons.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendor/css/core.css"
	class="template-customizer-core-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/demo.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />
<script
	src="${pageContext.request.contextPath }/resources/assets/vendor/js/helpers.js"></script>
<script
	src="${pageContext.request.contextPath }/resources/assets/js/config.js"></script>

<!-- 경은 css 추가 시작 -->
<style type="text/css">
.pagination {
	justify-content: center;
	padding-top: 30px;
}

.page-link {
	background-color: #fff;
}

.cursor-pointer {
	cursor: pointer;
}
</style>
<!-- 경은 css 추가 끝 -->

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
						class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
						<a class="nav-item nav-link px-0 me-xl-4"
							href="javascript:void(0)"> <i class="bx bx-menu bx-sm"></i>
						</a>
					</div>

					<div class="navbar-nav-right d-flex align-items-center"
						id="navbar-collapse">
						<!-- 2023-06-02 박경은 - 검색기능(searchKeyword) 추가 -->
						<!-- Search -->
						<form action="noticeList">
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
						<h4 class="fw-bold py-3 mb-4">공지사항</h4>
						<div class="card">

							<div class="table-responsive text-nowrap">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>NO</th>
											<th>제목</th>
											<th>날짜</th>
										</tr>
									</thead>
									<tbody class="table-border-bottom-0">
										<c:forEach var="noticeList" items="${noticeList }">
											<tr class="cursor-pointer"
												onclick="location.href='${pageContext.request.contextPath }/admin/noticeListDetail?board_idx=${noticeList.board_idx}'">
												<td>${noticeList.board_idx }</td>
												<td><strong>${noticeList.board_subject }</strong></td>
												<td>${noticeList.board_date }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
						<!--/ Striped Rows -->

						<!-- 2023-05-25 박경은 - 글쓰기 시작  -->
						<div
							style="display: flex; justify-content: right; padding: 20px 20px 0 0;">
							<button type="button" class="btn btn-primary"
								onclick="location.href='noticeListWrite'">글쓰기</button>
						</div>
						<!-- 2023-05-25 박경은 - 글쓰기 끝 -->

						<!-- 페이징 시작 -->
						<nav aria-label="Page navigation">
							<ul class="pagination">

								<c:choose>
									<c:when test="${empty param.pageNum }">
										<c:set var="pageNum" value="1" />
									</c:when>
									<c:otherwise>
										<c:set var="pageNum" value="${param.pageNum }" />
									</c:otherwise>
								</c:choose>

								<c:choose>
									<c:when test="${pageNum > 1 }">
										<li class="page-item prev"><a class="page-link"
											href="javascript:void(0);"> <i
												class="tf-icon bx bx-chevron-left"
												onclick="location.href='${pageContext.request.contextPath }/admin/noticeList?pageNum=${pageNum - 1}'"></i>
										</a></li>
									</c:when>
									<c:otherwise>
										<li class="page-item prev"><a class="page-link"
											href="javascript:void(0);"> <i
												class="tf-icon bx bx-chevron-left"></i>
										</a></li>
									</c:otherwise>
								</c:choose>

								<c:forEach var="num" begin="${pageInfo.startPage }"
									end="${pageInfo.endPage }">
									<c:choose>
										<c:when test="${pageNum eq num }">
											<li class="page-item active"><a class="page-link"
												href="javascript:void(0);">${num }</a></li>
										</c:when>
										<c:when test="${pageNum ne num }">
											<li class="page-item"><a class="page-link"
												href="javascript:void(0);"
												onclick="location.href='${pageContext.request.contextPath }/admin/noticeList?pageNum=${num}'">${num }</a>
											</li>
										</c:when>
									</c:choose>
								</c:forEach>

								<c:choose>
									<c:when test="${pageNum < pageInfo.maxPage }">
										<li class="page-item next"><a class="page-link"
											href="javascript:void(0);"> <i
												class="tf-icon bx bx-chevron-right"
												onclick="location.href='${pageContext.request.contextPath }/admin/noticeList?pageNum=${pageNum + 1}'"></i>
										</a></li>
									</c:when>
									<c:otherwise>
										<li class="page-item next"><a class="page-link"
											href="javascript:void(0);"> <i
												class="tf-icon bx bx-chevron-right"></i>
										</a></li>
									</c:otherwise>
								</c:choose>

							</ul>
						</nav>
						<!-- 페이징 끝 -->

						<hr class="my-5">

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