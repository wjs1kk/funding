<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?97a6eedb">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?6b20ab93">
<link rel="stylesheet" href="https://static.wadiz.kr/landing/board.ff97f96e.css">
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>

</head>
<body>
	<div id="page-container">
		
		<!-- top.jsp -->
		<jsp:include page="../inc/top.jsp"></jsp:include>

		<form id="forwardForm" method="get">
			<input type="hidden" id="returnURL" name="returnURL">
		</form>
		<input type="hidden" id="sessionLoginCheck" value="true">

		<main class="board wzui">
			<div class="ui-header">
				<h2 class="title">공지 사항</h2>
			</div>
			<div aria-hidden="true"></div>
			<div class="ui-tabs">
				<ul>
					<!-- 전체, 이벤트 메뉴 삭제 -->
					<li class="active"><a>공지</a></li>
				</ul>
			</div>



			<div class="board-main">
				<ul>
					<c:forEach items="${noticeList }" var="noticeList">
						<li><a class="article "
							href="noticeDetail?board_idx=${noticeList.board_idx}">
								<em class="notice">중요</em>
								<div class="info">
	
									<h3 class="title">${noticeList.board_subject }</h3>
									<span class="author">와디즈</span><span class="created-at">
										${fn:substring(noticeList.board_date,0,10)}
									</span>
								</div>
						</a></li>
					</c:forEach>
				</ul>
			</div>
			<div class="board-footer">
				<div class="pagination">
					<!-- 모바일용 버튼 -->
					<button class="prev-page icon-chevron-left mobile-only"
						onclick="movePage(0)" disabled="">
						<span class="text-hidden">이전 목록</span>
					</button>
					<div class="page">
						<!-- 모바일용 페이지 리스트 -->
						<div class="mobile-only">
							<span class="current-count">1</span>/<span class="total-count"><span>103</span>
								페이지</span>
						</div>

					</div>
					<!-- 모바일용 버튼 -->
					<button class="next-page icon-chevron-right mobile-only"
						onclick="movePage(2)">
						<span class="text-hidden">다음 목록</span>
					</button>
				</div>
				<div class="search">
					<form method="get" id="news-board-search" action="notice">
						<div class="filter-container">
							<select id="searchSelectInBoard" class="filter" name="">
								<option value="tc">제목</option>
							</select>
						</div>
						<div class="field">
							<label class="text-hidden" for="">검색창</label> <input
								id="searchTextInBoard" name="searchText"
								class="search-form" type="text" value="">
							<button class="btn-search dense" type="submit">검색</button>
						</div>
						<input id="searchText1" name="searchText1" type="hidden" value="">
						<input id="searchSelect1" name="searchSelect1" type="hidden"
							value=""> <input id="searchSelect2" name="searchSelect2"
							type="hidden" value=""> <input id="searchSelect4"
							name="searchSelect4" type="hidden" value=""> <input
							id="searchSelect5" name="searchSelect5" type="hidden" value="">
					</form>
				</div>
			</div>
			<div aria-hidden="true"
				style="position: relative; left: 0px; bottom: 48px; width: 100%;"></div>
		</main>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
</body>
</html>