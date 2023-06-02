<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri ="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/studio/funding/static/css/19.b3b957fa.chunk.css">
<link
	href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css"
	rel="stylesheet">
<link
	href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css"
	rel="stylesheet">
	
<script type="text/javascript">
	$(function() {
		$(".not_selected").on("click", function() {
			$('.not_selected').css('display', 'none');
			$('.selected').css('display', 'block');
			
			$('.not_selected2').css('display', 'block');
			$('.not_selected3').css('display', 'block');
			
			$('.selected2').css('display', 'none');
			$('.selected3').css('display', 'none');
			
			$("#project_plan").val(1);
			
		})
	})
	
	$(function() {
		$(".not_selected2").on("click", function() {
			$('.not_selected2').css('display', 'none');
			$('.selected2').css('display', 'block');
			
			$('.not_selected').css('display', 'block');
			$('.not_selected3').css('display', 'block');
			
			$('.selected').css('display', 'none');
			$('.selected3').css('display', 'none');
			$("#project_plan").val(2);
		})
	})
	
	$(function() {
		$(".not_selected3").on("click", function() {
			$('.not_selected3').css('display', 'none');
			$('.selected3').css('display', 'block');	
			
			$('.not_selected').css('display', 'block');
			$('.not_selected2').css('display', 'block');
			
			$('.selected').css('display', 'none');
			$('.selected2').css('display', 'none');
			$("#project_plan").val(3);
		})
	})
	
	$(function() {
		$('#save').click(function(){			
			if($(".selected").css('display') == ('none') &&
			   $(".selected2").css('display') == ('none') &&
			   $(".selected3").css('display') == ('none')){
				alert("요금제를 선택해 주세요")
			} else {
				$.ajax({
					type: "post",
					url: "projectPlanUpdate",
					data: { project_idx:${param.project_idx},
						project_plan: $("#project_plan").val()
					},
					success: function() {
						location.href = "main?project_idx="+${param.project_idx};
					}
				});
			}
		})
	})
	
	
	// 05-26 김동욱 기존에 저장된 플랜정보가 있으면 거기에 해당되는 플랜을 클릭된 CSS 적용로
	$(function() {
		$.ajax({
			type: "post",
			url: "getProjectPlan",
			data: { project_idx:${param.project_idx},
			},
			success: function(response) {
				if(response == "1"){
					$(".not_selected").click();
				}else if(response == "2"){
					$(".not_selected2").click();
				}else if(response == "3"){
					$(".not_selected3").click();
				}
			}
		});
	})
	
	$(function() {
		// 05-31 김동욱 승인 여부 확인 후 저장버튼 비활성화
		$.ajax({
			 url: 'projectUpdateCheck',
	          type: 'POST',
	          data: {project_idx: ${param.project_idx}},
	          dataType: "json",
	          success: function(response) {
	        	  
	        	  // project_approve_status가 2(승인)또는 3(거부)이면 저장버튼 비활성화
	        	  if(response.project_approve_status == "2" || response.project_approve_status == "3"){
	        		  $("#save").attr("disabled", true);
	        	  }
	        	  
	        	  // project_approve_status가 2(승인)가 된 상태에서 project_update_status(수정 권한)가 2(승인)가 되면 저장하기 버튼 활성화
	        	  if(response.project_approve_status == "2" && response.project_update_status == "2"){
	        		  $("#save").attr("disabled", false);
	        	  }
	        	  
	          }
		})
	})
	

</script>
<style type="text/css">

.selected {
	display : none;
}
.selected2 {
	display : none;
}
.selected3 {
	display : none;
}

</style>
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
							<input type="hidden" value="" id="project_plan" name="project_plan">
							<nav class="DetailNavbar_container__3SkEf">
								<jsp:include page="../inc/project_top.jsp"></jsp:include>
							</nav>
							<div class="HeaderLayout_container__3fXkO">
								<div class="HeaderLayout_contents__F4hlC">
									<h2 class="FundingPlanFormContainer_title__3OWgM">요금제 선택</h2>
									<p>원하는 요금제를 선택해 주세요.</p>
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
												
											</div>
											<div
												class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_footer__3SlKP">
												
												<button
													class="not_selected Button_button__1e2A2 Button_primary__PxOJr Button_lg__3vRQD Button_block__2mEqp"
													type="button">
													<span><span class="Button_children__q9VCZ">이걸로	할게요</span></span>
												</button>
																																				
												<button
													class="selected Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD Button_startIcon__19sdm Button_block__2mEqp FundingPlanPackageCard_selected__3POWd"
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
												
												
											</div>
											<div
												class="FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_footer__3SlKP">
												<button
													class="not_selected2 Button_button__1e2A2 Button_primary__PxOJr Button_lg__3vRQD Button_block__2mEqp"
													type="button">
													<span><span class="Button_children__q9VCZ">이걸로 할게요</span></span>
												</button>
												
												<button
													class="selected2 Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD Button_startIcon__19sdm Button_block__2mEqp FundingPlanPackageCard_selected__3POWd"
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
												
												
											</div>
											<div
												class=" FundingPlanPackageCard_container__Z08e_ FundingPlanPackageCard_footer__3SlKP">
												<button
													class="not_selected3 Button_button__1e2A2 Button_primary__PxOJr Button_lg__3vRQD Button_block__2mEqp"
													type="button">
													<span><span class="Button_children__q9VCZ">이걸로	할게요</span></span>
												</button>
												<button
													class="selected3 Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD Button_startIcon__19sdm Button_block__2mEqp FundingPlanPackageCard_selected__3POWd"
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
							<input type="button" id="save" name="savePlan" value="저장하기" class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD FundingPlanLayout_submitBtn__1EzVj">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>