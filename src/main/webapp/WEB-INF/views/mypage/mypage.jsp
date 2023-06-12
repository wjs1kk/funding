<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="ko" class="scroll-top scroll-apex">
<head>
<link rel="stylesheet" href="resources/css/mypage.css">

<title>와디즈 - 마이와디즈</title>

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/main/main.c1266dc7.css">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/my-wadiz.ddf07734.chunk.css">
<script type="text/javascript" src="https://static.wadiz.kr/static/web/common.js?db524cda"></script>

<script type="text/javascript">

	$(function() {
// 		$("#profileImg").html('<img alt="" src="${pageContext.request.contextPath }/resources/images/profile/'+ $("#member_image").val() +'">');
		$('#profileImg').css({'background-image': 'url(${pageContext.request.contextPath }/resources/images/profile/' + $("#member_image").val() + ')'});

	});

</script>
</head>
<body>
	<div id="page-container">
		<main id="main-app">
			<jsp:include page="../inc/top.jsp"></jsp:include>
			<c:set var="contextPath" value="${pageContext.request.contextPath}" />
			
			<div class="MainWrapper_content__GZkTa">
				<section class="MyWadizPage_myWadizPage__wOTdS">
					<div class="MyWadizPage_profileBackground__T_LTr"
						aria-hidden="true"></div>
					<h2 class="BlindText_textHidden__ovQb4">마이와디즈</h2>
					<div class="MyWadizPage_inner__1oq9M">
						<div class="MyWadizPage_popperBox__113hj">
							<div class="MyWadizHeader_wadizHeader__8fJ9f">
								<div class="MyWadizUserTypeSwitch_container__8B_kv MyWadizHeader_switch__2WQSt" role="tablist">
									<button role="tab" id="myWadizTab_supporter" aria-controls="myWadizPanel_supporter" aria-selected="true" onclick="location.href='supporter'"
										aria-label="supporter" data-event="supporter_mode" class="MyWadizUserTypeSwitch_button__BYDWf MyWadizUserTypeSwitch_supporter__1yivJ MyWadizUserTypeSwitch_active__dwn-k"></button>
									<button role="tab" id="myWadizTab_maker" aria-controls="myWadizPanel_maker" aria-selected="false" onclick="location.href='maker'"
										aria-label="maker" data-event="maker_mode" class="MyWadizUserTypeSwitch_button__BYDWf MyWadizUserTypeSwitch_maker__3C77T"></button>
								</div>
							</div>
						</div>
						<div class="MyWadizPage_contentsWrapper__1dzMJ">
							<div class="MyWadizSupporter_supporterMode__2XDQZ"
								role="tabpanel" id="myWadizPanel_supporter"
								aria-labelledby="myWadizTab_supporter">
								<div class="MyWadizSupporterProfile_profileContainer__1q7eh">
									<h3 class="BlindText_textHidden__ovQb4">나의 프로필</h3>
									<div class="MyWadizSupporterProfile_profileImage__1eEvS">
										<button class="MyWadizSupporterProfile_detailProfile__1JImc"
											aria-label="프로필 상세 보기" data-event="profile"
											style="background-image: url('${pageContext.request.contextPath }/resources/images/profile/${member.member_image }')"></button>
										<button onclick="location.href='myInfo'" class="MyWadizSupporterProfile_editProfile__3HG_Z"
											aria-label="프로필 편집하기" data-event="profile_edit">
											<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
												<path d="M24 1.6L1.6 24v6.4H8L30.4 8zM7.36 28.8H3.2v-4.16L19.76 8.08l4.16 4.16zm17.68-17.68l-4.16-4.16L24 3.84 28.16 8z"></path></svg>
										</button>
									</div>
									<div class="MyWadizSupporterProfile_profileUser__a_r1P">
										<button data-event="profile">
											<b class="MyWadizSupporterProfile_userName__3hSE4">${member.member_name}
												<span aria-label="프로필 상세 보기">님</span></b>
										</button>
										<dl class="MyWadizSupporterProfile_profileUserLabel__1fiU3">
											<dt class="BlindText_textHidden__ovQb4">내 회원 정보</dt>
										</dl>
									</div>
									
									<div class="MyWadizSupporterProfile_setting__n8-M7">
										<button onclick="location.href='../logout'" class="Button_button__1HNjI Button_md__2Tyci Button_circular__3BLWf Button_block__3-IpL" type="button">
											<span><span class="Button_children__lqBGI">로그아웃</span></span>
										</button>
									</div>
								</div>
								<div class="MyWadizSupporter_contents__1TmJ_">
									<div class="MyWadizSection_section__3FCv1">
										<div class="MyWadizSupporterProject_container__2uWcZ">
											<div class="MyWadizSupporterProject_title__1IOfu">
												<div class="MyWadizSupporterProject_accumulate__1nyx5">
													<div class="MyWadizSupporterProject_value__7aQ4B">
														<a class="MyWadizSupporterAccumulate_container__h_OVK" href="point">
															<dl class="MyWadizSupporterAccumulate_info__2_7Is">
																<dt class="MyWadizSupporterAccumulate_title__3CiIs">
																	<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																		<g data-name="레이어 2">
																		<path d="M21.19 12.5h-5.91v15.16h2.16v-4.59h3.75a7 7 0 0 0 4.63-1.41 4.75 4.75 0 0 0 1.69-3.87 4.77 4.77 0 0 0-1.69-3.88 7 7 0 0 0-4.63-1.41zm3.07 7.81a4.84 4.84 0 0 1-3.14.88h-3.68v-6.8h3.68a4.9 4.9 0 0 1 3.14.87 3.06 3.06 0 0 1 1.09 2.53 3 3 0 0 1-1.09 2.52z"></path>
																		<path d="M20 1.67A18.33 18.33 0 1 0 38.33 20 18.35 18.35 0 0 0 20 1.67zm0 34.66A16.33 16.33 0 1 1 36.33 20 16.35 16.35 0 0 1 20 36.33z"></path>
																		<path fill="none" d="M0 0h40v40H0z"></path></g></svg>
																	<span class="MyWadizSupporterAccumulate_name__1mWXC">포인트</span>
																</dt>
																<dd class="MyWadizSupporterAccumulate_value__1oBSj">${member_point}  P</dd>
															</dl>
														</a>
														<hr class="Divider_divider__ToZaf Divider_horizontal__3W5eD Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProject_accumulateDivider__1qDCv">
														<a class="MyWadizSupporterAccumulate_container__h_OVK" href="coupon">
														<dl class="MyWadizSupporterAccumulate_info__2_7Is">
															<dt class="MyWadizSupporterAccumulate_title__3CiIs">
																<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																		<g data-name="레이어 2">
																		<path d="M37.64 17.54l.86-.12V8.5a2 2 0 0 0-2-2h-33a2 2 0 0 0-2 2v8.92l.86.12a2.48 2.48 0 0 1 0 4.92l-.86.12v8.92a2 2 0 0 0 2 2h33a2 2 0 0 0 2-2v-8.92l-.86-.12a2.48 2.48 0 0 1 0-4.92zm-1.14 6.69v7.27h-33v-7.27a4.48 4.48 0 0 0 0-8.46V8.5h33v7.27a4.48 4.48 0 0 0 0 8.46z"></path>
																		<path d="M18.16 16.73a2.66 2.66 0 1 0-2.66 2.66 2.66 2.66 0 0 0 2.66-2.66zm-3.8 0a1.14 1.14 0 1 1 1.14 1.14 1.14 1.14 0 0 1-1.14-1.14zm12.14 4.34a2.66 2.66 0 1 0 2.66 2.66 2.66 2.66 0 0 0-2.66-2.66zm0 3.8a1.14 1.14 0 1 1 1.14-1.14 1.14 1.14 0 0 1-1.14 1.14zm.43-10.45l-1.08-.98-10.99 12.01-.09.09 1.08.98 10.99-12.01.09-.09z"></path>
																		<path fill="none" d="M0 0h40v40H0z"></path></g></svg>
																	<span class="MyWadizSupporterAccumulate_name__1mWXC">쿠폰</span>
																</dt>
																<dd class="MyWadizSupporterAccumulate_value__1oBSj">4 장</dd>
															</dl></a>
													</div>
												</div>
												<div class="MyWadizSupporterProjectInfo_container__3MC9F">
													<div class="MyWadizSupporterProjectInfo_project__3Vaun">
														<div class="MyWadizSupporterProjectInfo_projectLink__2K77b" style="height: 104px">
															<strong class="BlindText_textHidden__ovQb4">결제 건수</strong>
															<a href="history"><span>펀딩·프리오더</span><b>0</b></a>
															<hr class="Divider_divider__ToZaf Divider_vertical__fJJKf Divider_lightBG__3bAAk Divider_spacing5__C3W8V Divider_caption2__3b6Dr MyWadizSupporterProjectInfo_divider__2mXtA">
															<a href="/web/mywadiz/store/order"><span>공동구매</span><b>0</b></a>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="MyWadizSection_section__3FCv1">
										<h4 class="MyWadizSection_title__2pnV3">나의 활동</h4>
										<div>
											<ul>
												<li class="MyWadizMenu_menu__3b-H-">
													<a href="wish">
														<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
															<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M22.16 4h-.007a8.142 8.142 0 0 0-6.145 2.79A8.198 8.198 0 0 0 9.76 3.998a7.36 7.36 0 0 0-7.359 7.446c0 5.116 4.64 9.276 11.6 15.596l2 1.76 2-1.76c6.96-6.32 11.6-10.48 11.6-15.6v-.08A7.36 7.36 0 0 0 22.241 4h-.085zm-5.28 21.84l-.88.8-.88-.8h-.08C8.4 19.76 4 15.84 4 11.44l-.001-.082A5.76 5.76 0 0 1 9.928 5.6a6.542 6.542 0 0 1 4.865 2.232l.486.567h1.52l.48-.56a6.548 6.548 0 0 1 4.877-2.24l.084-.001a5.76 5.76 0 0 1 5.76 5.76l-.001.085c0 4.396-4.4 8.316-11.12 14.396z"></path>
															</svg>
														</span>
														<span class="MyWadizMenu_text__9ryGW">찜하기</span>
														<span class="MyWadizMenu_arrowIcon__2sutN" aria-hidden="true">
															<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path>
															</svg>
														</span>
													</a>
												</li>
												<li class="MyWadizMenu_menu__3b-H-">
													<a href="makerinquiry">
														<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
															<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M1.6 5.6v20.8h28.8V5.6zm26.88 1.6L16 17.84 3.52 7.2zm.32 17.6H3.2V9.04L16 19.92 28.8 9.04z"></path></svg></span>
															<span class="MyWadizMenu_text__9ryGW">메이커 문의</span>
															<span class="MyWadizMenu_arrowIcon__2sutN" aria-hidden="true">
																<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																	<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
														</span>
													</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="MyWadizSection_section__3FCv1">
										<div>
											<ul>
											</ul>
										</div>
									</div>
									<div class="MyWadizSection_section__3FCv1">
										<h4 class="MyWadizSection_title__2pnV3">고객센터</h4>
										<div>
											<ul>
												<li class="MyWadizMenu_menu__3b-H-">
													<a href="${pageContext.request.contextPath }/notice">
														<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
															<i class="MyWadizOtherMenu_noticeIcon__2AXx5"></i></span>
														<span class="MyWadizMenu_text__9ryGW">공지사항</span>
														<span class="MyWadizMenu_arrowIcon__2sutN" aria-hidden="true">
															<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></span></a></li>
												<li class="MyWadizMenu_menu__3b-H- ">
													<a href="checkInfo">
														<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
															<svg viewBox="0 0 32 32" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M17.84 3.2l.4 2.56.16.88.88.32a9.55 9.55 0 0 1 2.893 1.691l.707.549.88-.32 2.4-.88L28 11.2l-2 1.68-.72.56.16.88a9.022 9.022 0 0 1-.009 3.336l-.151.824.72.56 2 1.76-1.84 3.2-3.28-1.2-.72.56a9.485 9.485 0 0 1-2.814 1.658l-.946.342-.16.88-.4 2.56h-3.68l-.4-2.56-.16-.88-.88-.32a9.55 9.55 0 0 1-2.893-1.691L9.12 22.8l-.88.32-2.4.88L4 20.8l2-1.68.72-.56-.16-.88a9.022 9.022 0 0 1 .009-3.336l.151-.824-.72-.56-2-1.76L5.84 8l3.28 1.2.72-.56a9.485 9.485 0 0 1 2.814-1.658l.946-.342.16-.88.4-2.56h3.68zM16 21.6a5.6 5.6 0 1 0 0-11.2 5.6 5.6 0 0 0 0 11.2zm2.56-20h-5.136a.8.8 0 0 0-.783.635L12.08 5.44a11.21 11.21 0 0 0-3.292 2.011L5.76 6.24h-.267a.798.798 0 0 0-.691.397L2.24 10.961a.798.798 0 0 0 .238 1.038l2.562 2.082a10.647 10.647 0 0 0 .01 3.906l-2.57 2.014a.8.8 0 0 0-.158 1.044L4.8 25.362a.8.8 0 0 0 .693.4h.347l2.96-1.2c.956.798 2.07 1.448 3.282 1.895l.638 3.225c.077.368.399.64.784.64h5.072a.8.8 0 0 0 .783-.635l.561-3.205a11.212 11.212 0 0 0 3.296-1.934l3.024 1.134h.347a.798.798 0 0 0 .691-.397l2.562-4.404a.8.8 0 0 0-.159-1.039l-2.561-2.081a10.647 10.647 0 0 0-.01-3.906l2.41-1.854a.8.8 0 0 0 .158-1.044L27.2 6.64a.8.8 0 0 0-.693-.4h-.347l-2.96 1.2a11.163 11.163 0 0 0-3.282-1.895L19.28 2.32a.801.801 0 0 0-.784-.64h-.017zM16 20a4 4 0 1 1 0-8 4 4 0 0 1 0 8z"></path></svg></span>
																<span class="MyWadizMenu_text__9ryGW">회원 정보 수정</span>
																<span class="MyWadizMenu_arrowIcon__2sutN" aria-hidden="true">
																<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></span></a>
												</li>
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