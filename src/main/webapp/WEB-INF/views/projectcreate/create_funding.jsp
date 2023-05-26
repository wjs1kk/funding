<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css" rel="stylesheet">
<link href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/9.2112a1bf.chunk.css">

</head>
<body class="ReactModal__Body--open" aria-hidden="true">
	<div data-react-modal-body-trap="" tabindex="0"
		style="position: absolute; opacity: 0;"></div>
	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
			<nav class="DetailNavbar_container__3SkEf">
				<jsp:include page="../inc/project_top.jsp"></jsp:include>
			</nav>
			<div class="AppLayout_main__14bCi">
				<jsp:include page="../inc/create_project_side.jsp"></jsp:include>
				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<div class="FundingContainer_wrapper__3FtZE">
						<div class="FundingHeader_container__2vEbt">
							<h2 class="FundingHeader_title__19M9i">프로젝트 관리</h2>
							<p class="FundingHeader_description__1vRHW">프로젝트를 공개하는 데 필요한
								내용을 작성해 주세요.</p>
						</div>
						<div class="FundingLayout_container___Cixh">
							<div class="FundingLayout_contents__12sTn">
								<div class="FundingStatus_container__3bqGB">
									<div class="FundingStatus_label__393mk">
										프로젝트 준비 상태
										<button class="FundingStatus_link__3Dz78" type="button">지금
											나의 단계는?</button>
									</div>
									<div class="FundingStatus_statusView__D10Ag"></div>
									<div class="FundingStatus_statusView__D10Ag">
										<div class="FundingStatus_icon__1Xrqx yellow"></div>
										작성 중
									</div>
									<div class="FundingStatus_guide__37jtT">아래의 필수 항목들이 모두 작성
										완료 상태로 바뀌면 [제출하기]를 누를 수 있어요.</div>
								</div>
								<div class="FundingContainer_listContainer__1jw_z">
									<div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm"
												href="plan?project_idx=${param.project_idx }">요금제 선택</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													중</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="plan"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">프로젝트 정보</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="screening"><button
													
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">기본 정보</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="baseinfo"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">스토리 작성</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="story"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">리워드 설계</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
													<!-- 05-16 김동욱 리워드 설계 페이지 추가 -->
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="reward"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">정책</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="project/policy"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">메이커 정보</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="project/makerInfo"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">대표자 및 정산 정보</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="project/contractInfo"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
									</div>
								</div>
								<div class="FundingSubmit_container__3kwkh">
									<button type="button" disabled=""
										class="wz button primary FundingSubmit_button__1Qs0d">제출하기</button>
								</div>
							</div>
							
							
							<!-- 오른쪽 (공간 와디즈 쇼룸 신청하기, 필수 서류 확인하기 등 배너) -->
							<div class="FundingLayout_guideWrapper__3ad2H">
								<button class="BannerLinkButton_container__3MHMT" type="button">
									<div class="BannerLinkButton_icon__UDYk2">
										<i class="BannerGuide_guideIcon__1bhqD" aria-hidden="true"></i>
									</div>
									<div class="BannerLinkButton_content__BzS52">
										<div class="BannerLinkButton_title__rE4Eg">다른 메이커들 다 본다는</div>
										<div class="BannerLinkButton_description__yl6rf">필수 가이드
											모음집</div>
									</div>
								</button>
								<button class="BannerLinkButton_container__3MHMT" type="button">
									<div class="BannerLinkButton_icon__UDYk2">
										<i class="BannerGuide_gptIcon__7mV_j" aria-hidden="true"></i>
									</div>
									<div class="BannerLinkButton_content__BzS52">
										<div class="BannerLinkButton_title__rE4Eg">매력적인 콘텐츠 작성이
											고민이라면</div>
										<div class="BannerLinkButton_description__yl6rf">
											GPT 어드바이저 <i class="BannerGuide_gptDescription__2i3cE"
												aria-label="beta"></i>
										</div>
									</div>
								</button>
								
								<div class="SpaceWadizBanner_container__3uIQ6">
									<button class="SpaceWadizBanner_containerButton__ZkmBK"
										type="button">
										<div class="SpaceWadizBanner_bannerWrap__3G5ib"></div>
									</button>
								</div>
								<div class="FundingAdList_adWrapper__w174g">
									<ul>
										<li class="FundingAdList_adItem__2L_vx"><a
											href="https://makercenter.wadiz.kr/board/basic/245?_refer_section_st=RA1_1"
											target="_blank" rel="nofollow noopener noreferrer"><div
													class="FundingAdList_adSection__5D9qV"
													style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2022/0412/20220412005530271_4102.png&quot;);"></div></a></li>
										<li class="FundingAdList_adItem__2L_vx"><a
											href="https://www.partnerzone.wadiz.kr/?utm_source=studio&amp;utm_medium=organic&amp;utm_campaign=partner-service-2.0&amp;utm_content=main-banner&amp;_refer_section_st=RA1_3"
											target="_blank" rel="nofollow noopener noreferrer"><div
													class="FundingAdList_adSection__5D9qV"
													style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2023/0317/20230317180828755_1991.jpg&quot;);"></div></a></li>
										<li class="FundingAdList_adItem__2L_vx"><a
											href="https://www.wadiz.kr/web/store/detail/1?_refer_section_st=RA1_5"
											target="_blank" rel="nofollow noopener noreferrer"><div
													class="FundingAdList_adSection__5D9qV"
													style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2023/0202/20230202120020047_2536.jpg&quot;);"></div></a></li>
										<li class="FundingAdList_adItem__2L_vx"><a
											href="https://makercenter.wadiz.kr/menu/20?_refer_section_st=RA1_2"
											target="_blank" rel="nofollow noopener noreferrer"><div
													class="FundingAdList_adSection__5D9qV"
													style="background-image: url(&quot;https://cdn.wadiz.kr/ft/images/green001/2022/0811/20220811173819392_1730.jpg&quot;);"></div></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="ChannelTalk_container__3OcHU">
						<button type="button"></button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>