<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="ko" class="scroll-top">
<head>
<link rel="stylesheet" href="resources/css/mypage.css">

<title>아이펀드 마이 아이펀드</title>

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c542abcf">
<link rel="stylesheet" href="https://static.wadiz.kr/main/main.c1266dc7.css">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/my-wadiz.ddf07734.chunk.css">
<script type="text/javascript" src="https://static.wadiz.kr/static/web/common.js?db524cda"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
function supporter() {
  window.location.href = 'supporter';
}

function maker() {
  window.location.href = 'maker';
}

</script>

</head>
<body style="overflow: auto;">
	<div id="page-container">
		<main id="main-app">
			<jsp:include page="../inc/top.jsp"></jsp:include>
			<div class="MainWrapper_content__GZkTa">
				<section class="MyWadizPage_myWadizPage__wOTdS">
					<div class="MyWadizPage_profileBackground__T_LTr"
						aria-hidden="true"></div>
					<h2 class="BlindText_textHidden__ovQb4">마이아이펀드</h2>
					<div class="MyWadizPage_inner__1oq9M">
						<div class="MyWadizPage_popperBox__113hj">
							<div class="MyWadizHeader_wadizHeader__8fJ9f">
								<div class="MyWadizUserTypeSwitch_container__8B_kv MyWadizUserTypeSwitch_isMaker__2h2K4 MyWadizHeader_switch__2WQSt" role="tablist">
									<button role="tab" id="myWadizTab_supporter" aria-controls="myWadizPanel_supporter" aria-selected="false" onclick="supporter()"
										aria-label="supporter" data-event="supporter_mode" class="MyWadizUserTypeSwitch_button__BYDWf MyWadizUserTypeSwitch_supporter__1yivJ"></button>
									<button role="tab" id="myWadizTab_maker" aria-controls="myWadizPanel_maker" aria-selected="true" onclick="maker()"
										aria-label="maker" data-event="maker_mode" class="MyWadizUserTypeSwitch_button__BYDWf MyWadizUserTypeSwitch_maker__3C77T MyWadizUserTypeSwitch_active__dwn-k"></button>
								</div>
							</div>
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
												<b class="MyWadizMakerProfile_text__8kdAr"><span>아이펀드 메이커님</span></b>
											</button>
										</div>
									</div>
