<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/19.b3b957fa.chunk.css">
<link href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css" rel="stylesheet">
<link href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css" rel="stylesheet">

</head>
<body class="ReactModal__Body--open package-plan" aria-hidden="true"
	style="margin-bottom: -4px !important;">
	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<div class="AppLayout_main__14bCi">
				<jsp:include page="../inc/create_project_side.jsp"></jsp:include>
				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<div id="container" class="ContentsLayout_container__11k-W">
						<ol class="Breadcrumb_container__3YjD4">
							<li class="Breadcrumb_item__2r9Ym">프로젝트 관리</li>
							<li class="Breadcrumb_item__2r9Ym">요금제 선택</li>
						</ol>
						<form>
							<input type="hidden" name="packagePlanType" value="LIGHT"><input
								type="hidden" name="questionAnswers">
							<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
							<nav class="DetailNavbar_container__3SkEf">
								<jsp:include page="../inc/project_top.jsp"></jsp:include>
							</nav>
							<div class="HeaderLayout_container__3fXkO">
								<div class="HeaderLayout_contents__F4hlC">
									<h2 class="FundingPlanFormContainer_title__3OWgM">요금제 선택</h2>
									<p>원하는 요금제를 선택해 주세요.</p>
								</div>
								<div class="HeaderLayout_guideWrapper__WXeX-">
									<button class="BannerLinkButton_container__3MHMT" type="button">
										<div class="BannerLinkButton_icon__UDYk2">
											<i class="BannerGuide_guideIcon__1bhqD" aria-hidden="true"></i>
										</div>
										<div class="BannerLinkButton_content__BzS52">
											<div class="BannerLinkButton_title__rE4Eg">다른 메이커들 다
												본다는</div>
											<div class="BannerLinkButton_description__yl6rf">필수 가이드
												모음집</div>
										</div>
									</button>
								</div>
							</div>
							<div class="FundingPlanAllMakerServiceInfo_serviceInfo__yeXWf">
								<p class="FundingPlanAllMakerServiceInfo_title__3PLiS">다양한
									서비스를 구경해 보세요!</p>
								<div class="FundingPlanAllMakerServiceInfo_linkBox__3tFnv">
									<a class="FundingPlanAllMakerServiceInfo_link__1nw_9"
										href="/studio/reward/213704/ads">광고·콘텐츠 제작 자세히 보기 <svg
											viewBox="0 0 40 40" focusable="false" role="presentation"
											class="withIcon_icon__3lrgp" aria-hidden="true">
											<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></a><a
										class="FundingPlanAllMakerServiceInfo_link__1nw_9"
										href="/studio/reward/213704/maker_service">요금제 서비스 상세보기 <svg
											viewBox="0 0 40 40" focusable="false" role="presentation"
											class="withIcon_icon__3lrgp" aria-hidden="true">
											<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></a>
								</div>
							</div>
							<ul class="FundingPlanLayout_packageList__p1BYm">
								<li><article
										class="FundingPlanPackageCard_packageCard__3DZcn"
										data-type="light">
										<div
											class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_header__8Ai7N">
											<h1>
												light<small>(라이트)</small>
											</h1>
											<div class="FundingPlanPackageCard_fee__2KkSS">
												<span>수수료 </span><strong>5% </strong><small>(VAT 별도)</small>
											</div>
										</div>
										<div class="FundingPlanPackageCard_bodyWrapper__1DsSN">
											<div
												class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_body__1kwNJ">
												<p class="FundingPlanPackageCard_description__EH_Vy">
													<span>가볍게 프로젝트를 시작하고 싶은 메이커님<br></span>
												</p>
												<p class="FundingPlanPackageCard_lightFeesInfo__2z-Do"></p>
												<ul>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>프로젝트
														공개</li>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>와디즈
														스쿨 수강</li>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>새소식
														알림 기능</li>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>데이터
														플러스 (BETA)</li>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>인증
														마크</li>
												</ul>
												<button
													class="Button_button__1e2A2 Button_text__3KyLl Button_lg__3vRQD FundingPlanPackageCard_afterActionButton__3jsMR"
													type="button">
													<span><span class="Button_children__q9VCZ">자세히
															알아보기 <svg viewBox="0 0 40 40" focusable="false"
																role="presentation" class="withIcon_icon__3lrgp"
																aria-hidden="true">
																<path
																	d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
													</span></span>
												</button>
											</div>
											<div
												class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_footer__3SlKP">
												<button
													class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD Button_startIcon__19sdm Button_block__2mEqp FundingPlanPackageCard_selected__3POWd"
													type="button">
													<span><svg viewBox="0 0 48 48" focusable="false"
															role="presentation"
															class="withIcon_icon__3lrgp Button_icon__1qsE3"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg><span
														class="Button_children__q9VCZ">이걸로 골랐어요</span></span>
												</button>
											</div>
										</div>
									</article></li>
								<li><article
										class="FundingPlanPackageCard_packageCard__3DZcn FundingPlanPackageCard_basic__TOY5F"
										data-type="basic">
										<div
											class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_header__8Ai7N">
											<h1>
												basic<small>(베이직)</small>
											</h1>
											<div class="FundingPlanPackageCard_fee__2KkSS">
												<span>수수료 </span><strong>8% </strong><small>(VAT 별도)</small>
											</div>
										</div>
										<div class="FundingPlanPackageCard_bodyWrapper__1DsSN">
											<div
												class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_body__1kwNJ">
												<p class="FundingPlanPackageCard_description__EH_Vy">
													<span>프로젝트를 공개하기 전부터<br></span><span>서포터를 모으고
														싶은 메이커님<br>
													</span>
												</p>
												<p class="FundingPlanPackageCard_lightFeesInfo__2z-Do">Light
													요금제의 모든 서비스에 추가로</p>
												<ul>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>📣
														오픈예정 서비스</li>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>👩‍💻
														1:1 프로젝트 매니저 온라인 상담</li>
												</ul>
												<p class="FundingPlanPackageCard_serviceInfo__3kCh6">온라인
													상담은 2022.08.30 이후 제출 건에 한하여 제공됩니다</p>
												<button
													class="Button_button__1e2A2 Button_text__3KyLl Button_lg__3vRQD FundingPlanPackageCard_afterActionButton__3jsMR"
													type="button">
													<span><span class="Button_children__q9VCZ">자세히
															알아보기 <svg viewBox="0 0 40 40" focusable="false"
																role="presentation" class="withIcon_icon__3lrgp"
																aria-hidden="true">
																<path
																	d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
													</span></span>
												</button>
											</div>
											<div
												class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_footer__3SlKP">
												<button
													class="Button_button__1e2A2 Button_primary__PxOJr Button_lg__3vRQD Button_block__2mEqp"
													type="button">
													<span><span class="Button_children__q9VCZ">이걸로
															할게요</span></span>
												</button>
											</div>
										</div>
									</article></li>
								<li><article
										class="FundingPlanPackageCard_packageCard__3DZcn FundingPlanPackageCard_pro__2olNa"
										data-type="pro">
										<div
											class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_header__8Ai7N">
											<h1>
												pro<small>(프로)</small>
											</h1>
											<div class="FundingPlanPackageCard_fee__2KkSS">
												<span>수수료 </span><strong>13% </strong><small>(VAT
													별도)</small>
											</div>
										</div>
										<div class="FundingPlanPackageCard_bodyWrapper__1DsSN">
											<div
												class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_body__1kwNJ">
												<p class="FundingPlanPackageCard_description__EH_Vy">
													<span>온∙오프라인에서<br></span><span>동시에 서포터를 모으고 싶은
														메이커님<br>
													</span>
												</p>
												<p class="FundingPlanPackageCard_lightFeesInfo__2z-Do">Light
													요금제의 모든 서비스에 추가로</p>
												<ul>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>📣
														오픈예정 서비스</li>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>✨
														공간 와디즈 쇼룸</li>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>👩‍💻
														1:1 프로젝트 매니저 온라인 상담</li>
												</ul>
												<p class="FundingPlanPackageCard_serviceInfo__3kCh6">온라인
													상담은 2022.08.30 이후 제출 건에 한하여 제공됩니다</p>
												<button
													class="Button_button__1e2A2 Button_text__3KyLl Button_lg__3vRQD FundingPlanPackageCard_afterActionButton__3jsMR"
													type="button">
													<span><span class="Button_children__q9VCZ">자세히
															알아보기 <svg viewBox="0 0 40 40" focusable="false"
																role="presentation" class="withIcon_icon__3lrgp"
																aria-hidden="true">
																<path
																	d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
													</span></span>
												</button>
											</div>
											<div
												class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_footer__3SlKP">
												<button
													class="Button_button__1e2A2 Button_primary__PxOJr Button_lg__3vRQD Button_block__2mEqp"
													type="button">
													<span><span class="Button_children__q9VCZ">이걸로
															할게요</span></span>
												</button>
											</div>
										</div>
									</article></li>
								<li><article
										class="FundingPlanPackageCard_packageCard__3DZcn FundingPlanPackageCard_expert__2M2AB"
										data-type="expert">
										<div
											class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_header__8Ai7N">
											<h1>
												expert<small>(엑스퍼트)</small>
											</h1>
											<div class="FundingPlanPackageCard_fee__2KkSS">
												<span>수수료 </span><strong>별도 협의
													<div>
														<button type="button"
															class="Tooltip_button__26Zz0 FundingPlanPackageCard_tooltip__2mtGK"
															aria-describedby="packageCardTooltip">
															<span class="Tooltip_label__1s0-R"></span><span
																class="Tooltip_helpIconWrap__3JEtO"><svg
																	viewBox="0 0 40 40" focusable="false"
																	role="presentation"
																	class="withIcon_icon__1Oal1 Tooltip_helpOutlineIcon__34Kpp"
																	aria-hidden="true">
																	<path fill="none" d="M0 0h40v40H0z"></path>
																	<path
																		d="M20 39a19 19 0 1 1 19-19 19.06 19.06 0 0 1-19 19zm0-36a17 17 0 1 0 17 17A17 17 0 0 0 20 3z"></path>
																	<path
																		d="M24.34 10A5.75 5.75 0 0 0 20 8.33a5.7 5.7 0 0 0-6 6h2a3.7 3.7 0 0 1 4-4 3.7 3.7 0 0 1 4 4A4.29 4.29 0 0 1 22 18l-.7.6a6.51 6.51 0 0 0-2.3 5.7h2c0-1.9 0-2.6 1.7-4.3l.6-.5a6.28 6.28 0 0 0 2.7-5.2 5.73 5.73 0 0 0-1.66-4.3zM20 26.87a1.8 1.8 0 1 0 0 3.6 1.8 1.8 0 1 0 0-3.6z"></path></svg>
																<svg viewBox="0 0 40 40" focusable="false"
																	role="presentation"
																	class="withIcon_icon__1Oal1 Tooltip_helpIcon__MM_KL"
																	aria-hidden="true">
																	<path fill="none" d="M0 0h40v40H0z"></path>
																	<path
																		d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm0 29.5a1.8 1.8 0 1 1 1.8-1.79 1.8 1.8 0 0 1-1.8 1.75zm6-16.13a6.28 6.28 0 0 1-2.7 5.2l-.6.5c-1.7 1.7-1.7 2.4-1.7 4.3h-2a6.51 6.51 0 0 1 2.3-5.7L22 18a4.29 4.29 0 0 0 2-3.7 3.7 3.7 0 0 0-4-4 3.7 3.7 0 0 0-4 4h-2a5.7 5.7 0 0 1 6-6 5.7 5.7 0 0 1 6 6z"></path></svg></span>
														</button>
													</div>
												</strong><small>(VAT 별도)</small>
											</div>
										</div>
										<div class="FundingPlanPackageCard_bodyWrapper__1DsSN">
											<div
												class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_body__1kwNJ">
												<p class="FundingPlanPackageCard_description__EH_Vy">
													<span>프로젝트의 성공을 도와 줄<br></span><span>프로젝트 담당
														디렉터를 만나고 싶은 메이커님<br>
													</span>
												</p>
												<p class="FundingPlanPackageCard_lightFeesInfo__2z-Do">Light
													요금제의 모든 서비스에 추가로</p>
												<ul>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>📣
														오픈예정 서비스</li>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>✨
														공간 와디즈 쇼룸</li>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>🔊
														마케팅 가이드 서비스</li>
													<li><svg viewBox="0 0 48 48" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
															<path
																d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg>👨‍💻
														프로젝트 담당 디렉터 가이드</li>
												</ul>
												<button
													class="Button_button__1e2A2 Button_text__3KyLl Button_lg__3vRQD FundingPlanPackageCard_afterActionButton__3jsMR"
													type="button">
													<span><span class="Button_children__q9VCZ">자세히
															알아보기 <svg viewBox="0 0 40 40" focusable="false"
																role="presentation" class="withIcon_icon__3lrgp"
																aria-hidden="true">
																<path
																	d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
													</span></span>
												</button>
											</div>
											<div
												class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_footer__3SlKP">
												<button
													class="Button_button__1e2A2 Button_primary__PxOJr Button_lg__3vRQD Button_block__2mEqp"
													type="button">
													<span><span class="Button_children__q9VCZ">이걸로
															할게요</span></span>
												</button>
											</div>
										</div>
									</article></li>
							</ul>
							<div color="basic"
								class="MessageBox_messageBox__3acWS MessageBox_basic__2vbop MessageBox_vertical__1mezf FundingPlanLayout_messageBox__26gC-">
								<span><svg viewBox="0 0 40 40" focusable="false"
										role="presentation"
										class="withIcon_icon__1Oal1 MessageBox_icon__31KWI"
										aria-hidden="true">
										<path fill="none" d="M0 0h40v40H0z"></path>
										<path
											d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z"></path></svg></span>
								<div class="MessageBox_content__3db50">
									<p class="MessageBox_title__23TW6">요금제 선택 전 확인해 주세요.</p>
									<div class="MessageBox_description__1bCQv">전자 결제
										수수료(PG사)가 포함된 요금제입니다. (VAT 별도)</div>
								</div>
							</div>
							<button
								class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD FundingPlanLayout_submitBtn__1EzVj"
								type="submit">
								<span><span class="Button_children__q9VCZ">저장하기</span></span>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>