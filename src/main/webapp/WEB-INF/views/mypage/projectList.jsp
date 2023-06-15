<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<html lang="ko" class="scroll-top scroll-apex">
<head>
<title>만든 프로젝트</title>
<link rel="stylesheet" href="../resources/css/mypage.css">

<link rel="stylesheet" href="https://static.wadiz.kr/static/web/wui.css?c6d769d8">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/css/vendor.6da506ac.chunk.css">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/common.css?4df0e3de">
<link rel="stylesheet" href="https://static.wadiz.kr/static/web/layout.css?784fc256">

<link href="https://cdn.wadiz.kr/resources/static/css/wlayout.css?v=20230613" rel="stylesheet">
<link rel="stylesheet" href="/resources/static/css/style.css">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
	<c:if test="false">
		<link rel="stylesheet" href="">
	</c:if>
	<c:if test="true">
		<link rel="stylesheet"
			href="https://static.wadiz.kr/account/main.0ed32797.css">
	</c:if>
	<link href="/resources/static/css/wmypage.css?v=20230502" rel="stylesheet">
	<link href="/resources/static/css/util.css" rel="stylesheet">
	<link href="/resources/static/css/wprojectcard.css" rel="stylesheet">
	<link rel="stylesheet" href="/resources/static/css/style.css">
	<link rel="stylesheet" href="/resources/static/css/style.css">
	<link rel="stylesheet" href="https://static.wadiz.kr/static/floating-buttons/main.98b034d0.css">
</head>
<body>

	<div id="page-container">
		<jsp:include page="../inc/top.jsp"></jsp:include>
	
		<div class="black-bg-wrap" style="display: none;"></div>
		<form id="forwardForm" method="get">
			<input type="hidden" id="returnURL" name="returnURL">
		</form>
		<input type="hidden" id="sessionLoginCheck" value="true">

		<div id="wadizContainer">
			<div id="mypageWrap" class="mypage">
				<div class="myfunding-wrap">
					<h2 class="mypage-top-title">만든 프로젝트</h2>

					<div class="mypage-project bg ">
						<div class="project-list">
							<div id="projectCardList" class="card-list pt50" style="padding: 180px;">
								<ul style="margin: 0 auto">
									<c:choose>
										<c:when test="${empty projectList }">
											<tr>
												<td colspan="4"> 참여한 펀딩 내역이 존재하지 않습니다.</td>
											</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${projectList}" var="projectList">
												<li class="reward">
												
													<div class="visibility-control" >
														<button type="button" class="btn-more">
															<i class="wadizicon wa-more-vert"></i>
														</button>
													</div>
													<div class="project-card-wrap" style="background: white;">
														<div class="project-card">
															<div class="card-img-section">
																<em class="project-img">
																	<div class="default" >
																		<p></p>
																		<c:choose>
																		  <c:when test="${not empty projectList.project_thumbnail}">
																		    <img src="${pageContext.request.contextPath}/resources/images/project_thumbnail/${projectList.project_thumbnail}" 
																		    		alt="Project Thumbnail" style="height: 200px;">
																		  </c:when>
																		  <c:otherwise>
																		    <img src="${pageContext.request.contextPath}/resources/images/project_thumbnail/default_image.png" 
																		    		alt="Default Thumbnail" style="height: 200px;">
																		  </c:otherwise>
																		</c:choose>
																		
																	</div>
																	</em> 
																<em class="project-type reward"></em>
																
															</div>
															
															
															<div class="card-info-section making-project">
																<c:choose>
																	<c:when test="${empty projectList.project_title}">
																		<h4 class="TextContent_title__3Clug">제목을 입력해주세요!</h4>
																	</c:when>
																	<c:otherwise>
																		<h4 class="TextContent_title__3Clug">${projectList.project_title }</h4>
																	</c:otherwise>
																</c:choose>
																<c:choose>
																	<c:when test="${empty projectList.project_category}">
																		<h5>카테고리를 입력해주세요!</h5>
																	</c:when>
																	<c:otherwise>
																		<h5>${projectList.project_category}</h5>
																	</c:otherwise>
																</c:choose>
																<p class="status confirm">
																	
																	<c:choose>
																	<c:when test="${projectList.project_approve_status eq '1'}">
																		<i style="background-color: #FFB500"></i>제출완료
																	</c:when>
																	<c:otherwise>
																		<i style="background-color: #00c4c4"></i>승인완료
																	</c:otherwise>
																</c:choose>
																	
																	
																</p>
																<p></p>
															</div>
															<div class="btn-wrap">
															<a class="CardType_projectCard__2S8_G CardType_projectCardB__PatIP MyWadizMyProject_defaultImage__Tr8wd"
																	href="../project/main?project_idx=${projectList.project_idx}">
																<button class="btn-line div1">스튜디오 바로가기</button>
															</a>
															</div>
														</div>
													</div>
												</li>
											</c:forEach>
										</c:otherwise>
									</c:choose>
								</ul>
								<p id="emptyProjectText">
									만든 프로젝트가 없습니다.<br>바로 신청해 보시겠어요?<br>
									<br> <a href="/web/wsub/openfunding"><strong>펀딩오픈
											신청하기 <i class="wadizicon wa-chevron-right"></i>
									</strong></a>
								</p>
							</div>
							<!--  // .card-list -->
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- // #wadizContainer -->
	</div>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
	
</body>
</html>