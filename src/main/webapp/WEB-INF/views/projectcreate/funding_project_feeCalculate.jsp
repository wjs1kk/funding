<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css"
	rel="stylesheet">
<link
	href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/studio/funding/static/css/9.2112a1bf.chunk.css">
<!-- 05-29 김동욱 jquery 라이브러리 추가 -->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$("#calculate_save").on("click", function() {
			$('#modal').css('display', 'block');			
		})
	})
</script>
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
						<div class="FundingLayout_container___Cixh">
							<div class="FundingLayout_contents__12sTn">
								<div class="FundingContainer_listContainer__1jw_z">
									<div>


										<div class="HeaderLayout_container__3fXkO">
											<div class="HeaderLayout_contents__F4hlC">
												<h2 class="ProjectTypeFormContainer_title__3Zn37">수수료∙정산 관리</h2>
											</div>

										</div>
										<form class="ProjectTypeFormContainer_form__3kGVN">
											<!-- 저장하기 버튼 -->
											<div class="ProjectTypeFormContainer_buttonWrapper__3fh_J">
												<input type="button" style="width: 420px; max-width: 100%;"
													id="calculate_apply" name="savePlan" value="정산금 지급 신청하기"
													class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD FundingPlanLayout_submitBtn__1EzVj">
												<input type="button" style="width: 420px; max-width: 100%;"
													id="calculate_save" name="savePlan" value="정산 내역서 보기"
													class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD FundingPlanLayout_submitBtn__1EzVj">
											</div>
										</form>
									</div>
								</div>
								<!-- 					심사서류 모달 -->
								<div class="ModalWrapper_modalWrapPortal__3hqCw" id="modal"
									style="display: none">
									<div
										class="ModalWrapper_modalWrapOverlay__25q_n ModalWrapper_modalWrapOverlayAfterOpen__2TRqO">
										<div
											class="ModalWrapper_modalWrapContent__27xIR ModalWrapper_modalWrapContentAfterOpen__2OfUs"
											tabindex="-1" role="dialog">
											<div class="ModalLayout_modalWrap__2TF56">
												<div class="ModalLayout_modalWrapBox__2jSsd">
													<h3 class="ModalLayout_title__2qKim">정산 내역서</h3>
													<button type="button"
														class="wz button less icon dense ModalLayout_closeButton__3XepS"
														id="modal_close"
														onclick="location.href='projectFeeCalculate?project_idx=' + ${param.project_idx}">
														<svg viewBox="0 0 40 40" focusable="false"
															role="presentation" class="withIcon_icon__3lrgp"
															aria-hidden="true">
												<path
																d="M33.4 8L32 6.6l-12 12-12-12L6.6 8l12 12-12 12L8 33.4l12-12 12 12 1.4-1.4-12-12 12-12z"></path></svg>
													</button>
													<div>
														<h4>프로젝트명 (프로젝트번호: ${param.project_idx })</h4>
														<p style="color: #00c4c4;"> 프로젝트 이름</p>
													</div>
													<hr>
													<div>
														<h4>정산 지급금액(① - ②)</h4>
														<p style="color: red;">000원</p>
														<p>해당 프로젝트의 정산금은 일괄정산되어 지급됩니다.</p>
													</div>
													<hr>
													<div>
														<h4>① 최종 결제완료 금액</h4>
														<b>~~원</b>
														<p>포인트 & 쿠폰 결제분 ~~원 / 배송료 합계 ~~원 포함</p>
													</div>
													<hr>
													<div>
														<h4>② 세금계산서 발행금액</h4>
														<b>~~원</b>
														<p>아이펀드 중개 수수료 + 카드 결제 (PG 등) 대행 수수료</p>
													</div>
													<hr>
													<div align="center">
														<p>아이펀드 중개 수수료(기본수수료, 데이터 플러스)</p>
														<b>~~원</b>
														<p>(최종 결제완료 금액 - 배송료 합계) X 7.7%</p>
														<br>
														<p>카드 결제 (PG 등) 대행 수수료</p>
														<b>~~원</b>
														<p>(최종 결제완료 금액 - 포인트 & 쿠폰 결제분) X 3.3%</p>
													</div>
													<hr>
													<div align="center">
														<span>작성일자: </span><span id="current_date"> </span>
														<script>
														date = new Date();
														year = date.getFullYear();
														month = date.getMonth() + 1;
														day = date.getDate();
														document.getElementById("current_date").innerHTML = year + "." + month + "." + day;
														</script>
														<p>아이펀드 (주)</p>
													</div>
												</div>
										</div>
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