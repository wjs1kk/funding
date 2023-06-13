<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


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
					<div class="container py-5" style="width: 65%; margin: 0 auto;">
					<div class="row">
						<div class="col-md-8 pb-6">
							<div class="mypage-section on" id="mypage_section_point" style="">
								<form id="mailForm" name="mailForm" method="post">
								
									<c:if test="${inquiryVO.inq_progress ne '답변' }">
									<fieldset>
										<section class="section-form">
											<div class="form-header">
												<h2 class="tit-size-mid">${inquiryVO.inq_subject}</h2>
											</div>
											
											<div class="form-cont">
												<div class="row type2">
													<label for="input02" class="input-tit">제목
														<span class="txt-red">*</span></label>
													<div class="input-cont">
														<div class="inputT">
															<div id="board_subject">
																<span class="it-notice">${inquiryVO.inq_progress}</span>
																${inquiryVO.inq_subject}
															</div>
														</div>
													</div>
												</div>
												<div class="row type2">
													<label for="input02" class="input-tit">날짜
														<span class="txt-red">*</span></label>
													<div class="input-cont">
														<div class="inputT">
															<div id="board_date">${inquiryVO.inq_date}</div>
														</div>
													</div>
												</div>
												<div class="row type2">
													<label for="" class="input-tit">문의내용
														<span class="txt-red">*</span></label>
													<div class="textarea">
														<div id="board_content">${inquiryVO.inq_content}</div>
													</div>
												</div>
											</div>
										</section>
									</fieldset>
									</c:if>
									
									<c:if test="${inquiryVO.inq_progress eq '답변' }">
										<fieldset>
											<section class="section-form">
												<div class="form-header">
													<h2 class="tit-size-mid">${inquiryVO.inq_subject}</h2>
												</div>
												<div class="form-cont">
													<div class="row type2">
														<label for="input02" class="input-tit">제목<span
															class="txt-red">*</span></label>
														<div class="input-cont">
															<div class="inputT">
																<div id="board_subject">
																	<span class="it-notice">${inquiryVO.inq_progress}</span>
																	${inquiryVO.inq_subject}
																</div>
															</div>
														</div>
													</div>
													<div class="row type2">
														<label for="input02" class="input-tit">날짜
															<span class="txt-red">*</span></label>
														<div class="input-cont">
															<div class="inputT">
																<div id="board_date">${inquiryVO.inq_date}</div>
															</div>
														</div>
													</div>
													<div class="row type2">
														<label for="" class="input-tit">문의내용
															<span class="txt-red">*</span></label>
														<div class="textarea">
															<div id="board_content">${inquiryVO.inq_content}</div>
														</div>
													</div>
												</div>
											</section>
										</fieldset>
									</c:if>
									<section id="commandList">
										<input type="button" value="목록" onclick="history.back()" style="background-color: #0d6ffc;">
			
									</section>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../inc/footer.jsp"></jsp:include>
	
</body>
</html>