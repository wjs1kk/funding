<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko" class="">
<head>


<title>공지사항</title>

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?6b20ab93">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?97a6eedb">
<link rel="stylesheet" type="text/css" href="https://cdn.wadiz.kr/resources/static/editor/4.0.15/froala_custom.css?v=20221206">
<link rel="stylesheet" href="resources/css/notice_view_wboard.css">
	
	
<body>
	<div id="page-container">

		<div class="black-bg-wrap" style="display: none;"></div>

		<jsp:include page="../inc/top.jsp"></jsp:include>

		<form id="forwardForm" method="get">
			<input type="hidden" id="returnURL" name="returnURL">
		</form>
		<input type="hidden" id="sessionLoginCheck" value="false">

		<div id="newContainer">
			<div id="wBoardWrap">
				<div class="wboard-wrap">
					<div class="wboard-detail-content">
						<div class="article-top">
							<p class="title">${noticeMap.board_subject }</p>
							<div class="info">
								<em class="user-img"
									style="background-image: url(https://static.wadiz.kr/assets/icon/apple-touch-icon.png)"></em>
								<span class="user-info">와디즈 <br>${fn:substring(noticeMap.board_date,0,10)}
								</span>

							</div>
						</div>
						<div class="inner-contents">
							<h2>${noticeMap.board_content }</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<jsp:include page="../inc/footer.jsp"></jsp:include>

	</div>

</body>
</html>