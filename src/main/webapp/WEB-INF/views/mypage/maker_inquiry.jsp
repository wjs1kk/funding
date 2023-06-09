<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="ko" class="show-footer scroll-top scroll-apex">
<head>
<link rel="stylesheet" href="../resources/css/mypage.css">

<title>와디즈</title>

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?032bb938">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?3fd5c009">
<link href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=20230502" rel="stylesheet">
<link rel="stylesheet" href="/resources/static/css/style.css">
<link rel="stylesheet" href="https://static.wadiz.kr/personal-message/main.6cbfbce5.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/floating-buttons/main.2517a310.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">

<script>
function openWindow() {
  var width = 1000;
  var height = 700;
  var left = (window.innerWidth - width) / 2;
  var top = (window.innerHeight - height) / 2;
  var options = "width=" + width + ",height=" + height + ",top=" + top + ",left=" + left;
  window.open('makerinquiry2', '_blank', options);
}
</script>



</head>
<body>
	<div id="page-container">
		<jsp:include page="../inc/top.jsp"></jsp:include>
	
		<div class="black-bg-wrap" style="display: none;"></div>
		<form id="forwardForm" method="get">
			<input type="hidden" id="returnURL" name="returnURL">
		</form>
		<input type="hidden" id="sessionLoginCheck" value="true">

		<div id="inbox-app">
			<div class="Inbox_contents__3iZY_">
				<h1 class="Inbox_title__3XRz2">메이커 문의</h1>
