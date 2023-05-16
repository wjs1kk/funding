<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko" class="scroll-top">
<head>
<link rel="stylesheet" href="resources/css/mypage.css">

<title>와디즈 마이 와디즈</title>

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/main/main.c1266dc7.css">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/my-wadiz.ddf07734.chunk.css">
<script type="text/javascript" src="https://static.wadiz.kr/static/web/common.js?db524cda"></script>



</head>
<body style="overflow: auto;">
	<div id="page-container">
		<main id="main-app">
			<jsp:include page="../inc/top.jsp"></jsp:include>
			<div class="MainWrapper_content__GZkTa">
				<section class="MyWadizPage_myWadizPage__wOTdS">
					<div class="MyWadizPage_profileBackground__T_LTr"
						aria-hidden="true"></div>
					<h2 class="BlindText_textHidden__ovQb4">마이와디즈</h2>
					<div class="MyWadizPage_inner__1oq9M">
						<div class="MyWadizPage_popperBox__113hj">
							<div class="MyWadizHeader_wadizHeader__8fJ9f">
								<div class="MyWadizUserTypeSwitch_container__8B_kv MyWadizUserTypeSwitch_isMaker__2h2K4 MyWadizHeader_switch__2WQSt" role="tablist">
									<!-- 05-16 김동욱 서포터 페이지로 이동하는 href 추가 -->
									<button role="tab" id="myWadizTab_supporter" aria-controls="myWadizPanel_supporter" aria-selected="false"
										aria-label="supporter" data-event="supporter_mode" class="MyWadizUserTypeSwitch_button__BYDWf MyWadizUserTypeSwitch_supporter__1yivJ"
										onclick="location.href = 'supporter'"></button>
									<button role="tab" id="myWadizTab_maker" aria-controls="myWadizPanel_maker" aria-selected="true"
										aria-label="maker" data-event="maker_mode" class="MyWadizUserTypeSwitch_button__BYDWf MyWadizUserTypeSwitch_maker__3C77T MyWadizUserTypeSwitch_active__dwn-k"></button>
								</div>
							</div>
