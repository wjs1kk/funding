<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta charset="UTF-8">
<title>아이펀드</title>
<script src="/yata/resources/js/jquery-3.6.4.js"></script>
<link rel="stylesheet" href="../resources/css/mypage.css">

<style type="text/css">
.mypage-section {
	display: none;
}
.on {
	display: block;
}
</style>
</head>
<body>
	<div class="container py-5">
		<div class="row">
			<div class="col-md-4 text-left dc-block pb-10">
				<div class="sticky-md sticky-pc-menu-top">
				</div>
			</div>
			<div class="col-md-8 pb-6">
				<div class="mypage-section" id="mypage_section_help">
					<div class="container-help-search-bar">
						<div class="position-relative">
							<div class="container-input-common-search box-round-gray mx-lg-0">
								<span class="icon mr-2">
								<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNBQUI0QzYiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTYuMjE4IDExLjg0MUMzLjMzNiAxMS44NDEgMSA5LjQxNCAxIDYuNDIxIDEgMy40MjcgMy4zMzYgMSA2LjIxOCAxczUuMjE4IDIuNDI3IDUuMjE4IDUuNDJjMCAuOTc0LS4yNDcgMS44ODctLjY3OSAyLjY3Ni4wNjMuMDQuMTIyLjA5LjE3Ny4xNDZsMy43NzggMy45MjVjLjM4My4zOTguMzgzIDEuMDQzIDAgMS40NDFsLS4wODkuMDkyYy0uMzgzLjM5OC0xLjAwNC4zOTgtMS4zODcgMGwtMy43NzgtMy45MjVjLS4wMi0uMDItLjAzNy0uMDQtLjA1NC0uMDYtLjg4Mi43MDYtMS45ODcgMS4xMjYtMy4xODYgMS4xMjZ6bTAtMi4xNjhjMS43MyAwIDMuMTMxLTEuNDU2IDMuMTMxLTMuMjUyIDAtMS43OTctMS40MDItMy4yNTMtMy4xMy0zLjI1My0xLjczIDAtMy4xMzIgMS40NTYtMy4xMzIgMy4yNTMgMCAxLjc5NiAxLjQwMiAzLjI1MiAzLjEzMSAzLjI1MnoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K"></span>
								<input class="js-input-deletable csSearchBar" id="help_input_search" name="csSearchBar" placeholder="질문 검색하기 (예. 예약, 취소, 환불)">
								<div class="js-btn-delete-input btn-input-close-sm round-input click-effect-press" data-input="help_input_search">
									<div class="wrapper">
										<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgZmlsbD0ibm9uZSIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxwYXRoIGZpbGw9IiNDNEM0QzQiIGQ9Ik04IDE1YzMuODY2IDAgNy0zLjEzNCA3LTdzLTMuMTM0LTctNy03LTcgMy4xMzQtNyA3IDMuMTM0IDcgNyA3eiIvPgogICAgPHBhdGggZmlsbD0iI2ZmZiIgZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNNy4yOTMgOGwtMi4xMjEgMi4xMjIuNzA3LjcwN0w4IDguNzA3bDIuMTIyIDIuMTIyLjcwNy0uNzA3TDguNzA3IDggMTAuODMgNS44OGwtLjcwNy0uNzA3TDggNy4yOTMgNS44OCA1LjE3MmwtLjcwNy43MDdMNy4yOTMgOHoiIGNsaXAtcnVsZT0iZXZlbm9kZCIvPgo8L3N2Zz4K">
									</div>
								</div>
								<button class="btn btn-primary btn-sm px-3 ml-1 csSearchBtn" id="csSearchBtn" name="csSearchBtn">검색</button>
							</div>
						</div>
					</div>
				</div>
				
				<div class="mypage-section on" id="mypage_section_setting">
					<table class="tb-list">
						<colgroup>
							<col>
							<col style="width: 18%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">제목</th>
								<th scope="col">날짜</th>
							</tr>
						</thead>
				<c:forEach var="inquiryList" items="${inquiryList}">
						<tbody id="notice_list">
							<tr>
								<td class="tb-subj"> 
									<span class="it-notice" style="background-color: #ffab00">${inquiryList.inq_progress}</span>
									<a href="inquiry_view?inq_idx=${inquiryList.inq_idx }"> ${inquiryList.inq_subject} </a></td>
								<td>${inquiryList.inq_date}</td>
							</tr>
						</tbody>
				</c:forEach>
					</table>

					<section id="buttonArea">
						<input class="writeBtn" type="button" value="문의하기" onclick="location.href='inquiry_form'">
					</section>

					<section id="pageList">
						<input type="button" value="이전">
							<b>1</b>
						<input type="button" value="다음">
					</section>
				</div>
			</div>
		</div>
	</div>
	
</body></html>