<%-- 				<c:forEach var="inq_maker" items="${inq_maker}"> --%>
<%-- 				<c:forEach var="inquiryList" items="${inquiryList}"> --%>
				
				
				<div class="InboxTab_contents__2kGOM">
					<div class="InboxTab_listWrapper__2Yakm">
						<div class="InboxListContainer_contents__2mbd0">
							<div class="InboxListContainer_listWrapper__H82cE" onclick="openWindow()">
								<ul>
									<li class="InboxListItem_contents__GPSuB">
										<a href="#chatspace">
											<div class="InboxListItem_userInfo__8bAAG">
												<div class="InboxListItem_profile__14Uas">
													<div class="Avatar_avatar__gEjnc" style="width: 40px; height: 40px;">
														<span class="Avatar_hasImage__1rKTm"
															style="background-image: url(&quot;https://cdn.wadiz.kr/wwwwadiz/green001/2023/0418/20230418171106688_207393.png/wadiz/format/jpg/quality/80&quot;), url(&quot;data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iODAiIGhlaWdodD0iODAiIHZpZXdCb3g9IjAgMCA4MCA4MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0iYzl1cmF3eHIyYSIgZD0iTTAgMGg4MHY4MEgweiIvPgogICAgPC9kZWZzPgogICAgPGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8Zz4KICAgICAgICAgICAgPG1hc2sgaWQ9IjZ2emt3OXN5NWIiIGZpbGw9IiNmZmYiPgogICAgICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjYzl1cmF3eHIyYSIvPgogICAgICAgICAgICA8L21hc2s+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik04MCA0MGMwIDIyLjA5Mi0xNy45MDkgNDAtNDAgNDBTMCA2Mi4wOTIgMCA0MCAxNy45MDkgMCA0MCAwczQwIDE3LjkwOCA0MCA0MCIgZmlsbD0iI0U5RUNFRiIgbWFzaz0idXJsKCM2dnprdzlzeTViKSIvPgogICAgICAgIDwvZz4KICAgICAgICA8cGF0aCBkPSJtMjIuMzA1IDI2LjkxNC4yMyAyLjEyMWMtLjAxLjI5LjA0OS41NTkuMTgxLjgwNy4wODUuMjYxLjIyOC40ODUuNDMzLjY3Ni4xOS4yMDMuNDEzLjM0OC42NzQuNDMyLjI0OS4xMzIuNTE5LjE5MS44MDYuMThsLjU1Ny0uMDc1Yy4zNTUtLjA5OS42NjMtLjI3OS45MjQtLjUzN2wuMzI4LS40MjVjLjE5LS4zMjYuMjg1LS42OC4yODctMS4wNTgtLjA3OC0uNzA2LS4xNTQtMS40MTUtLjIzLTIuMTIxLjAxLS4yOS0uMDUtLjU1OS0uMTgtLjgwN2ExLjU3IDEuNTcgMCAwIDAtLjQzNC0uNjc1IDEuNTUzIDEuNTUzIDAgMCAwLS42NzQtLjQzMyAxLjU4NCAxLjU4NCAwIDAgMC0uODA3LS4xOGMtLjE4NS4wMjYtLjM3Mi4wNS0uNTU3LjA3NWEyLjA4MyAyLjA4MyAwIDAgMC0uOTI1LjUzOGwtLjMyNi40MjRjLS4xOS4zMjctLjI4NS42NzktLjI4NyAxLjA1OE01My44ODIgMjcuMzI4djIuNTIyYzAgLjUzOC4yMzMgMS4xMDIuNjEzIDEuNDgyLjE5LjIwMy40MTQuMzQ4LjY3NC40MzMuMjUuMTMuNTE4LjE5LjgwNy4xOC41NDItLjAyNCAxLjEwNC0uMjAyIDEuNDgxLS42MTMuMzc2LS40MS42MTQtLjkxNC42MTQtMS40ODJ2LTIuNTIyYzAtLjUzNi0uMjM0LTEuMS0uNjE0LTEuNDhhMS41NzYgMS41NzYgMCAwIDAtLjY3NC0uNDM0IDEuNTczIDEuNTczIDAgMCAwLS44MDctLjE4Yy0uNTQyLjAyNC0xLjEwNC4yMDItMS40ODEuNjE0LS4zNzYuNDA5LS42MTMuOTEzLS42MTMgMS40OE0zNi4yOTcgMjUuOTQ1Yy0uNzQzIDQuMzM1LTEuNDg0IDguNjczLTIuMjI1IDEzLjAxLS4xODQgMS4wNzUuMjg1IDIuMzA3IDEuNDYzIDIuNTc2IDEuMDE0LjIzIDIuMzc4LS4zMDkgMi41NzYtMS40NjJsMi4yMjUtMTMuMDExYy4xODQtMS4wNzUtLjI4NS0yLjMwOC0xLjQ2My0yLjU3Ny0xLjAxNS0uMjMtMi4zOC4zMDgtMi41NzYgMS40NjRNNDUuMTU4IDUwLjM4NmMtLjE2LS4zMy0uMTAxLS40NzctLjA0NS0uODA2LS4xMTEuMTc1LS4xMjUuMjAxLS4wNDIuMDc3YS4zNy4zNyAwIDAgMSAuMjAzLS4xNzhjLS4yMi4xMTctLjIzNS4xMzgtLjA0Ny4wNjRhMy40MyAzLjQzIDAgMCAxLS4zOTMuMTE2Yy0uMDgyLjAyLS42NTkuMS0uMjY1LjA1Ny0xLjExNS4xMjQtMi4yNC4xOS0zLjM2LjI4NWwtNi44NzcuNTc3Yy0xLjA4OS4wOTItMi4xNDguODk3LTIuMDk1IDIuMDk0LjA0OCAxLjA1Ni45MjYgMi4xOTIgMi4wOTUgMi4wOTNsOC44NC0uNzRjMS40NS0uMTIzIDMuMDQxLS4xMyA0LjI4Ny0uOTggMS42LTEuMDkzIDIuMTYzLTMuMDI4IDEuMzE2LTQuNzcyLS40OC0uOTktMS45NjYtMS4zMzMtMi44NjYtLjc1Mi0xLjAxMy42NTQtMS4yNjMgMS44MDctLjc1IDIuODY1IiBmaWxsPSIjQ0REM0Q4Ii8+CiAgICA8L2c+Cjwvc3ZnPgo=&quot;); border: 1px solid rgb(221, 226, 230);"></span>
													</div>
												</div>
												<div class="InboxListItem_nameInfo__XDtQZ">
													<div class="InboxListItem_name__3TvoM">${maker_name }</div>
													<div class="InboxListItem_campaignTitle__K5agQ"></div>
												</div>
											</div>
											<div class="InboxListItem_messageContainer__1X1_M">
												<div class="InboxListItem_message__1xMRm"></div>
											</div>
											<div>
												<span class="DateTime_contents__1WmGa"></span>
											</div>
										</a>
									</li>
								</ul>
								<div class="InboxListBackdrop_contents__1Hon3 InboxListBackdrop_none__3FDoi">
								</div>
							</div>
						</div>
					</div>
					
<%-- 					</c:forEach> --%>
<%-- 					</c:forEach> --%>
					
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
	
</body>
</html>