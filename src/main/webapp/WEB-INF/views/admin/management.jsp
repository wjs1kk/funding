<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default"
	data-assets-path="${pageContext.request.contextPath }/resources/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />
<title>관리자 - 정산관리</title>
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
<script type="text/javascript">
	<!-- 모달 -->
	function modal(calculate_idx, project_title, calculate_fee, member_idx, project_idx) {
		
		$("#modalId").modal('show');
		$("#member_idx").val(member_idx);
		$("#calculate_idx").val(calculate_idx);
		$("#project_title").val(project_title);
		$("#calculate_fee").val(calculate_fee);
		$("#project_idx").val(project_idx);
		
		
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

<!--
경은 css 추가 시작 --> <style type ="text /css ">.pagination {
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
				<!-- 모달 -->
				<form id="modalForm" action="bank_deposit" method="post"
					onsubmit="return confirm('정산 처리 하시겠습니까?')">
					
					<div class="modal fade" id="modalId" tabindex="-1" aria-modal="true"
						style="display: none" role="dialog">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalLabel1">Modal
										title</h5>
									<button type="button" id="xBtndenied" class="btn-close"
										data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col mb-3">
											<label for="nameBasic" class="form-label">프로젝트명</label> <input
												type="text" id="project_title" readonly="readonly"
												name="project_title" class="form-control" value="${project_title }"
												placeholder="Enter Name" />
										</div>
									</div>
									<div class="row">
										<div class="col mb-3" >
											<label for="nameBasic" class="form-label">정산금액</label> 
											<input
												type="text" id="calculate_fee" readonly="readonly"
												 class="form-control" name="calculate_fee"
												placeholder="Enter Name" />
											
											<br>
											
										</div>
									</div>
								</div>
								<input type="hidden" id="member_idx" name="member_idx" value="${member_idx}">
								<input type="hidden" name="fintech_use_num" value="${fintech_use_num }">
								<input type="hidden" name="recv_client_fintech_use_num" value="120211385488932372197288">
								<input type="hidden" id="calculate_idx" name="calculate_idx" value="${calculate_idx}">
								<input type="hidden" id="calculate_fee" name="calculate_fee" value="${calculate_fee}">
								<input type="hidden" id="project_idx" name="project_idx" value="${project_idx}">

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
				<!-- /모달 -->

				<!-- Content wrapper -->
				<div class="content-wrapper">
					<!-- Content -->

					<div class="container-xxl flex-grow-1 container-p-y">
						<h4 class="fw-bold py-3 mb-4">정산관리</h4>
						<div class="card">
							<div class="table-responsive text-nowrap">
								<table class="table table-striped">
									<thead>
										<tr>
											<th>NO</th>
											<th>프로젝트명</th>
											<th>신청날짜</th>
											<th>신청자</th>
											<th>상태</th>
											<th>정산금액</th>
											<th></th>
										</tr>
									</thead>
									<c:choose>
										<c:when test="${!empty list }">
											<tbody class="table-border-bottom-0">
												<c:forEach var="list" items="${list }">
													<tr class="cursor-pointer">
														<td>${list.calculate_idx }</td>
														<td>${list.project_title }</td>
														<td>${list.calculate_Date }</td>
														<td>${list.member_name }</td>
														<c:choose>
															<c:when test="${list.calculate_approve == 1 }">
																<td>정산완료</td>
															</c:when>
															<c:otherwise>
																<td>미정산</td>
															</c:otherwise>
														</c:choose>
														<td><fmt:formatNumber value="${list.calculate_fee }"
																pattern="#,###" />원
														</td>
														<td>
															<button class="btn btn-outline-primary"
																onclick="modal('${list.calculate_idx}', '${list.project_title}','${list.calculate_fee }','${list.member_idx }','${list.project_idx }')">정산하기</button>
														</td>
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
						<!--/ Striped Rows -->



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