<!-- 							<div -->
<!-- 								class="PopperRenew_container__1PprA PopperRenew_hasOutsideChildren__3F_zW"> -->
<!-- 								<div -->
<!-- 									class="PopperRenew_popperContainer__2aDcn MyWadizPage_popperContent__3LnCT PopperRenew_bottom-right__3C1jr PopperRenew_fixed__295ce"> -->
<!-- 									<div -->
<!-- 										class="PopperRenew_popperBox__14vki PopperRenew_whiteMode__1YNfF"> -->
<!-- 										<div class="PopperRenew_arrow__1XC5N" aria-hidden="true"></div> -->
<!-- 										<div class="PopperRenew_popperContent__1wOqH" role="tooltip" -->
<!-- 											id="Popper_8"> -->
<!-- 											서포터 ↔ 메이커 모드를 전환해서<br>사용해 보세요 -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
						</div>
						<div class="MyWadizPage_contentsWrapper__1dzMJ">
							<div class="MyWadizMaker_makerMode__19jDX" role="tabpanel" id="myWadizPanel_maker" aria-labelledby="myWadizTab_maker">
								<div class="MyWadizMakerProfile_profileContainer__1SNqv">
									<div class="MyWadizMakerProfile_baseInfoSection__2bk8B">
										<div class="MyWadizMakerProfile_profileImage__110Wi">
											<button class="MyWadizMakerProfile_detailProfile__13QK_ MyWadizMakerProfile_noLogo__1-PDp" aria-label="메이커 등록하기"></button>
										</div>
										<div class="MyWadizMakerProfile_profileUser__2cuK9">
											<button class="MyWadizMakerProfile_makerName__RJLqx" aria-label="메이커 정보 수정하기">
												<b class="MyWadizMakerProfile_text__8kdAr"><span>와디즈 메이커님</span></b>
											</button>
											<button class="MyWadizMakerProfile_myFollower__13Qbd">
												<span>내 팔로워</span>
												<span class="MyWadizMakerProfile_value__3q2bE">0</span>
											</button>
										</div>
									</div>
									<button class="MyWadizMakerPageCompletion_container__-uhDn">
										<strong class="BlindText_textHidden__ovQb4">페이지 만들기</strong>
										<div class="MyWadizMakerPageCompletion_content__3vzUj">
											<div class="MyWadizMakerPageCompletion_header__23t_l">
												<div class="MyWadizMakerPageCompletion_titleWrapper__38DCM">
													<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTciIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNyAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHJlY3Qgd2lkdGg9IjE2IiBoZWlnaHQ9IjE2IiByeD0iNCIgZmlsbD0iI0NERDNEOCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLjkzNCkiLz4KICAgICAgICA8ZyBmaWxsPSIjRkZGIiBmaWxsLXJ1bGU9Im5vbnplcm8iPgogICAgICAgICAgICA8cGF0aCBkPSJNOC45MzQgOGExLjk5NSAxLjk5NSAwIDAgMS0yLTIuMDI4YzAtMS4wNzcuODk4LTEuOTcyIDItMS45NzIgMS4xMDIgMCAyIC44OTUgMiAxLjk3MiAwIDEuMTYtLjg5OCAyLjAzNS0yIDIuMDI4ek0xMi40NzUgMTJINS4zOTNjLS4zMTYgMC0uNDU5LS4yMDEtLjQ1OS0uNDg0IDAtLjgzNCAxLjI3OC0zLjAxNiA0LTMuMDE2czQgMi4xODIgNCAzLjAxNmMwIC4yODMtLjE0My40ODQtLjQ1OS40ODR6Ii8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
														alt="" class="MyWadizMakerPageCompletion_profileIcon__13-7j" aria-hidden="true"><span
														class="MyWadizMakerPageCompletion_title__dKDis">메이커 페이지</span>
												</div>
												<span class="Badge_container__9G9PS Badge_visible__3LNXv">
													<span class="Badge_badge__ovUKI Badge_label__2Rft2 Badge_sm__1OBNp Badge_secondary__UV-TU Badge_circular__imzqr Badge_outlined__3DYIX">없음</span></span>
											</div>
											<p class="MyWadizMakerPageCompletion_description__34P_w">메이커 페이지 만들고 팔로워를 늘려보세요</p>
										</div>
										<div class="MyWadizMakerPageCompletion_button__2Zdp5">
											<span class="MyWadizMakerPageCompletion_text__1Nn34">페이지 만들기</span>
											<svg viewBox="0 0 40 40" focusable="false" role="presentation"
												class="withIcon_icon__3VTbq MyWadizMakerPageCompletion_arrowIcon__nAjwH" aria-hidden="true">
												<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
										</div>
									</button>
									<div class="MyWadizMakerProfile_setting__3yxCI">
										<p class="MyWadizLoginMode_loginMode__2smkD">
											<span>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
													<g fill="none" fill-rule="evenodd">
													<path d="M0.8 0.645H15.600000000000001V15.355H0.8z"></path>
													<path fill="#4285F4" d="M13.471 6.598c.085.388.129.79.129 1.202 0 .204-.01.405-.032.603-.158 1.478-.89 2.79-1.976 3.727L9.65 10.575c.568-.393 1.01-.944 1.257-1.587h-3.27v-2.39h5.834z"></path>
													<path fill="#34A853" d="M7.4 11.61c.82 0 1.573-.29 2.161-.773l1.89 1.515C10.404 13.372 8.975 14 7.4 14c-2.35 0-4.373-1.397-5.284-3.406L4.1 9.061c.381 1.466 1.714 2.549 3.3 2.549z"></path>
													<path fill="#FBBC05" d="M2.385 5.187l1.734 1.58c-.188.435-.294.92-.294 1.433 0 .408.067.799.19 1.161l-1.773 1.585c-.177-.354-.321-.73-.428-1.124l-.206-1.95c.051-.98.329-1.894.777-2.685z"></path>
													<path fill="#EA4335" d="M7.6 2c1.662 0 3.166.653 4.253 1.708L10.11 5.405C9.47 4.778 8.582 4.39 7.6 4.39c-1.66 0-3.051 1.108-3.427 2.6L2.126 5.421C3.066 3.404 5.163 2 7.6 2z"></path></g></svg></span>
													구글로 로그인 중
										</p>
										<button class="Button_button__1HNjI Button_md__2Tyci Button_circular__3BLWf Button_block__3-IpL" type="button">
											<span><span class="Button_children__lqBGI">로그아웃</span></span>
										</button>
									</div>
								</div>
								<div class="MyWadizMaker_contents__1blQZ">
									<div class="MyWadizSection_section__3FCv1">
										<div>
											<div class="TabPanels_tabPanels__3fp_a">
												<div class="MyWadizMyProject_projectListContainer__2C9hy">
													<strong class="MyWadizMyProject_title__2cowP">만든 프로젝트<span>3</span> </strong> 
													<a class="MyWadizMyProject_more__1FOsj" href="/web/wmypage/myfunding/makingrewardlist">더보기</a>
													<ul class="MyWadizMyProject_hideScroll__uQ06T">
														<!-- 05-16 김동욱 메이커 마이페이지에서 자신이 생성산 프로젝트 리스트 출력 -->
														<c:forEach var="projectList" items="${projectList}">
															<li>
																<!-- 05-16 김동욱 해당 프로젝트 클릭시 project_idx 파라미터를 가지고 create_funding.jsp페이지로 이동 -->
																<a class="CardType_projectCard__2S8_G CardType_projectCardB__PatIP MyWadizMyProject_defaultImage__Tr8wd"
																	href="../project/main?project_idx=${projectList.project_idx}">
																	<article>
																		<span class="Thumbnail_thumbnail__3gakA Thumbnail_img__j7EZh CardType_thumbnail__2yL-W" style=""></span>
																		<div class="TextContent_content__2jSfH CardType_content__2B7IB">
																			<c:choose>
																				<c:when test="${empty projectList.project_title}">
																					<h1 class="TextContent_title__3Clug">제목을 입력해주세요!</h1>
																				</c:when>
																				<c:otherwise>
																					<h1 class="TextContent_title__3Clug">${projectList.project_title }</h1>
																				</c:otherwise>
																			</c:choose>
																			<p class="TextContent_summary__18CPX">작성 중</p>
																		</div>
																	</article>
																</a>
															</li>
														</c:forEach>
													</ul>
													<a href="/web/wsub/openfunding/reward" class="Button_button__1HNjI Button_primary__2kq3x Button_contained__1Lx6c Button_lg__37Mrj Button_block__3-IpL MyWadizMyProject_button__3WHeG"><span><span
														class="Button_children__lqBGI">프로젝트 만들기</span></span></a>
													<div class="MyWadizMyProject_infoBox__2vqIx">
														<a class="MyWadizMyProject_info__1rRr9" href="/web/wterms/funding_plan_policy">요금제 안내 
															<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path fill="none" d="M0 0h40v40H0z"></path>
																<path d="M20 39a19 19 0 1 1 19-19 19.06 19.06 0 0 1-19 19zm0-36a17 17 0 1 0 17 17A17 17 0 0 0 20 3z"></path>
																<path d="M20 10.4a1.8 1.8 0 1 0 0 3.6 1.8 1.8 0 1 0 0-3.6zm-1.04 6.43h2.08v13h-2.08z"></path></svg></a>
													</div>
												</div>
												<div class="MyWadizSection_section__3FCv1">
													<h4 class="MyWadizSection_title__2pnV3">문의 관리</h4>
													<div>
														<ul>
															<li class="MyWadizMenu_menu__3b-H-">
																<a href="supinquiry">
																	<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
																		<svg viewBox="0 0 39.98 39.98" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																			<g data-name="레이어 2">
																			<path fill="none" d="M0 0h39.98v39.98H0z"></path>
																			<path d="M36.89 6.66H3.61a2 2 0 0 0-1.94 1.95v23.26a1.94 1.94 0 0 0 1.94 1.95h33.28a2 2 0 0 0 2-1.95V8.61a2 2 0 0 0-2-1.95zM3.67 31.87V8.66l33.17-.05v23.21z"></path>
																			<path d="M21.15 22a1.33 1.33 0 0 1-1.8 0L8.07 11.69l-1.34 1.48L18 23.46a3.3 3.3 0 0 0 4.49 0l11.13-10.15-1.35-1.48z"></path></g></svg></span>
																			<span class="MyWadizMenu_text__9ryGW">서포터 문의</span>
																			<span class="MyWadizMenu_arrowIcon__2sutN" aria-hidden="true">
																			<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																			<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></span></a></li>
														</ul>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="MyWadizSection_section__3FCv1">
										<h4 class="MyWadizSection_title__2pnV3">고객센터</h4>
										<div>
											<ul>
												<li class="MyWadizMenu_menu__3b-H-">
													<button data-event="inquire">
														<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
															<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path fill="none" d="M0 0h40v40H0z"></path>
																<path d="M10.62 38.33V29H2.87V1.67h34.26v27.79H18.92zM5 27h7.7v6.11l5.3-5.73h17V3.75H5z"></path>
																<path d="M12.84 13.28a1.87 1.87 0 1 0 0 3.74 1.87 1.87 0 1 0 0-3.74zm7.16 0a1.87 1.87 0 1 0 0 3.74 1.87 1.87 0 1 0 0-3.74zm7.16 0a1.87 1.87 0 1 0 0 3.74 1.87 1.87 0 1 0 0-3.74z"></path></svg></span>
																<span class="MyWadizMenu_text__9ryGW">1:1 채팅 상담</span>
																<span class="MyWadizMenu_arrowIcon__2sutN" aria-hidden="true">
																<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></span>
													</button></li>
												<li class="MyWadizMenu_menu__3b-H-">
													<a href="https://makercenter.wadiz.kr/menu/25" target="_blank" rel="noreferer noopener">
														<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
															<i class="MyWadizServiceCenter_guideIcon__3EDys"></i></span>
														<span class="MyWadizMenu_text__9ryGW">이용가이드</span>
														<span class="MyWadizMenu_arrowIcon__2sutN" aria-hidden="true">
															<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></span></a></li>
												<li class="MyWadizMenu_menu__3b-H-">
													<a href="https://makercenter.wadiz.kr/menu/17" target="_blank" rel="noreferer noopener">
														<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
															<i class="MyWadizOtherMenu_noticeIcon__2AXx5"></i></span>
														<span class="MyWadizMenu_text__9ryGW">공지사항</span>
														<span class="MyWadizMenu_arrowIcon__2sutN" aria-hidden="true">
															<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></span></a></li>
												<li class="MyWadizMenu_menu__3b-H-">
													<a href="/web/waccount/wAccountUpdateBasicInfoIntro">
														<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
															<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M17.84 3.2l.4 2.56.16.88.88.32a9.55 9.55 0 0 1 2.893 1.691l.707.549.88-.32 2.4-.88L28 11.2l-2 1.68-.72.56.16.88a9.022 9.022 0 0 1-.009 3.336l-.151.824.72.56 2 1.76-1.84 3.2-3.28-1.2-.72.56a9.485 9.485 0 0 1-2.814 1.658l-.946.342-.16.88-.4 2.56h-3.68l-.4-2.56-.16-.88-.88-.32a9.55 9.55 0 0 1-2.893-1.691L9.12 22.8l-.88.32-2.4.88L4 20.8l2-1.68.72-.56-.16-.88a9.022 9.022 0 0 1 .009-3.336l.151-.824-.72-.56-2-1.76L5.84 8l3.28 1.2.72-.56a9.485 9.485 0 0 1 2.814-1.658l.946-.342.16-.88.4-2.56h3.68zM16 21.6a5.6 5.6 0 1 0 0-11.2 5.6 5.6 0 0 0 0 11.2zm2.56-20h-5.136a.8.8 0 0 0-.783.635L12.08 5.44a11.21 11.21 0 0 0-3.292 2.011L5.76 6.24h-.267a.798.798 0 0 0-.691.397L2.24 10.961a.798.798 0 0 0 .238 1.038l2.562 2.082a10.647 10.647 0 0 0 .01 3.906l-2.57 2.014a.8.8 0 0 0-.158 1.044L4.8 25.362a.8.8 0 0 0 .693.4h.347l2.96-1.2c.956.798 2.07 1.448 3.282 1.895l.638 3.225c.077.368.399.64.784.64h5.072a.8.8 0 0 0 .783-.635l.561-3.205a11.212 11.212 0 0 0 3.296-1.934l3.024 1.134h.347a.798.798 0 0 0 .691-.397l2.562-4.404a.8.8 0 0 0-.159-1.039l-2.561-2.081a10.647 10.647 0 0 0-.01-3.906l2.41-1.854a.8.8 0 0 0 .158-1.044L27.2 6.64a.8.8 0 0 0-.693-.4h-.347l-2.96 1.2a11.163 11.163 0 0 0-3.282-1.895L19.28 2.32a.801.801 0 0 0-.784-.64h-.017zM16 20a4 4 0 1 1 0-8 4 4 0 0 1 0 8z"></path></svg></span>
																<span class="MyWadizMenu_text__9ryGW">설정</span>
																<span class="MyWadizMenu_arrowIcon__2sutN" aria-hidden="true">
																	<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></span></a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<jsp:include page="../inc/footer.jsp"></jsp:include>
		</main>
	</div>
</body>
</html>