<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="resources/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

<title>관리자 - 메인</title>

<meta name="description" content="">

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="resources/assets/img/favicon/favicon.ico">

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
	rel="stylesheet">

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet" href="resources/assets/vendor/fonts/boxicons.css">

<!-- Core CSS -->
<link rel="stylesheet" href="resources/assets/vendor/css/core.css"
	class="template-customizer-core-css">
<link rel="stylesheet"
	href="resources/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css">
<link rel="stylesheet" href="resources/assets/css/demo.css">

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css">

<link rel="stylesheet"
	href="resources/assets/vendor/libs/apex-charts/apex-charts.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />

<!-- Page CSS -->

<!-- Helpers -->
<script src="resources/assets/vendor/js/helpers.js"></script>
<style type="text/css">
.layout-menu-fixed .layout-navbar-full .layout-menu, .layout-page {
	padding-top: 0px !important;
}

.content-wrapper {
	padding-bottom: 0px !important;
}
</style>


<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="resources/assets/js/config.js"></script>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
	google.charts.load("current", {
		packages : [ "corechart" ]
	});
	google.charts.setOnLoadCallback(drawChart);
	function drawChart() {
		var data = google.visualization.arrayToDataTable([
				[ 'Task', 'Hours per Day' ], [ 'Work', 11 ], [ 'Eat', 2 ],
				[ 'Commute', 2 ], [ 'Watch TV', 2 ], [ 'Sleep', 7 ] ]);

		var options = {
			title : 'My Daily Activities',
			pieHole : 0.4,
		};

		var chart = new google.visualization.PieChart(document
				.getElementById('donutchart'));
		chart.draw(data, options);
	}
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
				<!--  content -->
				<div class="content-wrapper" style="margin-top: 50px;">
					<div class="container-xxl flex-grow-1 container-p-y">
						<div class="row">
							<!-- Order Statistics -->
							<div class="col-md-6 col-lg-12 col-xl-6 order-0 mb-4">
								<div class="card h-100">
									<div
										class="card-header d-flex align-items-center justify-content-between pb-0">
										<div class="card-title mb-0">
											<h5 class="m-0 me-2">Order Statistics</h5>
										</div>
										<div class="dropdown">
											<button class="btn p-0" type="button" id="orederStatistics"
												data-bs-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">
												<i class="bx bx-dots-vertical-rounded"></i>
											</button>
										</div>
									</div>
									<div class="card-body">
										<div
											class="d-flex justify-content-between align-items-center mb-3"
											style="position: relative;">
											<div class="d-flex flex-column align-items-center gap-1">
												<span>총 프로젝트</span>
												<h2 class="mb-2">${count.project }개</h2>
											</div>
											<div id="orderStatisticsChart" style="min-height: 137.55px;">
											</div>
											<div class="resize-triggers">
												<div class="expand-trigger">
													<div style="width: 263px; height: 139px;"></div>
												</div>
												<div class="contract-trigger"></div>
											</div>
										</div>
										<ul class="p-0 m-0">
											<li class="d-flex mb-4 pb-1">
												<div class="avatar flex-shrink-0 me-3">
													<span class="avatar-initial rounded bg-label-primary"><i
														class="bx bx-mobile-alt"></i></span>
												</div>
												<div
													class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
													<div class="me-2">
														<h6 class="mb-0">테크/가전</h6>
														<small class="text-muted">Mobile, Earbuds, TV</small>
													</div>
													<div class="user-progress">
														<small class="fw-semibold">${count.food }</small>
													</div>
												</div>
											</li>
											<li class="d-flex mb-4 pb-1">
												<div class="avatar flex-shrink-0 me-3">
													<span class="avatar-initial rounded bg-label-success"><i
														class="bx bx-closet"></i></span>
												</div>
												<div
													class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
													<div class="me-2">
														<h6 class="mb-0">패션/잡화</h6>
														<small class="text-muted">T-shirt, Jeans, Shoes</small>
													</div>
													<div class="user-progress">
														<small class="fw-semibold">23.8k</small>
													</div>
												</div>
											</li>
											<li class="d-flex mb-4 pb-1">
												<div class="avatar flex-shrink-0 me-3">
													<span class="avatar-initial rounded bg-label-info"><i
														class="bx bx-home-alt"></i></span>
												</div>
												<div
													class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
													<div class="me-2">
														<h6 class="mb-0">홈/리빙</h6>
														<small class="text-muted">Fine Art, Dining</small>
													</div>
													<div class="user-progress">
														<small class="fw-semibold">849k</small>
													</div>
												</div>
											</li>
											<li class="d-flex">
												<div class="avatar flex-shrink-0 me-3">
													<span class="avatar-initial rounded bg-label-secondary"><i
														class="bx bx-football"></i></span>
												</div>
												<div
													class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
													<div class="me-2">
														<h6 class="mb-0">푸드</h6>
														<small class="text-muted">Football, Cricket Kit</small>
													</div>
													<div class="user-progress">
														<small class="fw-semibold">99</small>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!--/ Order Statistics -->
							<!-- Expense Overview -->
							<div class="col-md-6 col-lg-12 col-xl-6 order-0 mb-4">
								<div class="card h-100">
									<div class="card-body px-0">
										<div class="tab-content p-0">
											<canvas id="myChart" style="width: 100px;"></canvas>
											<hr>
											<script>
												const ctx = document
														.getElementById(
																'myChart')
														.getContext('2d');
												// const 변수타입과 ctx 변수명은 Chart.js 기본문서에서 사용하고 있으니 따라했다.
												// ctx는 sample 코드들에서 다 사용하기 때문에 불편하지 않게 ctx로 연습하자.
												const myChart = new Chart(
														ctx,
														{
															type : 'line',
															data : {
																labels : [
																		'6일전',
																		'5일전',
																		'4일전',
																		'3일전',
																		'2일전',
																		'1일전',
																		'오늘' ], // x축의 이름
																datasets : [ // y축에 들어갈 데이터들
																{
																	label : '누적 결제 금액', //범례
																	data : [ ${balanceCount.first},
																		${balanceCount.second},
																		${balanceCount.third},
// 																		${balanceCount.fourth},
// 																		${balanceCount.fifth},
// 																		${balanceCount.sixth},
// 																		${balanceCount.seventh} ]
																]
																// 값
																} ]
															}
														});
											</script>
										</div>
									</div>
								</div>
							</div>
							<!--/ Expense Overview -->

							<!-- Transactions -->

							<!--/ Transactions -->
						</div>
					</div>
				</div>
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
		<script
			src="${pageContext.request.contextPath }/resources/assets/vendor/libs/apex-charts/apexcharts.js"></script>

		<!-- Main JS -->
		<script
			src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>

		<!-- Page JS -->
		<script
			src="${pageContext.request.contextPath }/resources/assets/js/dashboards-analytics.js"></script>

		<!-- Place this tag in your head or just before your close body tag. -->
		<script async="" defer="" src="https://buttons.github.io/buttons.js"></script>
</body>
</html>