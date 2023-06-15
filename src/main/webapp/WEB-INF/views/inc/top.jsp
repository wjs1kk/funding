<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/layout.css?97a6eedb">
<link rel="stylesheet"
	href="https://static.wadiz.kr/main/main.c1266dc7.css">

<div class="web-header">
	<div class="web-header-large">
		<header class="header-wrapper">
			<div class="header-container">

				<!-- top.jsp 왼쪽 아이펀드 로고 -->
				<h1 class="">
					<a href='${pageContext.request.contextPath }/'><span
						class="label">ifund</span> 
							<path fill="#1D2129" fill-rule="nonzero"
								d="M58.49 2.23h2.11v21.29H59a1.73 1.73 0 0 1-1.62-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29 7.65 7.65 0 0 1 12.79-5.07V4.23a2 2 0 0 1 2-2zm-6.3 18.62a4.36 4.36 0 0 0 4.16-4.52 4.19 4.19 0 1 0-8.35 0 4.36 4.36 0 0 0 4.19 4.52zM42 23.52h-1.52a1.73 1.73 0 0 1-1.64-1.16 9 9 0 0 1-10.93-.28 7.48 7.48 0 0 1-2.75-6.29A7.65 7.65 0 0 1 38 10.72a2 2 0 0 1 1.9-1.79H42v14.59zm-8.41-2.67h.02a4.35 4.35 0 0 0 4.15-4.52 4.35 4.35 0 0 0-4.17-4.51 4.35 4.35 0 0 0-4.17 4.51 4.36 4.36 0 0 0 4.17 4.52zM83.47 8.94v2.11l-7.07 9.06h7.06v3.47h-13v-2.1l7.08-9.07h-6.62v-1.47a2 2 0 0 1 2-2h10.55zM65.86 7.3a2.48 2.48 0 1 1 0-4.96 2.48 2.48 0 0 1 0 4.96zM21.21 8.94h4.14l-4.86 14.59h-4.15l-3.21-9.36-3.21 9.36H5.77L.92 8.94h4.13L8 18l2.5-7.74a2 2 0 0 1 1.86-1.34h2.9l3 9.08 2.95-9.06zm42.65 14.59l-.04-12.59a2 2 0 0 1 2-2h2.11v14.59h-4.07z"></path></svg></a>
				</h1>

				<!-- top.jsp 탭 -->
				<ul class="GNBDesktop_container__3X3Cg">
					<li class="GNBDesktop_item__H8bay"><a
						class="GNBDesktop_link__1AP6q"
						href="${pageContext.request.contextPath }/comingsoon"><span>오픈예정</span></a></li>
					<li class="GNBDesktop_item__H8bay"><a
						class="GNBDesktop_link__1AP6q"
						href="${pageContext.request.contextPath }/funding"><span>펀딩
								+</span></a></li>
					<li class="GNBDesktop_item__H8bay"><a
						class="GNBDesktop_link__1AP6q"
						href="${pageContext.request.contextPath }/preorder"><span>공동구매</span></a></li>
					<li class="GNBDesktop_item__H8bay"><a
						class="GNBDesktop_link__1AP6q"
						href="${pageContext.request.contextPath }/notice"><span>공지사항</span></a></li>
					<li class="GNBDesktop_item__H8bay"><div>
							<div
								class="Backdrop_backDrop__3v5kD Backdrop_dimmed__23l4b GNBDesktop_backdrop__3h5Cq"></div>
						</div></li>
				</ul>

				<!-- top.jsp 검색창 -->
				<div class="web-header-utils">
					
					<c:choose>
						<c:when test="${empty sessionScope.member_idx }">
							<!-- 로그인, 회원가입 -->
							<div class="HeaderDesktop_user__3zGmM">
								<div class="User_container__bqVd2">
									<button class="User_btnSign__1URTs"
										onclick="location.href='${pageContext.request.contextPath}/login'">로그인</button>
									<button data-event="iam.signup" class="User_btnSign__1URTs"
										onclick="location.href='${pageContext.request.contextPath}/signup'">회원가입</button>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="HeaderDesktop_user__3zGmM"
								onclick="location.href='${pageContext.request.contextPath}/mypage/supporter'">
								<div class="User_container__bqVd2">
									<button type="button" class="User_btnAvatar__2Mui-"
										aria-label="마이 아이펀드">
										<div>
											<div class="Avatar_avatar__1d9Wt"
												style="width: 32px; height: 32px;">
												<span class="Avatar_hasImage__2TKl6"
													style="background-image: url(&quot;https://static.wadiz.kr/assets/icon/profile-icon-2.png&quot;);"></span>
											</div>
										</div>
									</button>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
					<div class="web-header-funding-open funding-open">
						<c:choose>
							<c:when test="${sessionScope.isAdmin eq 1 }">
								<div>
									<div>
										<button onclick="location.href='admin'" aria-label="관리자 페이지 이동"
											class="Button_button__2FuOU Button_primary__2mZni Button_md__46Ai- funding-open-button"
											type="button">
											<span>
											<span class="Button_children__ilFun">관리자 페이지</span>
											</span>
										</button>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								<div>
									<div>
										<button onclick="location.href='projectCreate'" aria-label="프로젝트 만들기"
											class="Button_button__2FuOU Button_primary__2mZni Button_md__46Ai- funding-open-button"
											type="button">
											<span><span class="Button_children__ilFun">프로젝트
													만들기</span></span>
										</button>
									</div>
								</div>
							</c:otherwise>
						</c:choose>

					</div>
				</div>
			</div>
		</header>
	</div>
</div>

