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

<script src="../resources/js/jquery-3.6.4.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />



<script>
	// 모달창 띄우기
	$(function(){ 
		$("#popButton").click(function(){
	    	$(".modal").fadeIn();
	  	});
		
	  	$(".modal_content").click(function(){
	    	$("#test").fadeOut();
	  	});
	});
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
					<div class="container py-5" style="width: 50%; margin: 0 auto;">
					<div class="row">
						<div class="col-md-8 pb-6">
							<div class="mypage-section on" id="mypage_section_point" style="">
								
									<c:if test="${inquiryVO.inq_progress ne '답변' }">
									<fieldset>
										<section class="section-form">
											<div class="form-header">
												<h2 class="tit-size-mid">
													<c:choose>
														<c:when test="${inquiryVO.inq_progress eq '진행중'}">
															<span class="it-notice" style="background-color: #ffab00">${inquiryVO.inq_progress}</span>
														</c:when>
														<c:otherwise>
															<span class="it-notice" style="background-color: #97cf2f">${inquiryVO.inq_progress}</span>
														</c:otherwise>
													</c:choose>
													${inquiryVO.inq_subject}</h2>
											</div>
											
											<div class="form-cont">
												<div class="row type2">
													<label for="input02" class="input-tit">제목
														<span class="txt-red">*</span></label>
													<div class="input-cont">
														<div class="inputT">
															<div id="board_subject">
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
													<h2 class="tit-size-mid">
														<span class="it-notice">${inquiryVO.inq_progress}</span>
														${inquiryVO.inq_subject}</h2>
												</div>
												<div class="form-cont">
													<div class="row type2">
														<label for="input02" class="input-tit">제목<span
															class="txt-red">*</span></label>
														<div class="input-cont">
															<div class="inputT">
																<div id="board_subject">
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
									<!-- href 속성값을 사용하여 modal을 띄워주는 링크 -->
									<p>
										<a href="#test" rel="modal:open">
										<input type="button" value="목록" onclick="history.back()" style="background-color: #00c4c4;"
												class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_sm__16X6h Button_startIcon__3p6wN">
										<button class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_sm__16X6h Button_startIcon__3p6wN"  type="button" id="popButton">
											<span>
												<svg viewBox="0 0 32 32" focusable="false" role="presentation"
													class="withIcon_icon__3VTbq Button_icon__t6yp6 MakerInfoHeader_icon__2uRNH"
													aria-hidden="true" style="width: 14px; height: 14px;">
													<path d="M30.4 15.2H16.8V1.6h-1.6v13.6H1.6v1.6h13.6v13.6h1.6V16.8h13.6v-1.6z"></path></svg>
													<span class="Button_children__ilFun">답변하기</span></span>
										</button>
										</a>
									</p>
										
			
									</section>
									
									<!-- modal에 띄우고자하는 코드 -->
									<div id="test" class="modal">
										<form action="inquiry_reply" method="post">
											<input type="hidden"  name="member_idx" value="${inquiryVO.member_idx}">
											<input type="hidden"  name="maker_idx" value="${inquiryVO.maker_idx}">
											<input type="hidden"  name="inq_subject" value="${inquiryVO.inq_subject}">
											<input type="hidden"  name="inq_re_ref" value="${inquiryVO.inq_re_ref}">
											<h1 class="d-flex justify-content-center text-secondary">${inquiryVO.inq_subject} 답변하기</h1>
											<hr>
											<h3>답변 내용</h3>
											<textarea id="inq_content" name="inq_content" rows="10" cols="52" style="resize: none; text-align: left; font-size: 15px; border-color: blue; border: aqua;"></textarea>		
											<hr>
											<div align="right">
												<a href='#' rel=""><button class="Button_button__2FuOU Button_primary__2mZni Button_sm__16X6h Button_startIcon__3p6wN" type="submit">답변하기</button></a>
											  	<a href="#" rel="modal:close"><button class="Button_button__2FuOU Button_tertiaryGrey__3gRf4 Button_sm__16X6h" type="button">닫기</button></a>    <!-- 닫기버튼 -->
										  	</div>
									  	</form>
									</div>
									
									
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