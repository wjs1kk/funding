<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>title here</title>
<link rel="stylesheet" href="../resources/css/mypage.css">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<style type="text/css">
.mypage-section {
	display: none;
}
.on {
	display: block;
}
</style>
</head>

<body>
	<div class="container py-5">
		<div class="row">
			<div class="col-md-8 pb-6">
				<div class="mypage-section on" id="mypage_section_point" style="">
					<form id="mailForm" name="mailForm" method="post">
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
						<c:if test="${inquiryVO.inq_progress ne '진행중' }">
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
														<span class="it-notice">${inquiryVO2.inq_progress}</span>
														${inquiryVO2.inq_subject}
													</div>
												</div>
											</div>
										</div>
										<div class="row type2">
											<label for="input02" class="input-tit">날짜
												<span class="txt-red">*</span></label>
											<div class="input-cont">
												<div class="inputT">
													<div id="board_date">${inquiryVO2.inq_date}</div>
												</div>
											</div>
										</div>
										<div class="row type2">
											<label for="" class="input-tit">문의내용
												<span class="txt-red">*</span></label>
											<div class="textarea">
												<div id="board_content">${inquiryVO2.inq_content}</div>
											</div>
										</div>
									</div>
								</section>
							</fieldset>
						</c:if>
						<section id="commandList">
							<input type="button" value="목록" onclick="history.back()">
<%-- 							<c:choose> --%>
<%-- 								<c:when test="${member_email ne mailForm.member_email}"> --%>
<!-- 									<input type="button" value="삭제" -->
<%-- 										onclick="location.href='deleteView.mf?board_num=${mailForm.board_num}'"> --%>
<%-- 								</c:when> --%>
<%-- 							</c:choose> --%>

						</section>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>

</html>