<!-- 									<button onclick="location.href='checkInfo'" class="Button_button__1HNjI Button_md__2Tyci Button_circular__3BLWf Button_block__3-IpL" type="button"> -->
<!-- 										<span><span class="Button_children__lqBGI">프로필 편집</span></span> -->
<!-- 									</button> -->
									
									<div class="MyWadizSupporterProfile_setting__n8-M7" style="margin-top: 122px;">
										<button onclick="location.href='../logout'" class="Button_button__1HNjI Button_md__2Tyci Button_circular__3BLWf Button_block__3-IpL" type="button">
											<span><span class="Button_children__lqBGI">로그아웃</span></span>
										</button>
									</div>
								</div>
								
								<div class="MyWadizMaker_contents__1blQZ" style="padding: 0px 32px 120px;">
									<div class="MyWadizSection_section__3FCv1">
										<div>
											<div class="TabPanels_tabPanels__3fp_a">
												<div class="MyWadizMyProject_projectListContainer__2C9hy">
													<strong class="MyWadizMyProject_title__2cowP">만든 프로젝트<span>${countProject }</span> </strong> 
													<a class="MyWadizMyProject_more__1FOsj" href="projectList" style="font-size: 15px;">더보기</a>
													<ul class="MyWadizMyProject_hideScroll__uQ06T">
														<!-- 05-16 김동욱 메이커 마이페이지에서 자신이 생성산 프로젝트 리스트 출력 -->
														<c:forEach var="projectList" items="${projectList}">
															<li>
																<!-- 05-16 김동욱 해당 프로젝트 클릭시 project_idx 파라미터를 가지고 create_funding.jsp페이지로 이동 -->
																<a class="CardType_projectCard__2S8_G CardType_projectCardB__PatIP MyWadizMyProject_defaultImage__Tr8wd"
																	href="../project/main?project_idx=${projectList.project_idx}">
																	<article>
																		<c:choose>
																		  <c:when test="${not empty projectList.project_thumbnail}">
																		    <img src="${pageContext.request.contextPath}/resources/images/project_thumbnail/${projectList.project_thumbnail}" 
																		    		alt="Project Thumbnail" style="height: ">
																		  </c:when>
																		  <c:otherwise>
																		    <img src="${pageContext.request.contextPath}/resources/images/project_thumbnail/default_image.png" 
																		    		alt="Default Thumbnail" style="height: ">
																		  </c:otherwise>
																		</c:choose>
																		
																		</span>
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
													<a onclick="location.href='projectCreate'" class="Button_button__1HNjI Button_primary__2kq3x Button_contained__1Lx6c Button_lg__37Mrj Button_block__3-IpL MyWadizMyProject_button__3WHeG"><span><span
														class="Button_children__lqBGI">프로젝트 만들기</span></span></a>
												</div>
												<div class="MyWadizSection_section__3FCv1">
													<h4 class="MyWadizSection_title__2pnV3">나의 활동</h4>
													<div>
														<ul>
															<li class="MyWadizMenu_menu__3b-H-">
																<a href="maker_coupon">
																	<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
																	<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																		<g data-name="레이어 2">
																		<path d="M37.64 17.54l.86-.12V8.5a2 2 0 0 0-2-2h-33a2 2 0 0 0-2 2v8.92l.86.12a2.48 2.48 0 0 1 0 4.92l-.86.12v8.92a2 2 0 0 0 2 2h33a2 2 0 0 0 2-2v-8.92l-.86-.12a2.48 2.48 0 0 1 0-4.92zm-1.14 6.69v7.27h-33v-7.27a4.48 4.48 0 0 0 0-8.46V8.5h33v7.27a4.48 4.48 0 0 0 0 8.46z"></path>
																		<path d="M18.16 16.73a2.66 2.66 0 1 0-2.66 2.66 2.66 2.66 0 0 0 2.66-2.66zm-3.8 0a1.14 1.14 0 1 1 1.14 1.14 1.14 1.14 0 0 1-1.14-1.14zm12.14 4.34a2.66 2.66 0 1 0 2.66 2.66 2.66 2.66 0 0 0-2.66-2.66zm0 3.8a1.14 1.14 0 1 1 1.14-1.14 1.14 1.14 0 0 1-1.14 1.14zm.43-10.45l-1.08-.98-10.99 12.01-.09.09 1.08.98 10.99-12.01.09-.09z"></path>
																		<path fill="none" d="M0 0h40v40H0z"></path></g></svg>
																			</span>
																			<span class="MyWadizMenu_text__9ryGW">쿠폰 신청</span>
																			<span class="MyWadizMenu_arrowIcon__2sutN" aria-hidden="true">
																			<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																			<path d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg></span></a></li>
														</ul>
													
														<ul>
															<li class="MyWadizMenu_menu__3b-H-">
																<a href="supinquiry">
																	<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
																		<svg viewBox="0 0 39.98 39.98" focusable="false" role="presentation" class="withIcon_icon__3VTbq" aria-hidden="true">
																			<g data-name="레이어 2">
																			<path fill="none" d="M0 0h39.98v39.98H0z"></path>
																			<path d="M36.89 6.66H3.61a2 2 0 0 0-1.94 1.95v23.26a1.94 1.94 0 0 0 1.94 1.95h33.28a2 2 0 0 0 2-1.95V8.61a2 2 0 0 0-2-1.95zM3.67 31.87V8.66l33.17-.05v23.21z"></path>
																			<path d="M21.15 22a1.33 1.33 0 0 1-1.8 0L8.07 11.69l-1.34 1.48L18 23.46a3.3 3.3 0 0 0 4.49 0l11.13-10.15-1.35-1.48z"></path></g></svg></span>
																			<span class="MyWadizMenu_text__9ryGW">1 : 1 문의</span>
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
													<a href="../notice" target="_blank" rel="noreferer noopener">
														<span class="MyWadizMenu_icon__1sqne" aria-hidden="true">
															<i class="MyWadizOtherMenu_noticeIcon__2AXx5"></i></span>
														<span class="MyWadizMenu_text__9ryGW">공지사항</span>
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