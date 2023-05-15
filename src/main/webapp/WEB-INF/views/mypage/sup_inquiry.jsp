<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="show-footer">
<head>

<title>와디즈</title>


<link rel="stylesheet"	href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet"	href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
<link rel="stylesheet"	href="https://static.wadiz.kr/static/web/common.css?6b20ab93">
<link rel="stylesheet"	href="https://static.wadiz.kr/static/web/layout.css?97a6eedb">
<link href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=20230502" rel="stylesheet">
<link rel="stylesheet"	href="https://static.wadiz.kr/personal-message/main.09e698cb.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link rel="stylesheet"	href="https://static.wadiz.kr/static/floating-buttons/main.5d60b4ab.css">

</head>
<body>
	<div id="page-container">
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<div id="inbox-app">
			<div class="Inbox_contents__3iZY_">
				<h1 class="Inbox_title__3XRz2">메시지</h1>
				<p class="Inbox_guide__3Yl3H">
					메시지는 실시간 채팅이 아닙니다. 주기적으로 페이지를 새로고침하세요.<a
						href="https://www.wadiz.kr/web/wcast/detail/6147" target="_blank"
						rel="noopener noreferrer">자세히 보기</a>
				</p>
				<div class="InboxTab_contents__2kGOM">
					<div class="InboxTab_listWrapper__2Yakm">
						<div class="InboxListContainer_contents__2mbd0">
							<div class="InboxListContainer_listWrapper__H82cE">
								<ul>
									<div class="EmptyInboxList_contents__2gxKy">
										<svg viewBox="0 0 32 32" focusable="false" role="presentation"
											class="withIcon_icon__INnaZ" aria-hidden="true">
											<path
												d="M28.8 6.4v16H8.96L4.8 26.56V6.4h24zm1.6-1.6H3.2v25.6L9.6 24h20.8V4.8z"></path></svg>
										메시지가 없습니다.
									</div>
								</ul>
								<div
									class="InboxListBackdrop_contents__1Hon3 InboxListBackdrop_none__3FDoi">
									<div class=""></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../inc/footer.jsp"></jsp:include>
	</div>
</body>
</html>