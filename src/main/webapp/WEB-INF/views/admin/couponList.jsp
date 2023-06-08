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
<title>와디즈 관리자 - 회원목록</title>
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
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	function submit() {
		alert('쿠폰 승인이 완료되었습니다.');
		let form = document.createElement('form');

		form.submit();
	}
</script>
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
						<h4 class="fw-bold py-3 mb-4">
							<span class="text-muted fw-light"></span> 쿠폰관리 목록
						</h4>
						<div class="card">
							<div class="table-responsive text-nowrap"
								style="overflow: visible;">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>NO</th>
											<th>쿠폰명(쿠폰코드)</th>
											<th>신청자</th>
											<th>쿠폰 할인율</th>
											<th>쿠폰 시작일</th>
											<th>쿠폰 종료일</th>
											<th>승인상태</th>
										</tr>
									</thead>
									<tbody id="titleElement" class="table-border-bottom-0">
										<c:forEach var="couponList" items="${couponList }">
											<tr>
												<td>${couponList.coupon_idx }</td>
												<td>${couponList.coupon_name }
													(${couponList.coupon_code })</td>
												<td>${couponList.coupon_percent}</td>
												<td>${couponList.maker_idx }</td>
												<td>${couponList.coupon_start }</td>
												<td>${couponList.coupon_end }</td>
												<td>
													<form action="couponListPro" name="couponList"
														id="couponList" method="post">
														<input type="hidden" name="coupon_idx"
															value="${couponList.coupon_idx }"> <select
															class="select2 form-select" name="coupon_isadmin"
															id="coupon_isadmin" onchange="submit()">
															<c:choose>
																<c:when test="${couponList.coupon_isadmin eq 0}">
																	<option value="0" selected>승인 전</option>
																	<option value="1">승인완료</option>
																</c:when>
																<c:otherwise>
																	<option value="0">승인 전</option>
																	<option value="1" selected>승인완료</option>
																</c:otherwise>
															</c:choose>
														</select>
													</form>
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
