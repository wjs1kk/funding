<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="ko" class="">

<head>
<title>아이펀드 프로젝트만들기 스토리작성</title>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>

<link
	href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css"
	rel="stylesheet">
<link
	href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/studio/funding/static/css/17.52f297e3.chunk.css">
<script type="text/javascript">
	$(function() {
		$('.check').on('click', function() {	
			if($('#check_1').is(':checked') 
					&& $('#check_3').is(':checked') 
					&& $('#check_4').is(':checked')){				
				$('#check_result').prop("checked", false);
				$('#check_result').attr('disabled', false);
			} else if(!$('#check_1').is(':checked') 
					|| !$('#check_2').is(':checked') 
					|| !$('#check_3').is(':checked') 
					|| !$('#check_4').is(':checked')){
				$('#check_result').attr('disabled', true);
			}
		})		
	})

	$(function() {
		$('#save').click(function(){
			 if(!$('#check_result').is(':checked')){
				 alert("약관에 동의해주세요");
				 
				 return false;
			 } else if($('#project_AS').val() == ""){
				 alert("A/S정책을 입력해주세요");
				 return false;
			 }
				$.ajax({
					type: "post",
					url: "projectPolicyUpdate",
					data: {
						project_idx:${param.project_idx},
						project_AS:$("#project_AS").val()
						},
					success: function() {
						location.href = "main?project_idx="+${param.project_idx};	
					}
				})
		})
		
		// 06-02 김동욱 승인 여부 확인 후 저장버튼 비활성화
		$.ajax({
			 url: 'projectUpdateCheck',
	          type: 'POST',
	          data: {project_idx: ${param.project_idx}},
	          dataType: "json",
	          success: function(response) {
	        	  
	        	  // project_AS 값이 널스트링이 아니면 project_AS에 값 출력 및 정책 체크
	        	  if(response.project_AS != ""){
		        	  $("#project_AS").val(response.project_AS)
		        	  
		        	  for(let i = 1; i <= 4; i++){
		        	 	 $("#check_"+i).prop("checked", true);
		        	  }
	        	 	  $("#check_result").prop("checked", true);
		        	  
	        	  }
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
</head>

<body class="ReactModal__Body--open" aria-hidden="true">
	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<div class="AppLayout_main__14bCi">
				<jsp:include page="../inc/create_project_side.jsp"></jsp:include>
				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
					<nav class="DetailNavbar_container__3SkEf">
						<jsp:include page="../inc/project_top.jsp"></jsp:include>
					</nav>
					<section class="Page_container__1PffN">
						<ol class="Breadcrumb_container__3YjD4">
							<li class="Breadcrumb_item__2r9Ym">프로젝트 관리</li>
							<li class="Breadcrumb_item__2r9Ym">정책</li>
						</ol>
						<div class="Page_title__1tce_" role="heading" aria-level="2">정책</div>
						
						<div class="Page_content__1d0Vb">
							<section class="Section_container__3md8M spacing-9"
								style="max-width: 630px;">
								<div class="Section_header__1qwS7">
									<h2 class="Section_title__ikPIm Section_isRequired__F8rij">서비스
										이용 동의</h2>
									<div class="Section_guide__2xeJO"></div>
								</div>
								<div class="Section_description__10Uwo">아래 내용을 반드시 확인해
									주세요.</div>
								<div class="Section_content__3OkLZ">
									<div class="MakerAgreementField_container__fANOB">
										<div class="MakerAgreementField_agreement__2RpZ_ spacing-6 check">
											<label
												class="Checkbox_checkbox__27KzI Checkbox_sm__3f7_0 Checkbox_labeled__uRUNZ"><input
												type="checkbox" class="Checkbox_input__304VX"
												id="check_1"><span
												class="Checkbox_icon__3gYsg" aria-hidden="true"><svg
														viewBox="0 0 16 2" focusable="false" role="presentation"
														class="withIcon_icon__1Oal1 Checkbox_removeIcon__3mPDx"
														aria-hidden="true">
														<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg> <svg
														viewBox="0 0 48 48" focusable="false" role="presentation"
														class="withIcon_icon__1Oal1 Checkbox_checkIcon__165W2"
														aria-hidden="true">
														<path
															d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
												class="Checkbox_content__3WSlM"><span>회사에
														제출하거나 프로젝트 페이지에 공지한 내용 등이 모두 사실임을 보증하며, 이에 반하는 사실이 발견된 경우
														모든 책임을 부담하겠습니다(제10조).</span></span></label><label
												class="Checkbox_checkbox__27KzI Checkbox_sm__3f7_0 Checkbox_labeled__uRUNZ"><input
												type="checkbox" class="Checkbox_input__304VX"
												id="check_2"><span
												class="Checkbox_icon__3gYsg" aria-hidden="true"><svg
														viewBox="0 0 16 2" focusable="false" role="presentation"
														class="withIcon_icon__1Oal1 Checkbox_removeIcon__3mPDx"
														aria-hidden="true">
														<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg> <svg
														viewBox="0 0 48 48" focusable="false" role="presentation"
														class="withIcon_icon__1Oal1 Checkbox_checkIcon__165W2"
														aria-hidden="true">
														<path
															d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
												class="Checkbox_content__3WSlM"><span>동의한 약관 및
														정책에 반하는 행위를 하는 경우 회사에 의해 프로젝트가 취소될 수 있고(제26조, 제35조), 이용
														계약이 해제 또는 해지될 수 있음(제31조, 제40조)을 확인했습니다.</span></span></label><label
												class="Checkbox_checkbox__27KzI Checkbox_sm__3f7_0 Checkbox_labeled__uRUNZ"><input
												type="checkbox" class="Checkbox_input__304VX"
												id="check_3"><span
												class="Checkbox_icon__3gYsg" aria-hidden="true"
												><svg
														viewBox="0 0 16 2" focusable="false" role="presentation"
														class="withIcon_icon__1Oal1 Checkbox_removeIcon__3mPDx"
														aria-hidden="true">
														<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg> <svg
														viewBox="0 0 48 48" focusable="false" role="presentation"
														class="withIcon_icon__1Oal1 Checkbox_checkIcon__165W2"
														aria-hidden="true">
														<path
															d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
												class="Checkbox_content__3WSlM"><span>서포터 보호가
														필요하다 인정되는 경우 리워드 배송 전 결제 취소가 이뤄질 수 있고(제28조), 환불 사유에 해당하는
														경우 개별 또는 일괄로 환불이 이뤄질 수 있음(제30조, 제39조)을 확인했습니다.</span></span></label><label
												class="Checkbox_checkbox__27KzI Checkbox_sm__3f7_0 Checkbox_labeled__uRUNZ"><input
												type="checkbox" class="Checkbox_input__304VX"
												id="check_4"><span
												class="Checkbox_icon__3gYsg" aria-hidden="true"><svg
														viewBox="0 0 16 2" focusable="false" role="presentation"
														class="withIcon_icon__1Oal1 Checkbox_removeIcon__3mPDx"
														aria-hidden="true">
														<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg> <svg
														viewBox="0 0 48 48" focusable="false" role="presentation"
														class="withIcon_icon__1Oal1 Checkbox_checkIcon__165W2"
														aria-hidden="true">
														<path
															d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
												class="Checkbox_content__3WSlM"><span>귀책 사유로
														인해 회사 또는 제3자에게 손해를 발생하게 한 경우에는 손해를 배상할 책임이 있고(제19조), 프로젝트를
														공개한 후 취소하거나 취소되면 손해 배상과는 별도로 위약벌이 발생할 수 있음(제32조, 제41조)을
														확인했습니다.</span></span></label>
										</div>
										<main
											class="TermsContent_terms__LvQxR terms MakerAgreementField_terms__cBa04 spacing-6">
											<article>
												<h1>메이커 이용약관</h1>
												<p>아이펀드(주)의 메이커 이용약관을 규정합니다.</p>
												<div class="update">
													<h5>업데이트 노트</h5>
													<ul>
														<li>본 이용약관은 2023년 2월 28일부터 시행됩니다.</li>
														<li>개정 2023.02.21</li>
														<li>개정 2023.01.13 <a
															href="/web/wterms/maker_service/20230113"
															class="previous-terms" target="_blank">이전 약관 보기 <i
																class="icon-chevron-right" aria-hidden="true"></i></a></li>
													</ul>
													<br> <a href="/web/wterms/maker_service/20221103"
														class="previous-terms" style="text-decoration: underline;"
														target="_blank">2023년 이전 약관보기</a>
												</div>
												<ol class="table">
													<li><a href="#제1장-공통">제1장 공통</a>
														<div style="margin: 8px 0 12px 16px;">
															<ol>
																<li style="list-style: none;"><a href="#제1조-목적">제1조
																		(목적)</a></li>
																<li style="list-style: none;"><a href="#제2조-정의">제2조
																		(정의)</a></li>
																<li style="list-style: none;"><a href="#제3조-약관의-효력">제3조
																		(약관의 효력)</a></li>
																<li style="list-style: none;"><a
																	href="#제4조-약관의-게시-및-개정">제4조 (약관의 게시 및 개정)</a></li>
																<li style="list-style: none;"><a
																	href="#제5조-이용계약의-성립">제5조 (이용계약의 성립)</a></li>
																<li style="list-style: none;"><a
																	href="#제6조-대리행위-및-보증의-부인">제6조 (대리행위 및 보증의 부인)</a></li>
																<li style="list-style: none;"><a href="#제7조-수수료">제7조
																		(수수료)</a></li>
																<li style="list-style: none;"><a
																	href="#제8조-메이커의-권리-의무">제8조 (메이커의 권리 및 의무)</a></li>
																<li style="list-style: none;"><a
																	href="#제9조-회사의-권리-의무-등">제9조 (회사의 권리 및 의무 등)</a></li>
																<li style="list-style: none;"><a
																	href="#제10조-메이커의-확인-및-보증사항">제10조 (메이커의 확인 및 보증사항)</a></li>
																<li style="list-style: none;"><a
																	href="#제11조-프로젝트-승인-신청">제11조 (프로젝트 승인 신청)</a></li>
																<li style="list-style: none;"><a href="#제12조-할인-쿠폰">제12조
																		(할인 쿠폰)</a></li>
																<li style="list-style: none;"><a
																	href="#제13조-메이커의-금지행위">제13조 (메이커의 금지행위)</a></li>
																<li style="list-style: none;"><a
																	href="#제14조-취득한-개인정보의-보호">제14조 (취득한 개인정보의 보호)</a></li>
																<li style="list-style: none;"><a
																	href="#제15조-프로젝트-페이지-게시물의-소유">제15조 (프로젝트 페이지 게시물의
																		소유)</a></li>
																<li style="list-style: none;"><a
																	href="#제16조-비밀유지-등">제16조 (비밀유지 등)</a></li>
																<li style="list-style: none;"><a href="#제17조-통지">제17조
																		(통지)</a></li>
																<li style="list-style: none;"><a href="#제18조-양도금지">제18조
																		(양도금지)</a></li>
																<li style="list-style: none;"><a href="#제19조-손해배상">제19조
																		(손해배상)</a></li>
																<li style="list-style: none;"><a
																	href="#제20조-메이커-평가-시스템">제20조 (메이커 평가 시스템)</a></li>
																<li style="list-style: none;"><a
																	href="#제21조-서비스의-일시중지-및-중단">제21조 (서비스의 일시중지 및 중단)</a></li>
																<li style="list-style: none;"><a
																	href="#제22조-회사의-면책">제22조 (회사의 면책)</a></li>
																<li style="list-style: none;"><a href="#제23조-준거법-등">제23조
																		(준거법 등)</a></li>
																<li style="list-style: none;"><a href="#제24조-기타">제24조
																		(기타)</a></li>
															</ol>
														</div></li>
													<li><a href="#제2장-펀딩-서비스">제2장 펀딩 서비스</a>
														<div style="margin: 8px 0 12px 16px;">
															<ol>
																<li style="list-style: none;"><a
																	href="#제25조-펀딩-용어의-정의">제25조 (펀딩 용어의 정의)</a></li>
																<li style="list-style: none;"><a
																	href="#제26조-회사에-의한-펀딩-프로젝트의-취소">제26조 (회사에 의한 펀딩
																		프로젝트의 취소)</a></li>
																<li style="list-style: none;"><a
																	href="#제27조-펀딩-프로젝트-종료-시-결제">제27조 (펀딩 프로젝트 종료 시 결제)</a></li>
																<li style="list-style: none;"><a href="#제28조-결제-취소">제28조
																		(결제 취소)</a></li>
																<li style="list-style: none;"><a
																	href="#제29조-펀딩금-정산">제29조 (펀딩금 정산)</a></li>
																<li style="list-style: none;"><a
																	href="#제30조-펀딩금의-환불">제30조 (펀딩금의 환불)</a></li>
																<li style="list-style: none;"><a
																	href="#제31조-펀딩-서비스-이용계약의-해제-해지">제31조 (펀딩 서비스 이용계약의
																		해제/해지)</a></li>
																<li style="list-style: none;"><a
																	href="#제32조-펀딩-위약벌">제32조 (펀딩 위약벌)</a></li>
																<li style="list-style: none;"><a
																	href="#제33조-후원-펀딩에-관한-특례">제33조 (후원 펀딩에 관한 특례)</a></li>
															</ol>
														</div></li>
													<li><a href="#제3장-프리오더-서비스">제3장 프리오더 서비스</a>
														<div style="margin: 8px 0 12px 16px;">
															<ol>
																<li style="list-style: none;"><a
																	href="#제34조-프리오더-용어의-정의">제34조 (프리오더 용어의 정의)</a></li>
																<li style="list-style: none;"><a
																	href="#제35조-회사에-의한-프리오더-프로젝트의-취소">제35조 (회사에 의한 프리오더
																		프로젝트의 취소)</a></li>
																<li style="list-style: none;"><a
																	href="#제36조-프리오더-프로젝트-종료-시-결제">제36조 (프리오더 프로젝트 종료 시
																		결제)</a></li>
																<li style="list-style: none;"><a
																	href="#제37조-결제금-정산">제37조 (결제금 정산)</a></li>
																<li style="list-style: none;"><a
																	href="#제38조-프리오더-결제대금예치-서비스">제38조 (프리오더 결제대금예치 서비스)</a></li>
																<li style="list-style: none;"><a
																	href="#제39조-결제금의-환불">제39조 (결제금의 환불)</a></li>
																<li style="list-style: none;"><a
																	href="#제40조-프리오더-서비스-이용계약의-해제-해지">제40조 (프리오더 서비스
																		이용계약의 해제/해지)</a></li>
																<li style="list-style: none;"><a
																	href="#제41조-프리오더-위약벌">제41조 (프리오더 위약벌)</a></li>
															</ol>
														</div></li>
													<li><a href="#제4장-스토어-서비스">제4장 스토어 서비스</a>
														<div style="margin: 8px 0 12px 16px;">
															<ol>
																<li style="list-style: none;"><a
																	href="#제42조-스토어-용어의-정의">제42조 (스토어 용어의 정의)</a></li>
																<li style="list-style: none;"><a
																	href="#제43조-상품의-배송">제43조 (상품의 배송)</a></li>
																<li style="list-style: none;"><a
																	href="#제44조-구매취소-반품-교환-환불">제44조 (구매취소, 반품, 교환, 환불)</a></li>
																<li style="list-style: none;"><a
																	href="#제45조-판매대금-정산">제45조 (판매대금 정산)</a></li>
																<li style="list-style: none;"><a
																	href="#제46조-판매대금-정산의-보류">제46조 (판매대금 정산의 보류)</a></li>
																<li style="list-style: none;"><a
																	href="#제47조-스토어-결제대금예치-서비스">제47조 (스토어 결제대금예치 서비스)</a></li>
																<li style="list-style: none;"><a
																	href="#제48조-스토어-서비스-이용계약의-해제-해지">제48조 (스토어 서비스
																		이용계약의 해제/해지)</a></li>
															</ol>
														</div></li>
													<li><a href="#부칙">부칙</a></li>
												</ol>
												<hr>

												<h2 id="제1장-공통">제1장 (공통)</h2>
												<h3 id="제1조-목적" style="font-size: 18px; font-weight: bold;">제1조
													(목적)</h3>
												<p>
													본 메이커 이용약관(이하 "본 약관")은 아이펀드 주식회사(이하 "회사")가 운영 및 제공하는 인터넷 사이트
													<a href="https://www.wadiz.kr" target="_blank">https://www.wadiz.kr</a>
													(이하 "사이트")에 크라우드펀딩, 프리오더 및 스토어 프로젝트를 개설하여 펀딩금을 모집하거나 통신판매의
													방식으로 상품을 판매하고자 하는 자(이하 "메이커")가 프로젝트의 개설 및 중개 등의 서비스를 이용함에
													있어 회사와 메이커 간의 권리, 의무 및 제반절차를 확정하고 이를 이행함으로써 상호 발전을 도모하는 것을
													그 목적으로 합니다.
												</p>
												<h3 id="제2조-정의" style="font-size: 18px; font-weight: bold;">제2조
													(정의)</h3>
												<p>본 약관에서 사용하는 용어의 정의는 다음 각 호와 같습니다. 본 조에서 정의되지 않은 용어는
													개별 장의 정의를 따르며, 개별 장에서 정의되지 않는 용어는 일반 거래 관행에 따라 정의된 의미를
													가집니다.</p>
												<ol>
													<li style="list-style-type: lower-alpha;">"서비스"라 함은
														회원가입약관에 따른 회원이 전자적 시스템에 접속하여 사이트홈페이지에서 온라인상의 거래 등을 할 수 있게
														본 약관에 따라 회사가 제공하는 크라우드펀딩, 통신판매중개 서비스 및 통신판매 서비스를 말합니다.</li>
													<li style="list-style-type: lower-alpha;">"기본 서비스"라 함은
														크라우드펀딩, 통신판매중개 및 통신판매 플랫폼의 개발 및 운영을 통한 크라우드펀딩, 프리오더, 스토어
														서비스를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">"선택 서비스"라 함은
														오픈예정 서비스, 공간 아이펀드 쇼룸 이용, 광고 서비스 등 메이커의 선택 및 관련 정책에 따라 제공되는
														서비스를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">"부가 혜택"이라 함은
														아이펀드 스쿨, 데이터 플러스(beta), 새소식 알림 등 회사가 프로젝트의 성공적 진행을 돕기 위하여
														기본 서비스에 부가하여 관련 정책에 따라 제공하는 혜택을 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">"사이트"란 회사가
														재화 또는 용역 등(일정한 시설을 이용하거나 용역을 제공받을 수 있는 권리를 포함)을 회원에게 제공하기
														위하여 컴퓨터 등 정보통신설비를 이용하여 거래 등을 할 수 있도록 설정한 가상의
														영업장(https://www.wadiz.kr 등 회사가 운영하는 웹페이지 및 모바일 웹, 앱 등을 모두
														포함)을 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“회원”이란
														회원가입약관에 따라 회사와 서비스이용계약을 체결하고 홈페이지를 통하여 서비스를 이용할 수 있는 자격을
														부여받은 자를 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“메이커”란 회사의
														회원가입약관에 따른 회원 중에서 회사와 별도로 체결하는 메이커 이용약관에 따라 사이트에 프로젝트를
														개설하고 서포터들 대상으로 펀딩을 받거나 리워드 또는 상품을 판매하려는 자를 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“서포터”란 회사의
														회원가입약관에 따른 회원 중에서 회사에서 제공하는 서비스를 통해 메이커가 개설한 프로젝트에 펀딩을 하거나
														리워드 또는 상품을 구매하려는 자를 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“펀딩”이란 메이커가
														아이펀드 사이트를 통해 재화 또는 용역 개발, 생산, 기부 등 특정한 자금조달의 목적을 밝히고 그
														목적달성을 위해 필요한 자금을 제공한 서포터들에게 약속한 재화 또는 용역을 제공하는 서비스를 말합니다.
														단, 기부를 목적으로 자금을 조달 하는 경우에는 서포터들에게 재화 또는 용역 등의 제공을 약속하지 않을
														수 있습니다.</li>
													<li style="list-style-type: lower-alpha;">“프리오더”란 메이커가
														아이펀드 사이트를 통해 전자상거래 등에서의 소비자보호에 관한 법률(이하 “전자상거래법”)이 적용되는
														예약판매의 형식으로 서포터들에게 약속한 재화 또는 용역 등을 제공하는 서비스를 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“스토어”란 메이커가
														성공 종료한 펀딩 또는 프리오더 프로젝트의 리워드를 전자상거래법이 적용되는 상시판매의 형식으로
														서포터들에게 상품을 판매하는 서비스를 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“성공”이란 펀딩 또는
														프리오더 프로젝트 진행 기간의 종료시점을 기준으로 서포터의 펀딩 또는 예약구매 신청에 따라 모집된
														결제예약금 합계액이 메이커가 설정한 목표 금액 이상인 경우를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“실패”란 펀딩 또는
														프리오더 프로젝트 진행 기간의 종료시점을 기준으로 서포터의 펀딩 또는 예약구매 신청에 따라 모집된
														결제예약금 합계액이 메이커가 설정한 목표 금액 미만인 경우를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“리워드”란 메이커가
														펀딩 또는 프리오더 프로젝트를 통해 서포터로부터 자금을 모집 하거나 예약판매 하면서 서포터에게 제공하기로
														약속한 유형의 제품 또는 무형의 서비스를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“상품”이란 메이커가
														회사의 서비스를 통하여 고객에게 제공 및 판매하는 각종 재화 및 용역 등을 총칭하여 말하며, 회사에서
														정한 일정 자격 요건을 충족하여야 합니다.</li>
													<li style="list-style-type: lower-alpha;">“프로젝트”란 메이커가
														서포터에게 펀딩을 받거나 리워드 또는 상품을 판매하기 위해 서포터에게 약속한 내용을 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“프로젝트 페이지”라
														함은 메이커가 서포터에게 리워드 제공을 약속하고 펀딩금을 모집하거나, 리워드 또는 상품을 판매하기 위하여
														회사의 승인을 받아 회사의 사이트에 개설한 페이지를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“오픈예정 페이지”라
														함은 오픈예정 서비스에 따라 펀딩 및 프리오더의 프로젝트 기간 시작 전 선공개된 페이지를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">"새소식"이라 함은
														펀딩 및 프리오더 프로젝트 페이지 내 새소식 게시판에 메이커가 프로젝트 진행상황에 관하여 작성하는
														게시물을 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“수수료”란 메이커가
														서비스를 이용하면서 회사로부터 받는 각종 서비스에 대한 대가로 회사에 지급하여야 하는 금액을 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">"요금제"란 회사가
														제공하는 기본 서비스 및 메이커의 선택에 따른 선택 서비스를 조합한 서비스 구성에 따라 수수료가
														차등적으로 부과되는 서비스 패키지를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">"메이커 스튜디오"라
														함은 메이커의 프로젝트 운영 및 리워드 또는 상품의 배송 편의를 위해 개설된 관리자 페이지를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">"취소의 처리"란
														회사가 오픈예정 페이지 단계에서는 해당 오픈예졍 페이지를 비공개 처리하는 행위를, 프로젝트 시작 후 결제
														전에는 프로젝트 종료를 표시하고 결제예약 신청을 취소하는 행위를, 결제 후에는 카드결제 등을 취소하는
														행위를 각 의미합니다.</li>
												</ol>
												<h3 id="제3조-약관의-효력"
													style="font-size: 18px; font-weight: bold;">제3조 (약관의
													효력)</h3>
												<ol>
													<li>회사는 본 약관에 규정되지 않은 세부적인 내용에 대해 회사가 수시로 개정할 수 있는 개별
														정책 등(이하 "정책"이라 함)을 제정하여 운영할 수 있으며, 해당 내용을 사이트를 통하여 게시합니다.
														정책은 본 약관과 더불어 서비스 이용계약(이하 "이용계약"이라 함)의 일부를 구성합니다. 메이커가 본
														약관 및 정책에 동의하는 것은 양 당사자의 인감을 날인하여 이용계약을 체결하는 것과 동일한 효력을
														갖습니다.</li>
													<li>회사는 서비스 중 특정 서비스에 관한 약관(이하 "개별약관"이라 함)을 별도로 제정할 수
														있으며, 메이커가 개별약관에 동의한 경우 개별약관은 이용계약의 일부를 구성하고 개별약관에 본 약관과
														상충하는 내용이 있을 경우 개별 약관이 우선적으로 적용됩니다.</li>
													<li>본 약관에 의해 메이커로 가입하고자 하는 자는 메이커 이용약관의 내용을 숙지하고 서포터와
														회사간의 권리∙의무관계에 대해 동의함을 확인합니다.</li>
												</ol>
												<h3 id="제4조-약관의-게시-및-개정"
													style="font-size: 18px; font-weight: bold;">제4조 (약관의
													게시 및 개정)</h3>
												<ol>
													<li>회사는 본 약관의 내용을 메이커가 쉽게 알 수 있도록 사이트 또는 메이커 스튜디오를 통하여
														게시합니다.</li>
													<li>회사는 필요한 경우 관련 법령을 위배하지 않는 범위 내에서 본 약관 및 정책을 개정할 수
														있으며, 이 경우 개정내용과 적용일자를 명시하여 사이트를 통해 그 적용일자 7일 전부터 적용일자 전일까지
														공지합니다. 다만, 변경 내용이 메이커에게 불리한 변경의 경우에는 개정약관 및 정책의 적용일자 30일
														전부터 적용일자까지 공지합니다.</li>
													<li>관계법령의 제·개정에 따른 제도변경 등으로 약관 또는 운영정책이 변경되는 경우 등 본문에
														따라 안내하기가 어려운 급박하고 부득이한 사정이 있는 경우에는 변경내용을 제2항과 같은 방법으로 개정
														약관 또는 운영정책의 시행일 전에 게시합니다.</li>
													<li>메이커가 개정약관 및 정책에 동의하지 않는 경우에는 개정 약관 및 정책의 적용일 이전에
														거부 의사를 표시하고 본 약관 및 정책에 의한 이용계약을 해지할 수 있습니다.</li>
													<li>회사가 본 조 제2항에 따라 개정약관 및 정책을 공지 또는 통지하면서 메이커에게 적용일
														전까지 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도
														메이커가 명시적으로 거부의사를 표명하지 아니한 경우 개정약관 및 정책에 동의한 것으로 봅니다.</li>
													<li>회사는 본 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소, 전화번호,
														전자우편주소, 사업자등록번호 등을 회원이 쉽게 확인할 수 있도록 사이트의 초기 서비스 화면에 게시하며
														회원이 약관을 확인하고 다운로드(화면출력 포함)받을 수 있도록 합니다. 다만, 약관의 구체적 내용은
														회원이 사이트 내 링크로 연결된 화면을 통하여 볼 수 있도록 할 수 있습니다.</li>
												</ol>
												<h3 id="제5조-이용계약의-성립"
													style="font-size: 18px; font-weight: bold;">제5조 (이용계약의
													성립)</h3>
												<ol>
													<li>이용계약은 서비스를 이용하고자 하는 메이커가 본 약관 및 정책에 동의하고 회사가 정한
														절차에 따라 프로젝트 승인을 신청하며, 이에 대해 회사가 심사를 거쳐 승낙함으로써 성립합니다. 회사는
														이용승낙의 의사표시를 해당 서비스 화면에 게시하거나 이메일 또는 기타 방법으로 할 수 있습니다.</li>
													<li>메이커는 회사가 별도로 요청하는 증빙서류가 있는 경우 신속히 제출하여야 하며, 회사는 해당
														서류를 징구하는 시점까지 가입신청에 대한 승낙을 보류하거나 거부할 수 있습니다.</li>
													<li>메이커 등록은 본 약관 및 정책에서 정한 자격 및 요건을 갖춘 사업자(자연인 또는 법인
														불문)가 할 수 있으며, 사업자인 경우에는 대표자가 만 19세 미만인 경우에도 메이커 가입이 가능합니다.
														단, 펀딩 프로젝트를 진행하고자 하는 메이커는 본 약관 및 정책에서 정한 자격 및 요건을 갖춘 개인인
														경우에도 메이커 회원 가입이 가능하며, 만 19세 미만인 개인의 경우에는 후원 펀딩만 진행 가능합니다.</li>
													<li>회사는 제1항에 따라 프로젝트 승인을 신청한 자 중에서 아래 각호에 해당되는 경우에는
														승인을 거부할 수 있으며, 등록이 된 이후에도 아래 각호의 사유가 확인된 경우에는 승낙을 취소할 수
														있습니다.
														<ol>
															<li>프로젝트 승인을 신청한 자가 본 약관 및 회사의 다른 서비스와 관련하여 이전에 회원
																자격을 상실한 적이 있는 경우</li>
															<li>타인의 정보 등(예)주민등록번호, 사업자번호, I-PIN 등)를 이용한 경우</li>
															<li>허위의 정보를 기재하거나, 회사가 제시하는 내용을 기재하지 않은 경우</li>
															<li>회사로부터 자격 정지 조치 등을 받은 메이커가 그 조치기간 중에 이용계약을 임의
																해지하고 재이용신청을 하는 경우</li>
															<li>기술적 지장 등으로 이용신청에 대한 승낙이 어려운 경우</li>
															<li>프로젝트 승인을 신청한 자의 귀책사유로 인하여 승인이 불가능하거나 필수 서류 또는
																회사가 요청하는 서류를 제출하지 않는 등 기타 제반 사항을 위반하여 신청하는 경우</li>
															<li>기타 본 약관에 위배되거나 위법 또는 부당한 프로젝트 승인 신청 등 회사가 합리적인
																판단에 의하여 필요하다고 인정하는 경우</li>
														</ol>
													</li>
													<li>메이커는 등록신청시 기입한 정보와 관련하여 주소지 또는 정산을 위한 통장계좌 등의 변경이
														있을 경우 즉시 회사에 이를 통지하여야 하며, 회사는 통지의 지연으로 인하여 발생한 손해에 대하여 책임을
														지지 않습니다.</li>
												</ol>
												<h3 id="제6조-대리행위-및-보증의-부인"
													style="font-size: 18px; font-weight: bold;">제6조 (대리행위
													및 보증의 부인)</h3>
												<ol>
													<li>회사는 서포터와 메이커간의 크라우드펀딩 또는 통신판매중개 시스템의 운영 및 관리 책임만을
														부담하며, 이와 관련하여 회사의 어떠한 행위도 메이커 또는 서포터를 대리하는 행위로 간주되지 않습니다.</li>
													<li>회사는 서비스를 통하여 이루어지는 중개 서비스와 관련하여 청약 의사의 존부 및 진정성,
														리워드의 품질, 완전성, 안전성, 적법성 및 타인의 권리에 대한 비침해성, 메이커가 입력하는 정보 및 그
														정보를 통하여 링크된 URL에 게재된 자료의 진실성 등 일체에 대하여 보증하지 아니하며, 이와 관련한
														일체의 위험과 책임은 관련 당사자가 부담해야 합니다.</li>
												</ol>
												<h3 id="제7조-수수료" style="font-size: 18px; font-weight: bold;">제7조
													(수수료)</h3>
												<ol>
													<li>회사는 서비스의 성격, 서비스 제공 비용, 서비스 제공 방법, 시장 조건, 사업 유형 등을
														고려하여 요금제별 수수료를 결정합니다.</li>
													<li>회사는 서비스의 내용, 수수료율 등 구체적인 사항을 개별 정책을 통해 정할 수 있으며,
														그에 따른 수수료를 메이커 스튜디오 또는 별도 약정서 등을 통해 메이커에게 통지하여야 합니다.</li>
													<li>회사는 필요한 경우 요금제의 내용 및 수수료를 변경할 수 있으며, 변경사항은 제17조
														제2항 단서에 따라 개별 통지합니다.</li>
													<li>회사는 서비스의 제공에 있어 광고 집행 비용(광고대행사 이용수수료 포함) 등 별도 비용이
														발생하는 경우 수수료 외 추가 비용 상당의 금원을 청구할 수 있으며, 구체적인 사항은 정산내역서 등을
														통해 고지합니다.</li>
													<li>회사는 프로모션이나 내부 기준 등에 따라 수수료 인하를 적용할 수 있습니다. 단, 당초
														수수료 인하 적용을 위하여 메이커가 보증하였던 내용과 상이한 사실이 확인되는 경우, 회사는 메이커가
														기존에 산정된 수수료를 본 약관에 따른 정산금에서 공제하거나 메이커에게 별도로 청구할 수 있습니다.</li>
													<li>메이커의 귀책사유 없이 결제가 취소되거나 환불이 일어나는 등 메이커에게 수수료를 부과하는
														것이 적절하지 않다고 판단되는 경우 회사는 해당 금원에 대한 수수료를 면제할 수 있습니다.</li>
												</ol>
												<h3 id="제8조-메이커의-권리-의무"
													style="font-size: 18px; font-weight: bold;">제8조 (메이커의
													권리 및 의무)</h3>
												<ol>
													<li>메이커는 프로젝트를 진행함에 있어 다음 각 호의 사항을 준수해야 합니다.
														<ol>
															<li>메이커는 본 약관에 따라 전달받은 금원을 메이커가 프로젝트에서 약속한 프로젝트의 수행
																및 완료, 약속한 리워드의 제공 및 발송을 위한 경비 충당을 위해 우선 사용하여야 합니다.</li>
															<li>메이커는 리워드 또는 상품이 배송 중 파손 또는 훼손되지 않도록 견고하게 포장하여
																서포터에게 제공하여야 합니다.</li>
															<li>메이커는 리워드의 발송일 또는 제공완료일에 다음 각 목의 정보를 회사가 정한 절차와
																방법에 따라 제공하여야 합니다. 단, 이를 위반하여 회사 또는 제3자에게 발생하는 손해에 대해서는
																메이커가 배상할 책임을 부담합니다.
																<ol>
																	<li style="list-style-type: lower-roman">리워드를
																		정상적으로 제공 완료한 내역과 자료</li>
																	<li style="list-style-type: lower-roman">택배사 및
																		송장번호</li>
																</ol>
															</li>
															<li>메이커는 본 정책 및 관련 법률에 의거하여 환불에 필요한 조치를 하여야 하며 이로
																인하여 발생하는 비용은 교환 또는 환불의 책임이 있는 당사자가 부담하여야 합니다.</li>
															<li>메이커는자신의 책임 및 비용으로 제공된 리워드 또는 상품에 대한 보증 및 A/S
																서비스를 제공해야 합니다.</li>
															<li>메이커는 서포터의 문의에 성실, 정확히 답변해야 하며, 메이커의 부정확하거나 불성실한
																답변으로 인하여 발생하는 모든 책임과 의무는 메이커 본인에게 있습니다.</li>
															<li>메이커는 회사가 서비스 운영에 필요한 정보 및 증빙자료의 제공을 요청할 경우 이에
																성실히 응하여야 합니다.</li>
														</ol>
													</li>
													<li>본 조 제1항의 사항 외에도, 펀딩 또는 프리오더 프로젝트를 진행하는 메이커는 다음 각
														호의 사항을 준수하여야 합니다.
														<ol>
															<li>다음 각 목의 사유가 발생한 때에는 그 사유가 발생한 날로부터 2영업일 이내에
																새소식(회사가 요구하는 경우에는 개별 문자메시지 발송 포함)을 통해 공시하여야 하며, 회원들의 문의에
																최대한 신속하고 성실하게 답변하여야 합니다. 다만, 본 호 제ⅳ목에 관한 사유는 게시 전 회사와
																협의하기로 합니다.
																<ol>
																	<li style="list-style-type: lower-roman">프로젝트 페이지에
																		공시한 내용(리워드의 내용, 리워드 제공 예상일의 변경 등을 포함하며 이에 한정되지 아니함)의
																		변동 사항과 이유, 변경된 내용(변경된 리워드 제공예정일 등)에 관한 사항</li>
																	<li style="list-style-type: lower-roman">회사의 승인을
																		받아 프로젝트 페이지에 공시한 내용을 수정한 경우 그 수정 사항</li>
																	<li style="list-style-type: lower-roman">프로젝트가 성공한
																		경우, 프로젝트 기간이 정상적으로 종료된 사실과 리워드의 발송 일정, 리워드 제공 완료 등에 대한
																		상세한 내용</li>
																	<li style="list-style-type: lower-roman">제27조 또는
																		제35조에 따른 프로젝트 취소 또는 제31조 및 제40조에 따른 이용계약의 해제/해지 사유가
																		발생한 경우 그 내용과 사유</li>
																</ol>
															</li>
															<li>프로젝트 종료 이후 제30조 또는 제39조에서 정한 사유가 발생한 경우, 메이커는 즉시
																회사에게 그 사정을 통지하고 지체 없이 발생한 사유의 내용과 환불에 대한 새소식(회사가 요구하는 경우
																개별 문자메시지 발송 포함)을 게시하여야 합니다.</li>
														</ol>
													</li>
													<li>본 조 제1항의 사항 외에도, 스토어 프로젝트를 진행하는 메이커는 다음 각 호의 사항을
														준수하여야 합니다.
														<ol>
															<li>판매하는 상품, 메이커 등의 정보를 정확하게 입력하여야 하며, 정보 등록 후 변경
																사항이 있는 경우 회사에 그 사실을 알려 즉시 변경 내용을 반영하고 관련 정보를 수정/보완하여야
																합니다.</li>
															<li>판매하는 상품에 대한 정보를 입력할 때, 전자상거래 등에서의 상품 등 정보 제공에 관한
																고시(이하 “고시”)에서 지정된 상품 등의 관한 정보를 정확하게 입력하고, 상품 등록 후에 고시가
																개정된 경우 이에 따라 관련 정보는 즉시 수정 및 보완되어야 합니다.</li>
															<li>메이커가 판매하는 상품에 특별한 거래조건이나 추가 비용이 부과되거나 청구되는 경우에는
																서포터가 구매 결정을 내리기 전에 쉽게 인식할 수 있도록 명시적으로 해당 내용을 설명하여야 합니다.</li>
															<li>재고 수량을 포함하여 수시로 변경될 수 있는 사항에 대한 데이터를 적절하게 관리해야
																합니다.</li>
															<li>회사는 효율적인 리워드 또는 상품 검색과 안정적인 운영 등을 위해 메이커 당 리워드
																또는 상품 수를 제한할 수 있습니다. 이러한 경우 해당 제한의 특정 기간, 세부사항, 방법 등은
																메이커가 인지할 수 있도록 회사의 사이트 및 메이커 스튜디오 등을 통해 사전에 게시되어야 합니다.</li>
															<li>메이커가 메이커 스튜디오를 사용하지 않고 제3자 프로그램을 사용하여 상품을 등록하는
																경우, 회사는 이로부터 발생하는 기술적 및 법적 문제에 대해 어떠한 보증도 제공하지 않고 어떠한
																책임도 지지 않으며, 메이커는 그로부터 발생하는 모든 손해에 대하여 온전히 책임 져야 합니다.</li>
															<li>메이커는 서비스를 통한 모든 거래에 대금의 수령, 보관 및 송금업무로 이루어지는
																결제대금예치 서비스를 적용하여야 합니다.</li>
														</ol>
													</li>
												</ol>
												<h3 id="제9조-회사의-권리-의무-등"
													style="font-size: 18px; font-weight: bold;">제9조 (회사의
													권리 및 의무 등)</h3>
												<ol>
													<li>회사는 본 약관에 따라 지속적이고 안정적인 서비스를 제공하는데 최우선의 노력을 다합니다.</li>
													<li>프로젝트 진행기간 중 회사는 프로젝트의 원활한 진행을 위해 메이커에게 프로젝트 진척에 따른
														새로운 소식 및 댓글 등을 게시하도록 권유 및 요구할 수 있으며, 필요한 경우 직접 새소식을 게시할 수
														있습니다.</li>
													<li>회사는 메이커의 서비스 이용과 관련한 자료를 수사기관의 수사목적의 요청 및 기타 공공기관이
														관련 법률에 따른 절차를 통해 요청하는 경우 메이커의 동의 없이 해당 기관에 제공할 수 있습니다.</li>
													<li>식품의약품안전처 등의 기관으로부터 협조요청 등이 접수되는 경우 회사는 메이커를 상대로
														프로젝트 정보의 수정을 요청할 수 있고, 만약 메이커가 위 요청을 기한 내 이행하지 않을 경우 중요한
														프로젝트 정보를 임의로 수정/삭제할 수 있으며, 회사는 위 변경 또는 임의수정한 내용을 새소식을 통해
														공지할 수 있습니다.</li>
													<li>회사는 메이커가 서비스를 이용하여 발생하는 프로젝트이력 등의 정보를 통계자료 작성 및
														메이커가 이용하는 회사의 다른 서비스에의 적용 등의 목적으로 활용할 수 있습니다.</li>
													<li>본 약관 및 환불 정책에 따른 환불과 관련하여 메이커가 환불, 배송 확인, 교환 제공 등을
														하지 않는 경우, 회사는 해당 주문에 대하여 합리적인 범위 내에서 적절한 조치를 취할 수 있습니다. 이와
														관련하여 메이커의 귀책사유가 있는 경우, 회사는 서포터에게 환불한 금원 및 적절한 조치를 취하는 과정에서
														발생한 비용을 메이커에게 청구할 수 있습니다.</li>
													<li>회사는 자체적으로 내부 홍보 채널(문자, 앱푸시, 배너, 뉴스레터 등)과 기획전 페이지
														등의 다양한 마케팅 활동을 진행할 수 있으며, AI 추천 프로세스 ∙ 매출액 추이 ∙ 메이커의 리워드
														설계 방식 등 회사의 기준에 따라 프로모션 적용 여부, 노출 빈도 등은 다르게 적용될 수 있습니다.</li>
												</ol>
												<h3 id="제10조-메이커의-확인-및-보증사항"
													style="font-size: 18px; font-weight: bold;">제10조 (메이커의
													확인 및 보증사항)</h3>
												<ol>
													<li>메이커는 본 약관에 따라 서비스를 이용함에 있어 다음 각 호의 사항이 모두 사실과 정확히
														일치함을 확인 및 보증하며, 이에 반하는 사실이 발견된 경우 본 약관 및 관계법령에 따른 모든 법적책임을
														부담하여야 합니다.
														<ol>
															<li>메이커는 적법하게 설립되어 유효하게 존속하는 대한민국의 법인 또는 대한민국에 주소 또는
																거소를 두고 있는 개인이며, 적법한 사업자등록 및 통신판매 신고를 마친 사업자라는 사실</li>
															<li>메이커가 회사에게 제출하거나 프로젝트에 공시하는 내용 모두가 사실과 일치하는 정보이며
																항상 최신 업데이트된 정보라는 사실.</li>
															<li>프로젝트에 공시한 리워드 또는 상품 정보와 실제 제공되는 리워드 또는 상품이 서로
																동일하다는 사실.</li>
															<li>리워드 또는 상품의 품질 확인을 위해 필요한 인증(KC 인증, 의료기기 품목허가,
																주류유통을 위한 인허가) 획득 또는 유지하고 있다는 사실 또는 획득 예정이라면 특정 기한 내 획득
																예정이라는 사실.</li>
															<li>법령(식품위생법, 부정경쟁방지법, 자본시장법 등을 포함하나 이에 한정되지 아니함) 위반
																없이 제조, 생산, 공급 또는 수입된 리워드 또는 상품이라는 사실.</li>
															<li>프로젝트에 사용한 이미지, 동영상, 폰트 및 리워드 등을 포함한 공시정보 일체가
																제3자의 권리(상표권, 특허권, 실용신안권, 저작권, 디자인권 등)를 침해하지 않은 사실.</li>
															<li>메이커가 리워드 또는 상품의 적법한 소유자이자 지식재산권, 혹은 지식재산권의 사용권을
																가진 자이며, 이를 판매 및 유통하기 위하여 취득하여야 하는 관계법령상 인허가, 판매 및 유통권 기타
																라이센스에 관한 계약상 권한 등 모든 적법한 자격을 갖춘 자라는 사실.</li>
															<li>메이커가 회사에 제출한 내용 및 프로젝트 페이지에 공시한 모든 정보는 허위, 과장 또는
																기만적인 내용이 전혀 없는 진실한 것이며, 관계법령(식품위생법, 화장품법, 표시광고의 공정화에 관한
																법률 등을 포함하나 이에 한정되지 아니함) 및 관련 광고심의 규정을 모두 준수하였다는 사실.</li>
														</ol>
													</li>
													<li>회사는 제1항의 확인 및 보증사항을 검증하기 위하여 증빙자료(사업자등록증, 법인등기부등본,
														통신판매업신고증, 견본, 품질확인서, 수입신고필증, 시험성적서, 상표등록원부, 라이센스 계약서 등을
														포함하며 이에 한정되지 아니함)의 제출을 요구할 수 있고, 다음 각 호의 정보 제출을 요청하거나
														공인인증기관 또는 신용정보회사 등을 통하여 확인할 수 있습니다.
														<ol>
															<li>사업자인 메이커 : 사업자의 성명(법인인 경우 대표자의 성명), 상호, 주소,
																전화번호, 이메일주소, 신원정보, 신용도, 사업자등록번호, 통신판매업자로 신고한 경우 그 신고번호와
																기관</li>
															<li>사업자가 아닌 메이커 : 성명, 생년월일, 주소, 전화번호, 이메일주소, 신원정보,
																신용도</li>
														</ol>
													</li>
													<li>제2항의 요청에 대하여 메이커는 지체 없이 회사에게 요청 받은 자료를 제공하여야 하고,
														정당한 사유 없이 거절한 경우 회사는 프로젝트 취소, 이용계약의 해제/해지 또는 프로젝트 페이지 게시물의
														수정 등의 조치를 취할 수 있으며, 이때 메이커는 회사에게 손해배상 등 어떠한 책임도 물을 수 없습니다.</li>
													<li>메이커는 본 조에 따라 회사에게 제공한 정보가 변경(개인사업자가 법인사업자으로 변경되거나
														그 반대의 경우를 포함하며 이에 한정되지 아니함)되거나 본 약관에 따른 의무 내용에 중대한 변경을 초래할
														수 있는 사유가 발생한 경우 지체 없이 이메일 또는 서면으로 회사에게 통보하여야 합니다.</li>
												</ol>
												<h3 id="제11조-프로젝트-승인-신청"
													style="font-size: 18px; font-weight: bold;">제11조 (프로젝트
													승인 신청)</h3>
												<ol>
													<li>메이커는 회사가 정한 양식과 절차에 따라 심사 정책 및 각 운영정책에서 요구하는 정보를
														모두 입력한 프로젝트 신청 페이지를 생성 및 등록함으로써 회사에게 프로젝트 시작에 관한 승인을 신청할 수
														있고, 필요한 경우 회사는 메이커에게 프로젝트 관련 자료(이미지, 동영상, 음성 파일 등)의 보완을
														요청할 수 있습니다. 단, 메이커는 본 조에 따라 제공한 정보가 사실과 다르거나 제공 이후 그 내용이
														변경된 경우 즉시 회사에게 이메일 또는 서면으로 통지하여야 합니다.</li>
													<li>회사는 프로젝트 승인 기준에 대하여 정책을 통해 공지할 수 있으며, 사이트 또는 메이커
														스튜디오 등을 통해 위 내용을 통지할 수 있습니다.</li>
													<li>메이커가 승인 요청한 프로젝트가 본 약관 및 정책에 따라 프로젝트 승인 기준에 부합하는
														경우 회사는 메이커의 프로젝트 시작을 승인하고 본 약관 또는 관계 법령에 근거하여 프로젝트에 게시된
														정보를 서포터에게 공개할 수 있습니다.</li>
													<li>회사는 본 조에 따른 승인 이후에도, 메이커가 본 약관 및 정책을 위반한 사실이 발견되는
														경우 본 약관 및 정책에서 정한 바에 따라 해당 내용을 임의로 수정 또는 삭제할 수 있으며, 메이커는
														이로 인해 발생한 손해배상을 회사에게 물을 수 없습니다.</li>
													<li>회사는 프로젝트가 공개된 이후 리워드 품질 관리를 위해 필요하다고 인정되는 경우 메이커에게
														프로젝트 사후 심사를 요청할 수 있으며, 요청 시 메이커는 회사가 정한 절차와 방법에 협조하여야 합니다.</li>
													<li>메이커는 본 조에 따라 승인 받은 내용에 관하여 각 운영정책 또는 가이드에서 허용하는 일부
														정보를 제외하고는 회사의 사전 동의가 있는 경우에 한정하여 수정할 수 있습니다.</li>
												</ol>
												<h3 id="제12조-할인-쿠폰"
													style="font-size: 18px; font-weight: bold;">제12조 (할인
													쿠폰)</h3>
												<ol>
													<li>회사는 본 약관 및 정책 등에 따라 할인 쿠폰을 발행할 수 있습니다.</li>
													<li>할인쿠폰은 발행대상, 발행경로, 사용대상 등에 따라 구분될 수 있으며, 할인쿠폰의
														세부구분, 할인금액(할인율), 사용방법, 사용기한 및 제한에 대한 사항은 할인쿠폰 또는 서비스 화면에
														표시됩니다. 할인쿠폰의 종류 및 내용과 발급 여부는 회사의 서비스 정책에 따라 변경될 수 있습니다.</li>
													<li>회사는 서포터가 사용한 할인 쿠폰을 산정하여 해당 거래의 정산 시 메이커에게 지급하며
														메이커는 메이커 스튜디오를 통하여 정산 비용을 확인할 수 있습니다.</li>
													<li>메이커가 회사에서 인정하지 않는 부당, 부정 또는 불법적인 방법으로 할인 쿠폰이 사용됨을
														알면서도 거래를 승인하는 경우, 회사는 해당 거래에 대한 할인 쿠폰 정산금액을 메이커에게 지급하지 않을
														수 있습니다.</li>
													<li>본 조에 할인 쿠폰의 발행 또는 사용 및 정산에 관련한 구체적인 사항은 개별 약관 및
														회사의 정책에 따릅니다.</li>
												</ol>
												<h3 id="제13조-메이커의-금지행위"
													style="font-size: 18px; font-weight: bold;">제13조 (메이커의
													금지행위)</h3>
												<p>메이커는 다음 각 호에 해당하는 행위를 하여서는 아니 되며 이를 위반한 경우 회사는 서비스
													이용정지 및 이용계약의 해제/해지 등의 조치를 취할 수 있습니다. 서비스 이용정지의 구체적인 기준 등에
													대해서는 관련 정책에서 정합니다.</p>
												<ol>
													<li style="list-style-type: lower-alpha;">본 약관에서 규정된
														메이커의 의무사항을 위반하는 행위</li>
													<li style="list-style-type: lower-alpha;">지식재산권 및 초상권,
														인격권을 침해하는 행위 등을 포함하여 회사의 정책을 위반하는 행위</li>
													<li style="list-style-type: lower-alpha;">범죄행위와 결부되는
														모든 행위 및 기타 관계법령에 위반되는 행위</li>
													<li style="list-style-type: lower-alpha;">회사 서비스를
														방해하거나 장애를 발생시킬 수 있는 모든 행위</li>
													<li style="list-style-type: lower-alpha;">본 약관에 따른
														권리∙의무를 회사의 사전 동의 없이 타인에게 양도, 증여하거나 이를 담보제공 하는 행위</li>
													<li style="list-style-type: lower-alpha;">본 약관 또는 회사의
														다른 서비스 약관 및 정책 등을 위반하여 회사 또는 다른 메이커나 서포터에게 손해가 발생시키거나 발생시킬
														우려가 있는 행위</li>
												</ol>
												<h3 id="제14조-취득한-개인정보의-보호"
													style="font-size: 18px; font-weight: bold;">제14조 (취득한
													개인정보의 보호)</h3>
												<ol>
													<li>메이커는 리워드 또는 상품을 제공하기 위하여 필요한 최소한의 범위 내에서 관계법령에 따라
														서포터 정보를 회사로부터 제공받을 수 있습니다.</li>
													<li>메이커는 리워드 또는 상품의 제공과 상관없이 서포터의 정보를 타 제품 판매를 위해
														이용하거나 홍보하는 목적으로 사용하여서는 아니 되며 이를 위반하여 개인정보유출 등 사고가 발생할 경우
														그에 대한 모든 책임을 부담합니다.</li>
													<li>메이커는 리워드 또는 상품 제공 및 기타 서포터에 대한 리워드 또는 상품 사용안내 목적
														등이 달성된 이후 지체없이 폐기하여야 합니다.</li>
													<li>메이커는 서포터의 정보를 전문 택배업체 등 제3자에게 제공하는 경우, 제공되는 정보를
														리워드 또는 상품 제공을 위한 목적 달성에 필요한 최소한의 범위로 제한하고 정보 보호 및 보안을 위하여
														필요한 조치를 취하여야 합니다.</li>
												</ol>
												<h3 id="제15조-프로젝트-페이지-게시물의-소유"
													style="font-size: 18px; font-weight: bold;">제15조 (프로젝트
													페이지 게시물의 소유)</h3>
												<ol>
													<li>프로젝트 페이지의 게시물은 회사에 귀속되며, 본 약관 및 정책에서 정한 프로젝트의 관리
														범위에 저촉되지 않는 한 회사는 위 게시물을 비공개 처리하거나 삭제할 수 없습니다.</li>
													<li>메이커는 자신이 진행하는 프로젝트의 홍보 등을 위해 프로젝트 페이지 게시물을 활용할 수
														있으나, 프로젝트 종료 후 회사가 운영하는 사이트가 아닌 곳에서 프로젝트 페이지 게시물의 내용 및
														콘텐츠를 영리 목적으로 사용하기 위해서는 사전에 회사의 동의를 득해야 합니다. 단, 위 프로젝트 페이지
														게시물의 내용 및 콘텐츠가 중대하게 변경되어 기존 프로젝트 페이지 게시물의 내용 및 콘텐츠와 식별이
														어려운 경우에는 그러하지 아니합니다.</li>
													<li>회사는 오픈예정 페이지 또는 프로젝트 페이지가 서포터에게 공개된 이후부터 프로젝트 페이지의
														게시물을 이용할 수 있으며(회사가 제휴를 맺고 있는 다른 회사가 운영하는 외부 사이트에 무상으로 메타
														데이터를 제공하는 것을 포함), 영리목적 유무와 무관하게 회사가 운영하는 사이트 내에서는 자유롭게 이용할
														수 있습니다.</li>
													<li>회사는 오픈예정 페이지 또는 프로젝트 페이지가 서포터에게 공개된 이후에도 프로젝트 페이지의
														게시물을 다른 사이트에서 영리 목적으로 이용하고자 하는 경우 사전에 전화, 팩스, 이메일 등의 방법을
														통해 메이커의 동의를 얻어야 합니다.</li>
													<li>오픈예정 페이지 또는 프로젝트 페이지가 서포터에게 공개된 이후 프로젝트 페이지의 게시물에
														저작권 침해 등의 법적 문제가 생길 경우 메이커는 이메일로 회사에 게시물의 수정을 요청할 수 있고 회사는
														이와 같은 사유가 있는 경우에 한정하여 수정 요청을 승인하여 조치를 취할 수 있습니다.</li>
													<li>본 조 제1항에도 불구하고, 모집기간이 종료되거나 취소된 프로젝트 페이지의 게시물에
														개인정보보호법 혹은 저작권법 등 관련법령의 위반이 발생하거나 그와 관련된 분쟁이 발생할 것으로 예상되는
														등의 중대한 사유(법에서 정하는 사유를 포함하며 이에 한정되지 아니함)가 발생하는 경우에 한하여 메이커는
														이메일로 회사에 게시물의 삭제를 요청할 수 있고, 이와 같은 사유가 있는 경우 회사가 정한 절차와 양식에
														따른 별도 서면을 통해 프로젝트 내용을 삭제할 수 있습니다.</li>
												</ol>
												<h3 id="제16조-비밀유지-등"
													style="font-size: 18px; font-weight: bold;">제16조 (비밀유지
													등)</h3>
												<ol>
													<li>회사와 메이커는 다음 각 호에서 정한 정보를 제외하고 본 약관을 체결하는 과정에서 인지
														또는 취득한 기술정보, 제품정보 또는 영업비밀(이하 “영업정보”라 함)를 비밀로 유지하여야 하며, 사전
														서면동의 없이 제3자에게 이를 누설 또는 공개해서는 안 되며, 본 약관의 목적 이외의 용도로 사용하여서는
														아니 됩니다.
														<ol>
															<li>본 약관 체결 이전에 이미 공지의 사실이 된 정보</li>
															<li>본 약관 체결 이후에 당사자의 귀책사유 없이 공지의 사실이 된 정보</li>
															<li>정부의 명령이나 법원의 결정 기타 당사자 일방이 통제할 수 없는 사유로 인하여 공개된
																정보</li>
														</ol>
													</li>
													<li>전항의 의무는 이용계약의 종료 후에도 존속합니다.</li>
													<li>제1항의 영업정보 중 양 당사자 간의 합의로 이용 목적 달성 후에 반환하거나 파기하기로 한
														정보가 있는 경우에는, 회사는 즉시 해당 정보를 반환 또는 파기하여야 합니다.</li>
													<li>메이커는 본 약관에 따른 거래 성립에 있어 유리한 조건을 설정하기 위하여 회사의 임직원에게
														어떠한 금품(금전, 선물, 향응, 접대 등)도 직접 또는 제3자를 통하여 제공하지 아니합니다.</li>
													<li>제4항에 관한 금품의 제공을 요청하는 회사의 임직원이 있는 경우 메이커는 지체 없이
														회사에게 신고하여야 합니다.</li>
												</ol>
												<h3 id="제17조-통지" style="font-size: 18px; font-weight: bold;">제17조
													(통지)</h3>
												<ol>
													<li>회사는 본 약관과 관련한 통지 시 메이커가 제공한 전자우편, (휴대)전화번호, 주소,
														메이커 스튜디오 초기 화면 등의 수단으로 할 수 있습니다.</li>
													<li>회사는 메이커 전체에 대한 통지의 경우 7일 이상 사이트에 게시함으로써 제1항의 통지에
														갈음할 수 있습니다. 다만, 메이커의 서비스 이용과 관련하여 중대한 영향을 미치는 사항에 대하여는 본 조
														제1항의 통지 수단에 따른 방법으로 통지합니다.</li>
													<li>메이커는 회사에 실제로 연락이 가능한 전자우편, (휴대)전화번호, 주소 등의 정보를
														제공하고 해당 정보들을 최신으로 유지하여야 하며, 회사의 통지를 확인하여야 합니다.</li>
													<li>메이커가 전항의 의무를 소홀히 하여 발생한 불이익에 대해서는 보호받지 못합니다.</li>
												</ol>
												<h3 id="제18조-양도금지"
													style="font-size: 18px; font-weight: bold;">제18조
													(양도금지)</h3>
												<ol>
													<li>메이커는 회사의 사전 서면 동의 없이 본 약관에 따른 일체의 권리와 의무를 제3자에게
														양도하거나 담보의 목적으로 제공할 수 없습니다.</li>
													<li>회사는 메이커가 본 조를 위반하는 경우 서비스 제공을 거부할 권한을 가지며, 기존 메이커에
														대하여 이용계약을 해제 또는 해지할 수 있습니다.</li>
												</ol>
												<h3 id="제19조-손해배상"
													style="font-size: 18px; font-weight: bold;">제19조
													(손해배상)</h3>
												<ol>
													<li>회사 또는 메이커의 명백한 귀책 사유로 본 약관을 위반하여 상대방 또는 다른 회원을 포함한
														제3자에게 손해를 발생하게 한 때에는 귀책 당사자는 이를 배상할 책임을 부담합니다.</li>
													<li>본 약관 및 정책에 따른 메이커의 의무와 관련하여 회사가 회사의 귀책 없이 제3자로부터
														손해배상청구 등 소송 또는 기타 방법으로 이의제기를 받는 경우, 회사는 위 사실을 메이커에게 통지할 수
														있고 메이커는 회사를 방어할 수 있는 모든 자료 및 정보를 제공함으로써 문제의 해결에 적극 협조함으로써
														면책시켜야 하며, 이로 인해 회사에 발생한 손해를 배상하여야 합니다.</li>
													<li>본 조에 따라 메이커가 손해배상 책임을 부담하는 경우, 회사는 손해배상금 상당의 금원을 본
														약관에 따른 정산금에서 공제하거나 메이커에게 별도로 청구할 수 있습니다.</li>
													<li>메이커가 리워드 또는 상품의 안전에 결함이 있는 경우 등 메이커의 귀책있는 사유로 인하여
														리워드를 회수(수리, 교환, 수거, 환불)하는 경우 그로 인한 모든 비용을 부담하여야 합니다.</li>
													<li>화재, 홍수, 전염병 등의 천재지변이나 사고 또는 정부기관의 조치 기타 사회통념상 부득이한
														경우에 당사자가 최선의 노력을 하였음에도 불구하고 본 약관상의 의무를 이행하지 못한 경우, 해당 당사자는
														해당 사유로 인한 손해배상 기타 책임을 부담하지 아니하나, 그러한 경우에도 당사자들은 본 약관의 목적
														달성을 위한 방안을 수립하기 위해 최대한 노력하여야 합니다.</li>
												</ol>
												<h3 id="제20조-메이커-평가-시스템"
													style="font-size: 18px; font-weight: bold;">제20조 (메이커
													평가 시스템)</h3>
												<ol>
													<li>회사는 메이커의 리워드 또는 상품 및 프로젝트 진행 이력을 평가하거나 회사 또는 서포터로
														하여금 평가하도록 하는 시스템을 운영할 수 있으며, 메이커와 서포터 간의 신뢰에 기반한 거래를 촉진하기
														위하여 평가 결과를 운영정책 또는 알고리즘에 반영할 수 있습니다.</li>
													<li>회사는 제1항의 시스템에 관한 평가 방법과 기준, 이익 및 불이익에 대한 사항을 별도
														정책에서 정할 수 있으며, 필요한 경우 이를 공개할 수 있습니다.</li>
												</ol>
												<h3 id="제21조-서비스의-일시중지-및-중단"
													style="font-size: 18px; font-weight: bold;">제21조 (서비스의
													일시중지 및 중단)</h3>
												<ol>
													<li>회사는 통제할 수 없는 기술적 장애, 기간통신사업자 등 제3자의 귀책사유 및 천재지변,
														국가비상사태 등의 사유로 인하여 서비스 제공이 불가능한 경우 서비스 제공을 일시 중단할 수 있습니다.</li>
													<li>회사는 본 조에 따라 서비스를 중단하는 경우 이러한 사실을 사이트, 메이커 스튜디오 또는
														전자우편 등의 방법으로 메이커에게 공지 또는 통지합니다. 단, 기술적 장애 사유 등의 경우에는 사후에
														통지할 수 있습니다.</li>
												</ol>
												<h3 id="제22조-회사의-면책"
													style="font-size: 18px; font-weight: bold;">제22조 (회사의
													면책)</h3>
												<ol>
													<li>회사는 사이트를 통하여 플랫폼을 제공하는 방식으로 온라인상의 계약을 중개하는 중개자이며
														메이커와 서포터 간에 체결되는 계약(프로젝트에 관한 일체의 계약)의 당사자가 아닙니다. 따라서 회사는
														아래 각 호의 사항을 포함하여 위 계약과 관련하여 발생하는 분쟁에 대한 책임을 지지 않습니다. 단, 중개
														과정에서 회사의 고의 또는 중대한 과실이 인정되는 경우는 그러지 아니합니다.
														<ol>
															<li>메이커가 프로젝트에 게재한 정보, 자료, 사실 등의 진실성, 정확성, 신뢰성 및 게시된
																자료의 활용으로 인하여 야기되는 일체의 결과</li>
															<li>메이커 간 또는 메이커와 서포터를 포함한 제3자간에 서비스를 매개로 발생한 분쟁</li>
															<li>메이커가 변경금지사항을 임의로 변경하거나, 변경한 내용을 공지하지 아니한 경우에는 해당
																프로젝트의 서포터와의 관계에서발생할 수 있는 법적 분쟁과 책임 및 불이익</li>
															<li>메이커가 본 약관에 따라 전달받은 금원을 프로젝트에서 약속한 프로젝트의 수행 및 완료,
																약속한 리워드 등의 제공 및 발송을 위한 경비 충당을 위해 우선 사용하여야 한다는 제한을 위반함에
																따라 발생하는 불이익 또는 법적 책임</li>
															<li>메이커가 고의 또는 과실로 약속한 내용의 일부 또는 전부를 이행하지 않거나, 다르게
																이행하는 경우 발생할 수 있는 모든 결과</li>
															<li>배송과정에서 리워드 등의 파손이 발생한 경우 및 메이커의 고의 또는 과실로 사실과 다른
																정보를 게재하거나 제공한 리워드의 제조물책임법상 결함으로 인하여 서포터 또는 제3자에게 발생한 생명,
																신체 또는 재산상 손해 등 일체의 결과</li>
														</ol>
													</li>
													<li>회사는 회사의 고의 또는 과실이 없는 한 다음과 같은 사항으로부터 발생하는 손해에 대하여
														책임을 지지 아니합니다.
														<ol>
															<li>회사가 본 약관 또는 그의 위임을 받은 하위 정책에서 정하는 방식으로 서비스의 제공을
																제한 또는 중지함에 따라 발생한 손해</li>
															<li>서비스에 대한 접속 및 이용과 관련하여 메이커의 고의 또는 과실로 인하여 메이커 또는
																제3자에게 발생한 손해</li>
															<li>메이커가 전자우편 등 개인정보를 부실하게 기재하거나, 본 약관에 따라 입력하여야 하는
																정보의 최신화의무를 다하지 아니하여 발생한 손해</li>
														</ol>
													</li>
												</ol>
												<h3 id="제23조-준거법-등"
													style="font-size: 18px; font-weight: bold;">제23조 (준거법
													등)</h3>
												<ol>
													<li>이용계약의 준거법은 대한민국 법률로 합니다.</li>
													<li>이용계약과 관련하여 회사와 메이커 간에 발생하는 모든 분쟁/소송은 민사소송법 상의
														관할법원에서 해결합니다.</li>
												</ol>
												<h3 id="제24조-기타" style="font-size: 18px; font-weight: bold;">제24조
													(기타)</h3>
												<ol>
													<li>본 약관의 어느 규정(문장, 문구 또는 그 일부를 포함)이 무효이거나 집행이 불가능하더라도
														다른 규정의 효력 또는 집행가능성에 영향을 미치지 않습니다.</li>
													<li>양 당사자는 본 약관상의 지위 또는 이에 근거한 일체의 권리의무를 상대방의 사전 동의 없이
														제3자에게 양도, 담보제공 등 기타 처분행위를 할 수 없습니다.</li>
												</ol>

												<h2 id="제2장-펀딩-서비스">제2장 펀딩 서비스</h2>
												<h3 id="제25조-펀딩-용어의-정의"
													style="font-size: 18px; font-weight: bold;">제25조 (펀딩
													용어의 정의)</h3>
												<p>본 장에서 사용하는 용어의 정의는 다음 각 호와 같습니다. 본 장에서 정의되지 않은 용어는 본
													약관의 다른 장 및 일반 거래 관행에 따라 정의된 의미를 가집니다.</p>
												<ol>
													<li style="list-style-type: lower-alpha;">“후원 펀딩”이란 개인
														메이커가 자아 실현 또는 사회적 가치 창출 등을 위해 불특정 다수로부터 후원을 받을 목적으로 개설할 수
														있는 펀딩 프로젝트를 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“기부 펀딩”이란
														기부금품의 모집 및 사용에 관한 법률(이하 “기부금품법”)에서 요구하는 기부금품의 모집등록을 완료하고,
														기획재정부로부터 지정된 세제적격단체(공익법인 및 공익단체)인 메이커가 불특정 다수로부터 기부를 받을
														목적으로 개설할 수 있는 펀딩 프로젝트를 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“펀딩기간”이란
														메이커가 게시한 프로젝트를 통해 서포터로부터 자금을 모을 수 있는 기간으로서 프로젝트를 오픈하여 펀딩금
														모집이 가능한 시점부터 프로젝트 종료일까지의 기간을 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“펀딩의 신청”이란
														서포터가 프로젝트의 펀딩기간 내에 회사가 정한 방법에 따라 펀딩의 의사표시를 하는 것을 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“펀딩의 취소”란
														서포터가 프로젝트의 펀딩기간 내에 펀딩의 의사표시를 철회하는 것을 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“펀딩 달성률”이란
														서포터가 목표한 금액을 기준으로 펀딩의 신청 접수가 완료된 결제예약금이 차지하는 비율을 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“결제예약금”이란
														서포터가 펀딩의 신청에 따라 결제를 예약한 금액을 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“결제 취소”란
														서포터가 프로젝트 종료 후 리워드의 발송 또는 제공 전까지 회사가 정한 특별한 사유가 있는 경우에 한하여
														카드결제 등의 결제 취소를 요청함으로써 펀딩의 의사표시를 철회하는 것을 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“펀딩금”이란 서포터의
														펀딩의 신청에 따라 프로젝트 종료 시점에 모집된 결제예약금 중 결제 기간(프로젝트 종료일의 익일로부터
														4영업일) 종료 시 결제가 되지 않거나 취소된 금액을 제외하고 최종 결제가 완료된 금원을 말합니다.</li>
													<li style="list-style-type: lower-alpha;">"리워드 제공"이라
														함은 메이커가 배송업체를 통하거나 직접 서포터에게 리워드를 전달하는 등 리워드를 교부하는 행위를 의미하는
														것으로, 리워드가 유형의 제품인 경우 서포터가 제품을 수령하는 시점 및 무형의 서비스인 경우 서비스가
														실제로 제공된 시점(ex.항공기 출발일, 여행출발일, 공연일, 강의 업로드일)에 리워드 제공이 완료된
														것으로 봅니다.</li>
													<li style="list-style-type: lower-alpha;">“프로젝트 취소”라
														함은 본 약관 및 정책에 따라 일정한 사유가 발생한 경우 프로젝트 시작시점(오픈예정 서비스가 포함되는
														요금제를 이용하는 경우에는 오픈예정 서비스의 개시 시점을 프로젝트 시작 시점으로 봅니다)으로 소급하여
														프로젝트를 무효화하는 것을 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“펀딩금 환불”이란 본
														약관에 따라 결제가 완료되거나 메이커가 정산받았던 펀딩금을 서포터에게 돌려주는 것을 의미하며, 펀딩금 중
														본 약관 및 환불 정책에서 정한 사유에 근거하여 카드결제 취소 등의 방법으로 서포터에게 환불되는 금원을
														펀딩 환불금이라고 합니다.</li>
												</ol>
												<h3 id="제26조-회사에-의한-펀딩-프로젝트의-취소"
													style="font-size: 18px; font-weight: bold;">제26조 (회사에
													의한 펀딩 프로젝트의 취소)</h3>
												<ol>
													<li>회사는 다음 각 호의 사유에 해당하는 경우 프로젝트 취소를 할 수 있으며, 프로젝트 취소
														처리일로부터 1영업일 전까지 메이커에게 취소 사유를 통보하여야 합니다. 다만, 긴급한 사정이 있는 경우
														회사는 통보 전 취소 처리를 할 수 있으며, 처리 후 지체 없이 메이커에게 취소 사유를 통보하여야
														합니다.
														<ol>
															<li>제10조에 의한 메이커의 확인 및 보증사항이 사실과 다른 경우</li>
															<li>본 약관에 따라 회사가 메이커에게 제출을 요구한 자료를 제출하지 않은 경우 또는
																증빙자료가 적법/유효하지 않은 경우</li>
															<li>프로젝트 페이지의 공시된 정보(리워드/펀딩금 사용처/방법/시기 등을 포함하며 이에
																한정되지 아니함)에 허위, 과장, 조작, 중요사실 기재 누락, 오기 등으로 인하여 중대한 오인의
																소지가 있는 경우</li>
															<li>리워드 발송일로부터 7일이 경과하기 전 타 크라우드펀딩 사이트에서 모금을 진행하거나
																회사가 제공하는 서비스 외의 유통채널을 통해 리워드와 동일한 제품을 판매 또는 구매 예약을 받는
																경우로서 다음 각 목의 유통이 아닌 경우
																<ol>
																	<li style="list-style-type: lower-roman">펀딩의 대가로
																		제공되는 리워드가 아니라 프로젝트 활성의 목적으로 리워드와 별개로 추가된 증정품의 유통</li>
																	<li style="list-style-type: lower-roman">제한된 기간 동안
																		진행되는 오프라인 행사에서 사전 예약 형태로 진행되는 유통으로 사전에 프로젝트 페이지를 통해서
																		미리 고지하고 서포터의 이익을 침해하지 않는다고 판단되는 경우</li>
																	<li style="list-style-type: lower-roman">개인 메이커가
																		기성품 또는 타 유통채널에서 판매되는 제품 또는 서비스를 리워드로 제공하는 후원 펀딩 또는 기부
																		펀딩 프로젝트를 진행하는 경우</li>
																</ol>
															</li>
															<li>복권, 상품권, 사이버머니 등 현금으로 환금성이 높거나 사행성이 있는 제품을 리워드로
																제공하는 경우</li>
															<li>관계 법령 또는 금융위원회 등 관계부처의 해석에 따라 증권으로 볼 수 있는 것을
																리워드로 제공하는 경우</li>
															<li>관계법령에 따라 온라인 판매유통이 금지된 품목(제품안전 미인증
																리워드/의약품/주류/담배/시력 보정용 안경 및 콘택트 렌즈(시력 보정용 선글라스 포함)/총포, 도검,
																화약류/마약/혈액증서/군복 및 군용장구/야생동물/음란물/동물을 포함하여 이에 한정되지 아니함)에
																해당하는 제품을 리워드로 제공하는 프로젝트</li>
															<li>성별/인종/종교/장애/사회신분/지역/직업을 차별하거나 이에 대한 편견을 조장하는
																정치적, 종교적, 성적 편향성 등을 띄는 소재를 포함하는 프로젝트</li>
															<li>타인의 명예를 손상시키거나 불이익을 주려는 목적 또는 범죄 행위, 국익 또는 공익을
																저해하려는 목적을 가지는 등 위법하거나 사회 질서 혹은 미풍양속을 저해하는 프로젝트</li>
															<li>의학 또는 과학적으로 검증되지 않은 미신숭배/건강비법/심령술 등 비과학적인 생활태도를
																정당화하는 프로젝트</li>
															<li>지식재산권 관계법령 및 사이트에 게재된 회사의 지식재산권 보호 정책 및 가이드라인에
																위배되는 제품을 리워드로 제공하는 프로젝트</li>
															<li>메이커와 회사가 프로젝트 취소에 관하여 상호 합의한 경우</li>
															<li>제11조 제5항에서 규정한 사후 심사 과정에서 다음 각 목 중 어느 하나에 해당하는
																경우가 발생하여 서포터에게 리워드 제공이 불가하거나 현저히 어려운 경우
																<ol>
																	<li style="list-style-type: lower-roman">프로젝트 오픈 후
																		사후 심사 시점 기준, 리워드 배송을 위한 준비 상태에 있어 중대한 문제가 발생되는 경우</li>
																	<li style="list-style-type: lower-roman">프로젝트 오픈 후
																		사후 심사 시점 기준, 서포터에게 알려야 하는 중대한 정보가 새소식으로 등록되지 않은 경우. 이
																		경우 서포터에게 알려야 하는 중대한 정보는 다음과 같습니다.
																		<ul>
																			<li>스토리에 명시된 리워드의 기(효)능 중 부수적인 스펙이 변경된 경우</li>
																			<li>예정된 배송일에 변경이 필요한 경우 (예. 배송일보다 빠른 배송) 단, 배송
																				정책 변경(예정)에 따라 예정된 배송일보다 지연되는 경우엔 개별 반환 조치</li>
																			<li>스토리에 명시된 리워드 제조 방법 및 과정이 변경된 경우</li>
																		</ul>
																	</li>
																	<li style="list-style-type: lower-roman">개인 메이커가
																		기성품 또는 타 유통채널에서 판매되는 제품 또는 서비스를 리워드로 제공하는 후원 펀딩 또는 기부
																		펀딩 프로젝트를 진행하는 경우</li>
																</ol>
															</li>
															<li>기타 정책 및 회사의 내부 심사기준을 충족하지 아니하는 경우</li>
														</ol>
													</li>
													<li>본 조 제1항에서 정한 프로젝트 취소 사유가 발생하였다는 서포터, 권리자 기타 이해관계자
														또는 제3자로부터의 신고나 회사의 조사 등에 의하여 프로젝트 취소 사유가 발생한 사실에 대한 합리적
														의심이 있는 경우, 회사는 다음 각 호의 방법에 따른 조치를 취할 수 있습니다.
														<ol>
															<li>프로젝트 취소 사유 발생 여부에 대하여 메이커에게 소명자료 제출 요청</li>
															<li>제3자의 전문가에게 감정의뢰</li>
															<li>수사기관 등에게 관련 정보 제공</li>
															<li>일시적인 프로젝트 중단 또는 비공개처리</li>
															<li>위반 여부에 대한 유권적 판단이 이루어질 때까지 메이커에게 상당한 담보를 제공하게
																하거나 조치 당시 결제예약금 상당액을 예치하도록 하는 조치</li>
															<li>회사에 접수된 프로젝트 신고내용 및 메이커의 소명내용에 대하여 사이트에 공지하는 조치</li>
															<li>기타 위 각 호 방법들에 준하는 회원 보호 목적의 조치</li>
														</ol>
													</li>
													<li>메이커가 제10조에서 정한 확인 및 보증한 사항을 위반한 사실이 판결, 결정 기타 유권해석
														등에 따라 확인되는 경우, 회사는 제2항의 조치에 더하여 다음 각 호의 조치를 취할 수 있습니다.
														<ol>
															<li>서포터에게 제공된 리워드의 회수 또는 폐기 요청</li>
															<li>리워드의 펀딩금을 서포터에게 보상하도록 하는 조치 (리워드의 전량 회수 여부와 무관하게
																서포터 전체에 대한 전체 펀딩금 환불 및 펀딩금 상당액의 포인트 추가 지급)</li>
														</ol>
													</li>
													<li>본 조에 의한 회사의 조치에 따른 비용 기타 직접/간접적인 손해는 모두 메이커가 부담하여야
														하며, 회사는 이러한 비용 또는 손해를 본 약관에 따른 정산금에서 공제하거나 별도로 메이커에게 청구할 수
														있습니다</li>
													<li>제1항, 제2항에 따른 내용은 부가서비스 중 오픈예정 페이지 서비스에 관하여 준용합니다.</li>
												</ol>
												<h3 id="제27조-펀딩-프로젝트-종료-시-결제"
													style="font-size: 18px; font-weight: bold;">제27조 (펀딩
													프로젝트 종료 시 결제)</h3>
												<ol>
													<li>프로젝트의 성공은 펀딩기간의 종료시점을 기준으로 결제예약금 합계액이 메이커가 설정한
														목표금액 이상인 경우를 의미하며, 펀딩금 합계액이 메이커가 설정한 목표금액에 미치지 아니함은 성공 여부에
														영향을 미치지 아니합니다.</li>
													<li>회사는 결제예약금의 총액이 메이커가 설정한 목표금액 이상인 프로젝트에 한정하여 펀딩기간
														종료일로부터 5영업일 이내에 총 4회에 걸쳐 결제를 실행하며, 회사가 정한 절차에 따라 결제
														내역(결제예약금액과 결제성공 및 실패 금액의 총액, 프로젝트 종료 시 목표금액 대비 최종 달성률 포함)을
														메이커에게 제공합니다.</li>
													<li>메이커는 서포터의 개인 사정으로 인한 결제 실패를 방지하기 위해 최종 결제일 이전에
														새소식을 통하여 서포터에게 정상적으로 결제가 이루어지도록 요청할 수 있습니다.</li>
													<li>회사는 결제진행이 완료된 후 5영업일 이내에 메이커에게 회사가 정한 양식과 절차에 따라
														정산 내역서를 제공합니다.</li>
													<li>메이커는 관계법령에 따라 서포터에게 펀딩금에 대해 세금계산서를 발행하여야 하고, 회사로부터
														정산 받은 금액에 대하여 사업자의 구분에 따라 법인세법, 소득세법, 부가가치세법상 과세대상에 해당하는
														경우 해당 금액에 대하여 세금을 신고 및 납부하여야 하며, 세금 납부에 대한 모든 책임을 집니다.</li>
												</ol>
												<h3 id="제28조-결제-취소"
													style="font-size: 18px; font-weight: bold;">제28조 (결제
													취소)</h3>
												<ol>
													<li>서포터가 다음 각 호에서 정한 사유에 근거하여 프로젝트 종료 후 리워드의 발송 또는 제공
														전까지 회사에 결제 취소를 요청하는 경우, 회사는 직접 결제 취소를 위한 조치를 취할 수 있습니다. 단,
														후원 펀딩 또는 기부 펀딩의 경우 아래 제c호의 적용이 배제됩니다.
														<ol>
															<li>동일한 리워드를 중복적으로 결제한 경우 및 동일 프로젝트의 여러 리워드 구성을
																중복적으로 결제한 경우</li>
															<li>펀딩에 참여한 리워드가 타인의 지식재산권을 침해한 것으로 의심되는 합리적인 사유가 있는
																경우</li>
															<li>펀딩에 참여한 리워드가 발송되기 전 국내외 타 크라우드펀딩 플랫폼 또는 타 유통채널을
																통해 펀딩 또는 판매된 것으로 의심되는 합리적인 사유가 있는 경우</li>
															<li>펀딩에 참여한 프로젝트 스토리 내에 허위 사실이 포함된 것으로 의심되는 합리적인 사유가
																있는 경우</li>
															<li>리워드의 배송이 지연될 것이 예정되어 서포터가 적시에 리워드를 수령할 수 없게 되는
																등, 기타 서포터 보호를 위해 그 필요성이 현저히 인정되는 경우</li>
														</ol>
													</li>
													<li>회사는 제1항에 따른 결제 취소된 금액에 대해 메이커에게 수수료를 부과하지 않습니다. 단,
														바로 정산금 지급 이후 결제 취소에 따라 변동되는 정산금은 최종 정산금에 반영하여 지급할 수 있습니다.</li>
												</ol>
												<h3 id="제29조-펀딩금-정산"
													style="font-size: 18px; font-weight: bold;">제29조 (펀딩금
													정산)</h3>
												<ol>
													<li>메이커는 프로젝트가 성공한 경우에 한정하여 모집된 결제예약금 중 결제가 완료된 금액, 즉
														펀딩금에 대하여 본 조에서 정한 절차에 따라 정산된 금원을 지급받습니다. 단, 메이커가 법에서 정하는
														채권의 소멸시효가 도과할 때까지 회사가 정산을 위해 요청하는 정보를 제공하지 않는 등 본 조에 명시된
														절차에 따라 회사에 정산금의 지급을 요청하지 않는 경우, 회사는 메이커에게 정산금을 지급할 의무를
														부담하지 않습니다.</li>
													<li>프로젝트가 성공한 경우 메이커는 결제가 완료된 펀딩금에 대하여 이용한 요금제에 따른
														수수료를 지급하여야 하며, 회사는 위 수수료를 펀딩금에서 차감하는 방식으로 정산하거나 별도로 지급받을 수
														있습니다. 단, 프로젝트 성공 이후 메이커가 회사에게 지급하여야 할 손해배상, 위약벌 등 일체 비용(이하
														“비용”) 또는 기타 상계 가능 금원(메이커와 회사 간 약정에 따라 지급의무를 부담하는 일체의 금원을
														의미한다)은 본 조에 따른 정산과정에서 차감될 수 있습니다.</li>
													<li>총 펀딩금이 2,000만원 이상인 프로젝트에 대하여, NICE평가정보 등 공개적으로
														제공하는 신용조회 서비스 내용을 기준으로 메이커 신용등급이 ‘위험’ 또는 ‘회수의문’ 등에 해당하거나
														단기, 장기 대출금에 대한 상환 연체, 공과금 연체, 당좌거래정지, 임금체불 및 펀딩금을 상회하는
														소송가액 상당의 소가 제기된 경우 등에 준하는 신용위험이 확인되는 경우에는 정산비율이 조정될 수
														있습니다.</li>
													<li>메이커는 다음 각 호 중 어느 하나에 해당하지 아니하는 경우에 회사에 정산금의 지급을
														요청할 수 있으며, 회사는 메이커에게 정산절차를 진행합니다. 단, 회사는 다음 각 호 중 어느 하나에
														해당하는 경우 그 사유가 해소되거나 해결되었다고 판단될 때까지 정산절차의 진행을 보류할 수 있습니다.
														<ol>
															<li>메이커가 프로젝트 종료에 대한 새소식을 작성하지 않은 경우</li>
															<li>메이커가 회사가 요청하는 정산에 필요한 서류(지급받을 계좌정보 등을 포함하며 이에
																한정되지 아니함) 또는 정보를 적시에 적정하게 제출하지 않거나 변경사실을 통지하지 않은 경우</li>
															<li>제26조의 프로젝트 취소 사유가 발생하거나 프로젝트 취소 사유에 관한 신고나 민원이
																접수된 경우</li>
															<li>제30조의 펀딩금 환불 사유가 발생한 경우</li>
															<li>제31조의 이용계약의 해제/해지 사유가 발생한 경우</li>
															<li>메이커로부터 수수료 내역 및 정산내역에 대한 이의가 접수된 경우</li>
															<li>PG사에 의하여 회사에의 정산이 보류되는 경우</li>
															<li>메이커의 채권자의 신청에 의한 정산금의 가압류, 압류 및 추심명령 등 법원의 결정이
																있는 경우</li>
														</ol>
													</li>
													<li>회사는 PG사로부터 정산이 완료된 이후, 제4항 각호의 요건 중 어느 하나에 해당하지 않는
														경우에 한하여 다음 각 호의 기준과 방법에 따라 정산된 금원을 메이커가 지정한 계좌로 지급합니다. 단,
														프로젝트 시작 전 회사가 정한 절차와 양식에 따른 서면합의로 달리 정할 수 있습니다.
														<ol>
															<li>펀딩금 합계액이 1천만 원 미만인 경우
																<ol>
																	<li style="list-style-type: lower-roman">회사가 정산
																		내역서를 발송한 날로부터 2영업일 이내에 메이커의 이의 신청이 없을 시, 회사는 이의 신청 기간이
																		종료된 날로부터 5영업일 이내에 회사의 지급일에 펀딩금에서 메이커가 이용한 요금제에 따른 수수료
																		및 비용 등을 공제한 금원의 80%를 바로 정산금으로서 메이커에게 지급합니다. 나머지 정산금은
																		결제 취소 및 펀딩금 환불에 대비한 금원(보증금)으로 회사가 보관합니다.</li>
																	<li style="list-style-type: lower-roman">이후 메이커가
																		서포터에게 리워드를 정상적으로 제공하고 그 사실을 새소식으로 게시하면, 회사는 리워드 제공과
																		제30조에 따른 펀딩금 환불 절차가 완료된 사실이 확인된 날로부터 5영업일 이내에 메이커에게
																		회사가 정한 양식과 절차에 따른 최종 정산 내역서를 제공합니다.</li>
																	<li style="list-style-type: lower-roman">회사가 최종 정산
																		내역서를 발송한 날로부터 2영업일 이내에 메이커의 이의 신청이 없을 시, 회사는 이의 신청 기간이
																		종료된 날로부터 5영업일 이내에 회사의 지급일에 나머지 정산금에서 펀딩 환불금 및 비용 등을
																		공제한 금원(이하 “최종 정산금” )을 지급합니다. 회사는 관계법령에 따라 세금계산서를
																		발행합니다.</li>
																</ol>
															</li>
														</ol>
													</li>
													<li>펀딩금 합계액이 1천만 원 이상인 경우
														<ol>
															<li>회사가 정산 내역서를 발송한 날로부터 2영업일 이내에 메이커의 이의 신청이 없을 시,
																회사는 이의 신청 기간이 종료된 날로부터 5영업일 이내에 회사의 지급일에 펀딩금에서 메이커가 이용한
																요금제에 따른 수수료 및 비용 등을 공제한 금원의 60%를 바로정산금으로서 메이커에게 지급합니다.
																나머지 정산금은 결제 취소 및 펀딩금 환불에 대비한 금원(보증금)으로 회사가 보관합니다.</li>
															<li>이후 메이커가 서포터에게 리워드를 정상적으로 제공하고 그 사실을 새소식으로 게시하면,
																회사는 리워드 제공과 제30조에 따른 펀딩금 환불 절차가 완료된 사실이 확인된 날로부터 5영업일
																이내에 메이커에게 회사가 정한 양식과 절차에 따른 최종 정산 내역서를 제공합니다.</li>
															<li>회사가 최종 정산 내역서를 발송한 날로부터 2영업일 이내에 메이커의 이의신청이 없을
																시, 회사는 이의 신청 기간이 종료된 날로부터 5영업일 이내에 회사의 지급일에 나머지 정산금에서 최종
																정산금을 지급합니다. 회사는 관계법령에 따라 세금계산서를 발행합니다.</li>
														</ol>
													</li>
													<li>회사는 메이커 스튜디오에 기재된 메이커 명의의 계좌에 한정하여 본 조 정산절차에 따른
														금원을 지급합니다. 다만, 예외적으로 회사가 정한 기준에 따라 특별한 사유가 인정되는 경우에는 별도의
														변경 약정서를 작성한 후 메이커 명의의 다른 은행계좌로 지급할 수 있습니다.</li>
												</ol>
												<h3 id="제30조-펀딩금의-환불"
													style="font-size: 18px; font-weight: bold;">제30조 (펀딩금의
													환불)</h3>
												<ol>
													<li>메이커는 서포터가 다음 각 호에서 정한 사유로 펀딩금의 일부 또는 전부에 대하여 회사가 본
														약관 및 정책에서 정한 방식과 절차에 따라 환불 신청을 하는 경우, 펀딩금 환불 신청이 접수된 날로부터
														14일 이내에 펀딩금 환불을 승인할 것인지 여부를 회사가 정한 방법에 따라 회사에 고지하여야 합니다.
														메이커가 펀딩금 환불 신청을 승인한 경우 메이커는 회사에 카드결제 취소 등을 요청하여 서포터에게 펀딩금이
														환불될 수 있도록 하여야 합니다.
														<ol>
															<li>리워드의 유통 및 제작에 법적으로 문제가 있는 경우</li>
															<li>리워드가 프로젝트 페이지에 표시∙광고된 내용과 현저하게 다른 경우</li>
															<li>메이커가 수거 접수 지연 등 고지한 교환∙AS 등의 절차를 정당한 사유 없이 지연하는
																경우</li>
															<li>회사의 <a href="/web/wterms/funding_refund"
																target="_blank">환불 정책</a>상 펀딩금 개별 반환 사유에 해당하는 경우
															</li>
														</ol>
													</li>
													<li>본 조 제1항에도 불구하고 메이커는 다음 각 호에 해당하는 경우 서포터의 펀딩금 환불
														신청을 승인하지 아니할 수 있습니다.
														<ol>
															<li>서포터가 리워드를 제공받은 날로부터 14일이 지난 후 본 조 제1항에서 정하는
																사유(d호 중 리워드 미배송 또는 미제공의 경우는 제외)로 환불 신청을 한 경우</li>
															<li>메이커가 프로젝트 페이지를 통해 사전에 고지한 펀딩금 환불 불가 사유에 해당하는 경우</li>
															<li>서포터의 귀책 사유로 리워드의 일부 혹은 전체가 분실/파손/고장/오염/훼손된 경우</li>
															<li>모니터 해상도의 차이로 인해 색상이나 이미지가 실제와 다른 경우</li>
															<li>정기구독을 포함하여 2회 이상 제공되는 리워드의 경우 1회분이라도 제공예정일 내에 배송
																및 제공이 되었음에도 불구하고 배송 또는 제공지연을 이유로 환불 신청을 한 경우</li>
															<li>제공예정일 내에 리워드가 발송 또는 제공되지 않아 제공이 지연된 리워드라 하더라도,
																배송 또는 제공지연을 사유로 펀딩금 환불을 신청하기 전에 이미 리워드가 발송된 경우(단 리워드 자체의
																특성상 최초로 지정되었던 제공예정일에 제공되어야만 그 목적을 달성할 수 있는 것으로 합리적으로 판단될
																수 있는 경우는 제외)</li>
														</ol>
													</li>
													<li>회사는 다음 각 호에서 정한 사유가 발생한 경우 직접 펀딩금 환불 신청을 승인하고 카드결제
														취소 등의 방법을 통하여 서포터에게 펀딩금을 환불할 수 있습니다. 다만, 결제취소처리일로부터 1영업일
														이전에 회사가 정한 절차와 방법에 따라 펀딩금 환불에 대하여 메이커에게 알려주어야 합니다. 단, 제a호
														내지 제c호의 사유 발생 시 환불 신청을 한 서포터에 한정하여 해당 서포터에게 펀딩금을 환불하고, 제d호
														및 제e호의 사유발생 시 서포터들 전체에게 일괄하여 각 펀딩금을 환불합니다.
														<ol>
															<li>본 조 제1항에 따른 펀딩금 환불 사유가 인정됨에도 불구하고 메이커가 펀딩금 환불을
																거부하는 경우</li>
															<li>메이커가 본 조 제1항에 따른 서포터의 펀딩금 환불 신청이 접수된 날로부터 14일
																이내에 펀딩금 환을 승인하지 않는다는 의사를 회사에게 표시하지 않은 경우</li>
															<li>프로젝트 종료일로부터 11개월을 초과하여 리워드가 제공되지 않아 스토리 허위 사실에
																준하는 등 특별히 서포터 보호가 필요한 것으로 인정되는 경우</li>
															<li>제26조에 따라 프로젝트가 취소되거나 제31조에 따라 이용계약이 해제∙해지된 경우</li>
															<li>제26조에 따른 프로젝트 취소 사유 또는 제31조에 따른 이용계약의 해제∙해지 사유
																발생이 합리적으로 의심되는 상황에서 회사가 메이커에게 소명 요청을 하였음에도 메이커가 요청일로부터
																2영업일 이내에 회신하지 아니하거나 제출된 자료로 소명이 되지 아니하는 경우</li>
														</ol>
													</li>
													<li>회사는 본 조 제3항으로 인해 발생한 펀딩 환불금과 비용 등 손해 일체를 본 약관에 따른
														미지급 정산대금에서 공제하거나 메이커에게 별도 청구할 수 있습니다. 이때 메이커는 지체 없이(청구를 받은
														날로부터 7영업일 이내에) 위 금원을 회사에게 지급하여야 하며, 이는 메이커가 회사에게 지급하여야 하는
														손해배상과 위약벌에 영향을 미치지 아니합니다.</li>
													<li>본 조에 따라 서포터에게 펀딩금이 환불되는 경우에도 회사는 메이커가 이용한 요금제에 따른
														수수료를 환급하지 아니하며, 메이커는 회사에게 위 수수료를 지급하여야 할 의무를 부담합니다. 단,
														정산절차를 진행한 이후 카드결제 취소의 방법으로 펀딩금이 환불된 경우에 한정하여 회사는 메이커에게 수수료
														중 결제 대행 수수료 상당의 금원을 반환합니다.</li>
													<li>제5항에도 불구하고 다음 각 호의 사유로 인해 리워드의 정상적인 제공이 불가하여 펀딩금의
														환불이 이루어진 경우에는 메이커는 환불되는 펀딩금에 대하여 수수료를 환급 요청할 수 있으며, 회사는
														메이커로부터 제출 받은 증빙을 확인하고 해당 요청을 승인할 지 여부를 결정할 수 있습니다.
														<ol>
															<li>천재 지변 및 자연 재해의 발생</li>
															<li>전염병의 확산</li>
															<li>기타 메이커가 통제 불가한 사유</li>
														</ol>
													</li>
													<li>본 조에 따라 펀딩금 환불 신청이 접수되거나 서포터에게 펀딩금이 환불되어 메이커가
														서포터에게 리워드의 반송을 요구하는 경우, 리워드의 반송 비용은 메이커가 부담하여야 합니다.</li>
													<li>제7항에도 불구하고 반송된 리워드가 본 조 제2항에서 정하는 각 호에 해당하는 경우
														서포터에게 반송 비용을 청구할 수 있습니다.</li>
												</ol>
												<h3 id="제31조-펀딩-서비스-이용계약의-해제-해지"
													style="font-size: 18px; font-weight: bold;">제31조 (펀딩
													서비스 이용계약의 해제/해지)</h3>
												<ol>
													<li>회사는 다음 각호의 사유가 발생한 경우 제5조에 따라 체결된 이용계약을 해제/해지할 수
														있습니다. 회사는 본 조에 따라 이용계약을 해제/해지하는 경우 제17조에서 정한 방법으로 메이커에게
														통지합니다.
														<ol>
															<li>본 약관 및 회사의 정책을 위반하거나 회사로부터 그 시정을 요구 받은 후 7일 이내에
																이를 시정하지 아니한 경우</li>
															<li>압류 및 가압류 등 금융기관의 거래정지, 회생 및 파산절차의 개시, 어음이나 수표의
																부도, 영업정지 및 취소 등의 행정처분, 주요 자산에 대한 보전처분, 영업양도 및 합병 등으로
																이용계약의 이행이 불가능한 경우</li>
															<li>기타 천재지변, 법령 또는 정부기관의 조치 등의 사유로 인하여 당사자가 이용계약에 따른
																업무를 원만하게 수행할 수 없다고 판단되는 경우</li>
															<li>관련 법령을 위반하거나 메이커의 책임 있는 사유로 인하여 회사가 명예 실추 등
																유/무형적 손해를 입은 경우</li>
															<li>메이커가 리워드 발송일로부터 7일이 경과하기 전 타 크라우드펀딩 사이트에서 모금을
																진행하거나 회사가 제공하는 서비스 외의 유통채널을 통해 리워드와 동일한 제품을 판매 또는 구매 예약을
																받는 경우로서 다음 각 목에 해당하지 않는 경우
																<ol>
																	<li style="list-style-type: lower-roman">펀딩의 대가로
																		제공되는 리워드가 아니라 프로젝트 활성의 목적으로 리워드와 별개로 추가된 증정품의 유통</li>
																	<li style="list-style-type: lower-roman">제한된 기간 동안
																		진행되는 오프라인 행사에서 사전 예약 형태로 진행되는 유통(다만, 사전에 프로젝트 페이지를 통해서
																		미리 고지하는 등 서포터의 이익을 침해하지 않는다고 판단되는 경우에 한함)</li>
																	<li style="list-style-type: lower-roman">메이커가 진행하고
																		있는 프로젝트가 후원 펀딩에 해당하는 경우로서, 동시판매가 허용되는 경우</li>
																</ol>
															</li>
															<li>메이커 또는 메이커와 이해관계가 있는 제3자에 의하여 프로젝트 정보(목표금액 달성률
																포함)가 부당하게 변경 또는 조작된 경우</li>
															<li>메이커가 진행기간 중 펀딩 외의 방법으로 사이트 이용자에게 리워드에 관한 거래를
																제안하거나 리워드에 관한 계약 체결 등을 진행한 경우</li>
															<li>제5조 제4항의 승낙 거부사유가 있음이 확인된 경우</li>
															<li>제10조에 따른 메이커의 보증사항이 사실과 중대하게 다른 경우</li>
															<li>기타 메이커가 크라우드펀딩업에 악영향을 끼칠 것으로 판단되는 경우를 포함하여 회사가
																판단한 합리적인 사유에 의거하여 이용계약의 해지가 필요하다고 인정할 경우</li>
															<li>메이커가 회사에 대하여 정당한 사유를 별도 고지함이 없이 본 약관에 따른 이용계약을
																체결한 후 상당한 기간이 경과하도록 오픈 예정 페이지를 공개하지 아니하거나 프로젝트를 시작하지 않는
																경우</li>
														</ol>
													</li>
													<li>메이커가 본 약관에 의한 이용계약을 해제/해지하고자 하는 경우, 해제/해지사유를 기재한
														서면(전자우편 또는 메이커 스튜디오 시스템을 통한 신청을 포함)으로 회원 탈퇴를 요청하여야 합니다. 만약
														현재 진행 중인 거래, 문의, 또는 민원이 있는 경우에는 탈퇴 신청이 불가능하며, 메이커가 해당 사항을
														처리 완료한 후 본 약관 및 정책에서 정하는 바에 따라 탈퇴 및 이용계약의 해제/해지가 가능합니다.</li>
													<li>이용계약의 해제/해지에도 불구하고 메이커는 해제/해지 시까지 완결되지 않은 프로젝트 건의
														배송, 교환, 환불에 필요한 조치를 취하여야 하며, 해제/해지 이전에 이미 종료된 프로젝트의 리워드와
														관련하여 발생한 메이커의 책임과 관련된 조항은 그 효력을 유지합니다.</li>
													<li>본 조에 의한 이용계약의 해제/해지는 기발생한 양 당사자의 권리관계 및 손해배상 청구권에
														영향을 미치지 아니합니다.</li>
												</ol>
												<h3 id="제32조-펀딩-위약벌"
													style="font-size: 18px; font-weight: bold;">제32조 (펀딩
													위약벌)</h3>
												<ol>
													<li>회사의 귀책사유가 없음에도 메이커가 프로젝트 또는 특정 서비스의 취소를 명시적으로 회사에게
														요청하여 취소되는 경우(결제예약금이 목표금액에 미치지 못할 것으로 예상됨을 이유로 취소하는 경우를
														포함하며 이에 한정되지 아니함)에는 다음 각 호에서 정한 바에 따라 위약벌을 회사에게 지급하여야 합니다.
														<ol>
															<li>취소를 명시적으로 요청하는 서면이 회사에 도달한 시점을 기준으로 목표 금액이 모집되지
																않은 경우 : 50만 원</li>
															<li>취소를 명시적으로 요청하는 서면이 회사에 도달한 시점을 기준으로 목표 금액 이상으로
																모집되었으나 1천만 원 미만인 경우 : 50만원 및 위 시점에 모집된 결제예약금을 기준으로 메이커가
																이용하고 있는 요금제의 수수료율을 곱하여 산정한 금원의 50%를 합한 금액</li>
															<li>취소를 명시적으로 요청하는 서면이 회사에 도달한 시점을 기준으로 목표 금액 이상으로
																모집되었으며 1천만원 이상인 경우 : 50만원 및 위 시점에 모집된 결제예약금을 기준으로 메이커가
																이용하고 있는 요금제의 수수료율을 곱하여 산정한 금원의 80%를 합한 금액</li>
														</ol>
													</li>
													<li>메이커의 고의 또는 중과실로 인하여 제10조에 따른 확인 및 보증사항이 사실과 다르거나
														제26조에 따른 프로젝트 취소사유가 발생하여 프로젝트가 취소된 경우 메이커는 손해배상금과 별개로 이용하고
														있는 요금제에 따른 수수료의 2배 상당의 위약벌(펀딩기간 중 프로젝트 취소가 있는 경우 취소 당시
														결제예약금을 기준으로 한 수수료의 2배 상당액을 의미)을 회사에 지급하여야 합니다. 단, 본 항의 사유로
														프로젝트가 취소되기 전 메이커가 프로젝트 취소를 명시적으로 회사에게 요청하는 경우에는 제1항의 위약벌은
														중복 적용되지 않습니다.</li>
													<li>제1항 내지 제2항에 더불어, 메이커가 이용하는 요금제에 공간아이펀드 쇼룸 서비스가 포함된
														경우, 공간아이펀드 쇼룸 서비스 제공 기간이 종료되기 전에 서비스를 취소하기 위해서는 다음 각 호의 기준에
														따라 회사에게 위약벌을 추가로 지급하여야 합니다.
														<ol>
															<li>전시 서비스 진행 시작일 6일 전 취소 : 위약벌 없음</li>
															<li>전시 서비스 진행 시작일 5일 ~ 1일 전 취소 : 15만원</li>
															<li>전시 서비스 제공 된 이후 취소 : 30만원</li>
														</ol>
													</li>
													<li>메이커가 본 약관 및 정책을 위반하였으나 제26조 및 제31조에 따른 프로젝트 취소 또는
														이용계약의 해제/해지를 하는 것이 오히려 서포터의 이익에 반하는 것으로 판단되는 경우, 회사는 메이커에게
														프로젝트 취소 또는 이용계약의 해제/해지 대신 결제금의 10%에 해당하는 금원을 위약벌로 청구할 수
														있습니다.</li>
													<li>메이커가 본 약관 및 정책을 위반함에 따라 프로젝트 또는 특정 서비스의 취소로 인해 회사에
														손해가 발생한 경우 메이커는 제1항 내지 제4항의 위약벌과는 별도로 손해배상금(집행한 광고비 등 실비를
														포함하며 이에 한정되지 아니함)을 회사에 지급하여야 합니다.</li>
													<li>제1항 내지 제3항의 위약벌이 발생했음에도 불구하고, 회사는 다음 각 호에 해당하는 경우
														메이커에게 위약벌을 부과하지 않을 수 있습니다. 단, 회사가 메이커의 프로젝트 취소 요청을 승인하거나
														결정하기 전 메이커가 임의로 프로젝트 취소에 대하여 서포터에게 공지한 경우에는 위약벌은 면제되지
														않습니다.
														<ol>
															<li>프로젝트 취소에 메이커의 귀책사유가 없는 경우</li>
															<li>프로젝트 취소에 관해 메이커와 회사 간 합의가 이루어진 경우</li>
															<li>서포터의 배송 전 결제 취소로 인하여 펀딩금이 목표했던 금액에 미달하게 되어 프로젝트를
																취소하는 경우</li>
															<li>기타 불가항력에 의한 사유 등 위약벌 면제의 필요성이 인정되는 경우</li>
														</ol>
													</li>
													<li>회사는 본 조의 위약벌을 본 약관에 따른 정산금에서 공제하거나 메이커에게 별도로 청구할 수
														있습니다.</li>
												</ol>
												<h3 id="제33조-후원-펀딩에-관한-특례"
													style="font-size: 18px; font-weight: bold;">제33조 (후원
													펀딩에 관한 특례)</h3>
												<ol>
													<li>후원 펀딩 프로젝트는 사업자가 아닌 개인만이 개설 가능하며, 개인사업자 또는 법인사업자는
														진행이 불가능합니다.</li>
													<li>후원 펀딩 프로젝트는 1천만 원 이상의 목표금액을 설정할 수 없으며, 총 결제예약금이
														1천만 원에 도달하게 되는 결제예약 시도 건부터 결제예약이 불가능합니다.</li>
													<li>후원 펀딩 프로젝트를 진행하는 메이커는 동일 목적으로 연간 1천만 원 이상의 펀딩금을
														조달할 수 없습니다.</li>
													<li>후원 펀딩 프로젝트를 통해 서포터에게 제공할 수 있는 리워드는 특정 품목에 한정되며,
														구체적인 사항은 심사 정책에 따릅니다.</li>
													<li>후원 펀딩 프로젝트를 진행하는 메이커는 상속세 및 증여세법 등 관련 법령을 준수하여야
														하며, 회사는 이와 관련하여 어떠한 책임도 부담하지 않습니다.</li>
												</ol>

												<h2 id="제3장-프리오더-서비스">제3장 프리오더 서비스</h2>
												<h3 id="제34조-프리오더-용어의-정의"
													style="font-size: 18px; font-weight: bold;">제34조 (프리오더
													용어의 정의)</h3>
												<p>본 장에서 사용하는 용어의 정의는 다음 각 호와 같습니다. 본 장에서 정의되지 않은 용어는 본
													약관의 다른 장 및 일반 거래 관행에 따라 정의된 의미를 가집니다.</p>
												<ol>
													<li style="list-style-type: lower-alpha;">“앵콜”이란 메이커가
														성공한 펀딩 또는 프리오더 프로젝트의 리워드와 동일하거나 일부 개선한 리워드를 대상으로 진행하는 프리오더
														프로젝트를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“글로벌”이란 메이커가
														해외에서 유통되었던 제품을 국내에 공식 유통하기 위한 목적으로 진행하는는 프리오더 프로젝트를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“예약구매 기간”이라
														함은 메이커가 게시한 프로젝트를 통해 서포터에게 예약판매 할 수 있는 기간으로서 프로젝트를 오픈하여
														예약구매자 모집이 가능한 시점부터 프로젝트 종료일까지의 기간을 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“예약구매의 신청”이란
														서포터가 프로젝트의 예약구매 기간 내에 회사가 정한 방법에 따라 예약구매의 의사표시를 하는 것을
														의미합니다.</li>
													<li style="list-style-type: lower-alpha;">"예약구매의 취소"란
														서포터가 프로젝트의 예약구매 기간 내에 예약구매의 의사표시를 철회하는 것을 의미합니다</li>
													<li style="list-style-type: lower-alpha;">“결제예약금”이란
														서포터가 예약구매의 신청에 따라 결제를 예약한 금액을 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“결제금”이란 서포터의
														예약구매의 신청에 따라 프로젝트 종료 시점에 모집된 결제예약금 중 결제 기간(프로젝트 종료일의 익일로부터
														4영업일) 종료 시 결제가 되지 않거나 취소된 금액을 제외하고 최종 결제가 완료된 금원을 말합니다.</li>
													<li style="list-style-type: lower-alpha;">“결제금 환불”이란
														프로젝트 종료 후에 본 약관에 따라 결제가 완료되거나 메이커가 정산받았던 결제금을 서포터에게 돌려주는
														것을 의미하며, 결제금 중 본 약관에서 정한 사유에 근거하여 카드결제 취소 등의 방법으로 서포터에게
														환불되는 금원을 결제 환불금이라고 합니다.</li>
													<li style="list-style-type: lower-alpha;">“구매확정”이라 함은
														환불 또는 교환 등의 요청 없이 배송완료일 또는 수령완료일로부터 7일이 경과한 경우를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“결제대금예치
														서비스”라 함은 매매계약이 체결되고 서포터가 대금을 결제하는 경우에, 서포터의 결제대금 보호를 위하여
														메이커가 일정 기간 동안 결제대금을 예치하는 서비스를 제공하는 것을 말합니다.</li>
												</ol>
												<h3 id="제35조-회사에-의한-프리오더-프로젝트의-취소"
													style="font-size: 18px; font-weight: bold;">제35조 (회사에
													의한 프리오더 프로젝트의 취소)</h3>
												<ol>
													<li>회사는 다음 각 호의 사유에 해당하는 경우 프로젝트 취소를 할 수 있으며, 프로젝트 취소
														처리일로부터 1영업일 전까지 메이커에게 취소 사유를 통보하여야 합니다. 다만, 긴급한 사정이 있는 경우
														회사는 통보 전 취소 처리를 할 수 있으며, 처리 후 지체 없이 메이커에게 취소 사유를 통보하여야
														합니다.
														<ol>
															<li>제10조에 의한 메이커의 확인 및 보증사항이 사실과 다른 경우</li>
															<li>본 약관에 따라 회사가 메이커에게 제출을 요구한 자료를 제출하지 않은 경우 또는
																증빙자료가 적법/유효하지 않은 경우</li>
															<li>프로젝트 페이지의 공시된 정보(리워드/독점 여부 등을 포함하며 이에 한정되지 아니함)에
																허위, 과장, 조작, 중요사실 기재 누락, 오기 등으로 인하여 중대한 오인의 소지가 있는 경우</li>
															<li>메이커가 리워드 발송일로부터 7일이 경과하기 전 다음 각 목에 해당하는 유통을 한 경우
																<ol>
																	<li style="list-style-type: lower-roman">국내에서는 회사를
																		통해서만 유통하기로 한 리워드를 타 사이트 또는 회사가 제공하는 서비스 외의 유통채널을 통하여
																		유통하거나, 실질적으로 리워드와 동일한 것으로 판단되는 상품을 유통하는 경우</li>
																	<li style="list-style-type: lower-roman">아이펀드 서포터만을
																		위해 제공되는 리워드의 혜택 또는 구성을 타 사이트 또는 회사 외의 경로를 통해 동일하게 제공하는
																		경우</li>
																	<li style="list-style-type: lower-roman">한정된 기간 또는
																		수량으로 유통하기로 한 리워드를 약속한 내용에 비해 일반적인 상관행에서 벗어난 정도로 추가
																		생산하여 유통하거나 제한 없이 유통하는 경우</li>
																</ol>
															</li>
															<li>복권, 상품권, 사이버머니 등 현금으로 환금성이 높거나 사행성이 있는 제품을 리워드로
																제공하는 경우</li>
															<li>관계 법령 또는 금융위원회 등 관계부처의 해석에 따라 증권으로 볼 수 있는 것을
																리워드로 제공하는 경우</li>
															<li>관계 법령 또는 금융위원회 등 관계부처의 해석에 따라 증권으로 볼 수 있는 리워드</li>
															<li>관계법령에 따라 온라인 판매유통이 금지된 품목(제품안전 미인증
																리워드/의약품/주류/담배/시력 보정용 안경 및 콘택트 렌즈(시력 보정용 선글라스 포함)/총포, 도검,
																화약류/마약/혈액증서/군복 및 군용장구/야생동물/음란물/동물을 포함하여 이에 한정되지 아니함)에
																해당하는 제품을 리워드로 제공하는 프로젝트</li>
															<li>성별/인종/종교/장애/사회신분/지역/직업을 차별하거나 이에 대한 편견을 조장하는
																정치적, 종교적, 성적 편향성 등을 띄는 소재를 포함하는 프로젝트</li>
															<li>타인의 명예를 손상시키거나 불이익을 주려는 목적 또는 범죄 행위, 국익 또는 공익을
																저해하려는 목적을 가지는 등 위법하거나 사회 질서 혹은 미풍양속을 저해하는 프로젝트</li>
															<li>의학 또는 과학적으로 검증되지 않은 미신숭배/건강비법/심령술 등 비과학적인 생활태도를
																정당화하는 프로젝트</li>
															<li>지식재산권 관계법령 및 사이트에 게재된 회사의 지식재산권 보호 정책 및 가이드라인에
																위배되는 제품을 리워드로 제공하는 프로젝트</li>
															<li>메이커와 회사가 프로젝트 취소에 관하여 상호 합의한 경우</li>
															<li>제11조 제5항에서 규정한 사후 심사 과정에서 다음 각 목 중 어느 하나에 해당하는
																경우가 발생하여 서포터에게 리워드 제공이 불가하거나 현저히 어려운 경우
																<ol>
																	<li style="list-style-type: lower-roman">프로젝트 오픈 후
																		사후 심사 시점 기준, 리워드 배송을 위한 준비 상태에 있어 중대한 문제가 발생되는 경우</li>
																	<li style="list-style-type: lower-roman">프로젝트 오픈 후
																		사후 심사 시점 기준, 서포터에게 알려야 하는 중대한 정보가 새소식으로 등록되지 않은 경우. 이
																		경우 서포터에게 알려야 하는 중대한 정보는 다음과 같습니다.
																		<ul>
																			<li>스토리에 명시된 리워드의 기(효)능 중 부수적인 스펙이 변경된 경우</li>
																			<li>예정된 배송일에 변경이 필요한 경우 (예. 배송일보다 빠른 배송) 단, 배송
																				정책 변경(예정)에 따라 예정된 배송일보다 지연되는 경우엔 개별 반환 조치</li>
																			<li>스토리에 명시된 리워드 제조 방법 및 과정이 변경된 경우</li>
																		</ul>
																	</li>
																</ol>
															</li>
															<li>기타 정책 및 회사의 내부 심사기준을 충족하지 아니하는 경우</li>
														</ol>
													</li>
													<li>본 조 제1항에서 정한 프로젝트 취소 사유가 발생하였다는 서포터, 권리자 기타 이해관계자
														또는 제3자로부터의 신고나 회사의 조사 등에 의하여 프로젝트 취소 사유가 발생한 사실에 대한 합리적
														의심이 있는 경우, 회사는 다음 각 호의 방법에 따른 조치를 취할 수 있습니다.
														<ol>
															<li>프로젝트 취소 사유 발생 여부에 대하여 메이커에게 소명자료 제출 요청</li>
															<li>제3자의 전문가에게 감정의뢰</li>
															<li>수사기관 등에게 관련 정보 제공</li>
															<li>일시적인 프로젝트 중단 또는 비공개처리</li>
															<li>위반 여부에 대한 유권적 판단이 이루어질 때까지 메이커에게 상당한 담보를 제공하게
																하거나 조치 당시 결제예약금 상당액을 예치하도록 하는 조치</li>
															<li>회사에 접수된 프로젝트 신고내용 및 메이커의 소명내용에 대하여 사이트에 공지하는 조치</li>
															<li>기타 위 각 호 방법들에 준하는 회원 보호 목적의 조치</li>
														</ol>
													</li>
													<li>메이커가 제10조에서 정한 확인 및 보증한 사항을 위반한 사실이 판결, 결정 기타 유권해석
														등에 따라 확인되는 경우, 회사는 제2항의 조치에 더하여 다음 각 호의 조치를 취할 수 있다.
														<ol>
															<li>서포터에게 제공된 리워드의 회수 또는 폐기 요청</li>
															<li>리워드의 결제금을 서포터에게 보상하도록 하는 조치 (리워드의 전량 회수 여부와 무관하게
																서포터 전체에 대한 전체 결제금 환불 및 결제금 상당액의 포인트 추가 지급)</li>
														</ol>
													</li>
													<li>본 조에 의한 회사의 조치에 따른 비용 기타 직접/간접적인 손해는 모두 메이커가 부담하여야
														하며, 회사는 이러한 비용 또는 손해를 본 약관에 따른 정산금에서 공제하거나 별도로 메이커에게 청구할 수
														있습니다.</li>
													<li>제1항, 제2항에 따른 내용은 부가서비스 중 오픈예정 페이지 서비스에 관하여 준용합니다.</li>
												</ol>
												<h3 id="제36조-프리오더-프로젝트-종료-시-결제"
													style="font-size: 18px; font-weight: bold;">제36조 (프리오더
													프로젝트 종료 시 결제)</h3>
												<ol>
													<li>프로젝트의 성공은 예약구매 기간의 종료시점을 기준으로 결제예약금 합계액이 메이커가 설정한
														목표금액 이상인 경우를 의미하며, 결제금 합계액이 메이커가 설정한 목표금액에 미치지 아니함은 성공 여부에
														영향을 미치지 아니합니다.</li>
													<li>회사는 결제예약금의 총액이 메이커가 설정한 목표금액 이상인 프로젝트에 한정하여 예약구매
														기간 종료일로부터 5영업일 이내에 총 4회에 걸쳐 결제를 실행하며, 회사가 정한 절차에 따라 결제
														내역(결제예약금액과 결제성공 및 실패 금액의 총액, 프로젝트 종료 시 목표금액 대비 최종 달성률 포함)을
														메이커에게 제공합니다.</li>
													<li>메이커는 서포터의 개인 사정으로 인한 결제 실패를 방지하기 위해 최종 결제일 이전에
														새소식을 통하여 서포터에게 정상적으로 결제가 이루어지도록 요청할 수 있습니다.</li>
													<li>회사는 결제진행이 완료된 후 5영업일 이내에 메이커에게 회사가 정한 양식과 절차에 따라
														정산 내역서를 제공합니다.</li>
													<li>메이커는 관계법령에 따라 서포터에게 결제금에 대해 세금계산서를 발행하여야 하고, 회사로부터
														정산 받은 금액에 대하여 사업자의 구분에 따라 법인세법, 소득세법, 부가가치세법상 과세대상에 해당하는
														경우 해당 금액에 대하여 세금을 신고 및 납부하여야 하며, 세금 납부에 대한 모든 책임을 집니다.</li>
												</ol>
												<h3 id="제37조-결제금-정산"
													style="font-size: 18px; font-weight: bold;">제37조 (결제금
													정산)</h3>
												<ol>
													<li>프리오더를 진행한 메이커는 원칙적으로 프리오더 프로젝트가 성공하여 리워드 배송 후 반품,
														교환 및 환불 등의 절차가 모두 종료된 후에 결제금에서 수수료 및 회사에 대한 미납금, 환불금, 기타
														채무금 등 상계 청구할 수 있는 상당액을 공제한 나머지 금액(이하 “정산금”) 을 지급받습니다. 단,
														메이커가 법에서 정하는 채권의 소멸시효가 도과할 때까지 회사가 정산을 위해 요청하는 정보를 제공하지 않는
														등 본 조에 명시된 절차에 따라 회사에 정산금의 지급을 요청하지 않는 경우, 회사는 메이커에게 정산금을
														지급할 의무를 부담하지 않습니다.</li>
													<li>메이커가 프리오더를 통해 제공하는 리워드가 무형의 서비스로서 다회에 걸쳐 제공되거나 각
														서포터마다 제공되는 시점이 1개월 이상의 기간에 걸쳐 상이한 경우에는, 메이커가 서포터에게 해당 리워드를
														이용 또는 예약할 수 있는 수단을 제공한 날을 리워드의 제공일로 보아 리워드 제공일로부터 7일이 경과하여
														구매확정이 완료된 건에 대해 정산을 진행합니다.</li>
													<li>본조 제1항에도 불구하고, 메이커가 진행한 프리오더 프로젝트가 심사 정책에서 규정된 “국내
														단독 유통”에 해당하는 경우에는 본 약관 제29조의 펀딩금 정산 규정을 준용합니다.</li>
												</ol>
												<h3 id="제38조-프리오더-결제대금예치-서비스"
													style="font-size: 18px; font-weight: bold;">제38조 (프리오더
													결제대금예치 서비스)</h3>
												<ol>
													<li>메이커는 메이커와 서포터 간에 이루어지는 상품 등 매매의 안전성과 신뢰성을 높이고 상품
														등을 인수하기 전에 대금을 결제해야 하는 서포터를 보호하기 위하여, 서포터에게 대금의 수령, 보관 및
														송금업무로 이루어지는 결제대금예치 서비스를 제공하여야 합니다.</li>
													<li>메이커는 법에서 정하는 한도 내에서 서비스를 통한 모든 거래에 결제대금예치 서비스를
														적용하여야 하며, 메이커가 결제대금예치 서비스를 통하지 않는 직거래를 유도하는 경우 회사는 해당 거래를
														취소하거나 판매를 중지하는 등 기타 필요한 조치를 취할 수 있습니다.</li>
													<li>결제대금예치 서비스를 이용하지 않은 거래 및 물품 또는 결제대금예치 서비스가 종결한 이후의
														거래와 관련하여 발생한 모든 사항은 메이커와 서포터가 상호협의를 통해 해결하여야 합니다.</li>
													<li>회사가 메이커로 하여금 결제대금예치 서비스를 이용할 수 있도록 하는 경우, 메이커는
														회사에서 제시하는 결제대금예치 서비스 이용규칙에 동의해야 합니다.</li>
												</ol>
												<h3 id="제39조-결제금의-환불"
													style="font-size: 18px; font-weight: bold;">제39조 (결제금의
													환불)</h3>
												<ol>
													<li>메이커는 서포터의 리워드 수령일로부터 7일 이내에 단순변심에 의한 개별 반환 신청에 대하여
														전자상거래법에서 정한 거부사유가 없는 한 지체없이 결제금을 환불해주어야 합니다. 다만, 리워드가 무형의
														재화 또는 서비스인 경우에는 전자상거래법 등 관련 법령 및 이에 따라 메이커가 정한 환불 및 교환 방침에
														따라 환불 및 교환 신청이 가능합니다.</li>
													<li>본 조 제1항에도 불구하고 메이커는 다음 각 호에 해당하는 경우 서포터의 결제금 환불
														신청을 승인하지 아니할 수 있습니다.
														<ol>
															<li>서포터의 귀책사유로 인하여 리워드가 멸실 또는 훼손된 경우</li>
															<li>서포터의 리워드 사용 또는 일부 소비로 인해 리워드의 가치 등이 현저히 감소한 경우</li>
															<li>시간이 지나 다시 판매하기가 곤란할 정도로 리워드의 가치가 현저히 감소한 경우</li>
															<li>복제가 가능한 리워드의 포장이 훼손된 경우</li>
															<li>서포터의 주문에 따라 개별적으로 생산되는 리워드로서 리워드 판매시 반품이나 교환의
																제한을 명시적으로 고지하고 서포터의 동의를 받은 경우</li>
															<li>기타 법령 및 규정에 의해 리워드의 반품이 제한되는 경우</li>
														</ol>
													</li>
													<li>본 조 제1항 및 제2항에도 불구하고 표시 또는 광고와 상이한 리워드가 배송된 경우,
														서포터는 리워드의 배송완료일로부터 3개월 이내 또는 해당 사실을 인지하거나 인지할 수 있었던 날로부터
														30일 이내에 결제금 환불을 요청할 수 있습니다. 이 경우 메이커는 환불 신청이 접수된 날로부터 7영업일
														이내에 환불에 대한 승인 여부를 결정하여야 합니다.</li>
													<li>회사는 다음 각 호에서 정한 사유가 발생한 경우 직접 결제금 환불 신청을 승인하고 카드결제
														취소 등의 방법을 통하여 서포터에게 결제금을 반환할 수 있습니다. 다만, 결제취소처리일로부터 1영업일
														이전에 회사가 정한 절차와 방법에 따라 결제금 환불에 대하여 메이커에게 알려주어야 합니다. 단, 제a호
														내지 제c호까지의 사유 발생 시 환불 신청을 한 서포터에 한정하여 해당 서포터에게 결제금을 환불하고,
														제d호 및 제e호의 사유발생 시 서포터들 전체에게 일괄하여 각 결제금을 환불합니다.
														<ol>
															<li>본 조 제1항 및 제3항에 따른 결제금 환불 사유가 인정됨에도 불구하고 메이커가 환불을
																거부하는 경우</li>
															<li>메이커가 본 조 제1항에 따른 서포터의 결제금 환불 신청이 접수된 날로부터 7일 이내에
																환불을 승인하지 않는다는 의사를 회사에게 표시하지 않은 경우</li>
															<li>프로젝트 종료일로부터 11개월을 초과하여 리워드가 제공되지 않아 스토리 허위 사실에
																준하는 등 특별히 서포터 보호가 필요한 것으로 인정되는 경우</li>
															<li>제35조에 따라 프로젝트가 취소되거나 제40조에 따라 이용계약이 해제∙해지된 경우</li>
															<li>제35조에 따른 프로젝트 취소 사유 또는 제40조에 따른 이용계약의 해제∙해지 사유
																발생이 합리적으로 의심되는 상황에서 회사가 메이커에게 소명 요청을 하였음에도 메이커가 요청일로부터
																2영업일 이내에 회신하지 아니하거나 제출된 자료로 소명이 되지 아니하는 경우</li>
														</ol>
													</li>
													<li>회사는 본 조 제4항으로 인해 발생한 환불금과 비용 등 손해 일체를 본 약관에 따른 미지급
														정산대금에서 공제하거나 메이커에게 별도 청구할 수 있습니다. 이때 메이커는 지체 없이(청구를 받은
														날로부터 7영업일 이내에) 위 금원을 회사에게 지급하여야 하며, 이는 메이커가 회사에게 지급하여야 하는
														손해배상과 위약벌에 영향을 미치지 아니합니다.</li>
													<li>본 조에 따라 서포터에게 환불금이 반환되는 경우에도 회사는 메이커가 이용한 요금제에 따른
														수수료를 환급하지 아니하며, 메이커는 회사에게 위 수수료를 지급하여야 할 의무를 부담합니다. 단,
														정산절차를 진행한 이후 카드결제 취소의 방법으로 결제금이 환불된 경우 및 본 조 제1항에 의한 환불에
														한정하여 회사는 메이커에게 수수료 중 결제 대행 수수료 상당의 금원을 반환합니다.</li>
													<li>제6항에도 불구하고 다음 각 호의 사유로 인해 리워드의 정상적인 제공이 불가하여 결제금의
														반환이 이루어진 경우에는 메이커는 반환되는 결제금에 대하여 수수료를 환급 요청할 수 있으며, 회사는
														메이커로부터 제출 받은 증빙을 확인하고 해당 요청을 승인할 지 여부를 결정할 수 있습니다.
														<ol>
															<li>천재 지변 및 자연 재해의 발생</li>
															<li>전염병의 확산</li>
															<li>기타 메이커가 통제 불가한 사유</li>
														</ol>
													</li>
													<li>본 조에 따라 서포터에게 결제금이 환불되어 메이커가 서포터에게 리워드의 반송을 요구하는
														경우, 리워드의 반송 비용은 메이커가 부담하여야 합니다. 단, 서포터의 단순변심에 의한 리워드의 반송
														비용은 서포터가 부담하여야 합니다.</li>
													<li>제8항에도 불구하고 반송된 리워드가 본 조 제2항에서 정하는 각 호에 해당하는 경우
														서포터에게 반송 비용을 청구할 수 있습니다.</li>
												</ol>
												<h3 id="제40조-프리오더-서비스-이용계약의-해제-해지"
													style="font-size: 18px; font-weight: bold;">제40조 (프리오더
													서비스 이용계약의 해제/해지)</h3>
												<ol>
													<li>회사는 다음 각호의 사유가 발생한 경우 제5조에 따라 체결된 이용계약을 해제/해지할 수
														있습니다. 회사는 본 조에 따라 이용계약을 해제/해지하는 경우 제17조에서 정한 방법으로 메이커에게
														통지합니다.
														<ol>
															<li>본 약관 및 회사의 정책을 위반하거나 회사로부터 그 시정을 요구 받은 후 7일 이내에
																이를 시정하지 아니한 경우</li>
															<li>압류 및 가압류 등 금융기관의 거래정지, 회생 및 파산절차의 개시, 어음이나 수표의
																부도, 영업정지 및 취소 등의 행정처분, 주요 자산에 대한 보전처분, 영업양도 및 합병 등으로
																이용계약의 이행이 불가능한 경우</li>
															<li>기타 천재지변, 법령 또는 정부기관의 조치 등의 사유로 인하여 당사자가 이용계약에 따른
																업무를 원만하게 수행할 수 없다고 판단되는 경우</li>
															<li>관련 법령을 위반하거나 메이커의 책임 있는 사유로 인하여 회사가 명예 실추 등
																유/무형적 손해를 입은 경우</li>
															<li>메이커가 리워드 발송일로부터 7일이 경과하기 전 다음 각 목에 해당하는 유통을 한 경우
																<ol>
																	<li style="list-style-type: lower-roman">국내에서는 회사를
																		통해서만 유통하기로 한 리워드를 타 사이트 또는 회사가 제공하는 서비스 외의 유통채널을 통하여
																		유통하거나, 실질적으로 리워드와 동일한 것으로 판단되는 상품을 유통하는 경우</li>
																	<li style="list-style-type: lower-roman">아이펀드 서포터만을
																		위해 제공되는 리워드의 혜택 또는 구성을 타 사이트 또는 회사 외의 경로를 통해 동일하게 제공하는
																		경우</li>
																	<li style="list-style-type: lower-roman">한정된 기간 또는
																		수량으로 유통하기로 한 리워드를 약속한 내용에 비해 일반적인 상관행에서 벗어난 정도로 추가
																		생산하여 유통하거나 제한 없이 유통하는 경우</li>
																</ol>
															</li>
															<li>메이커 또는 메이커와 이해관계가 있는 제3자에 의하여 프로젝트 정보(목표금액 달성률
																포함)가 부당하게 변경 또는 조작된 경우</li>
															<li>메이커가 예약구매 기간 중 프리오더 외의 방법으로 사이트 이용자에게 리워드에 관한
																거래를 제안하거나 리워드에 관한 계약 체결 등을 진행한 경우</li>
															<li>제5조 제4항의 승낙 거부사유가 있음이 확인된 경우</li>
															<li>제10조에 따른 메이커의 보증사항이 사실과 중대하게 다른 경우</li>
															<li>기타 메이커가 선주문 예약구매업에 악영향을 끼칠 것으로 판단되는 경우를 포함하여 회사가
																판단한 합리적인 사유에 의거하여 이용계약의 해지가 필요하다고 인정할 경우</li>
															<li>메이커가 회사에 대하여 정당한 사유를 별도 고지함이 없이 본 약관에 따른 이용계약을
																체결한 후 상당한 기간이 경과하도록 오픈 예정 페이지를 공개하지 아니하거나 프로젝트를 시작하지 않는
																경우</li>
														</ol>
													</li>
													<li>메이커가 본 약관에 의한 이용계약을 해지하고자 하는 경우, 해지사유를 기재한 서면(전자우편
														또는 메이커 스튜디오 시스템을 통한 신청을 포함)으로 회원 탈퇴를 요청하여야 합니다. 만약 현재 진행
														중인 거래, 문의, 또는 민원이 있는 경우에는 탈퇴 신청이 불가능하며, 메이커가 해당 사항을 처리 완료한
														후 본 약관 및 정책에서 정하는 바에 따라 탈퇴 및 이용계약 해지가 가능합니다.</li>
													<li>이용계약의 해지에도 불구하고 메이커는 해지 시까지 완결되지 않은 프로젝트 건의 배송,
														교환, 환불에 필요한 조치를 취하여야 하며, 해지 이전에 이미 종료된 프로젝트의 리워드와 관련하여 발생한
														메이커의 책임과 관련된 조항은 그 효력을 유지합니다.</li>
													<li>본 조에 의한 이용계약의 해지는 기발생한 양 당사자의 권리관계 및 손해배상 청구권에 영향을
														미치지 아니합니다.</li>
												</ol>
												<h3 id="제41조-프리오더-위약벌"
													style="font-size: 18px; font-weight: bold;">제41조 (프리오더
													위약벌)</h3>
												<ol>
													<li>회사의 귀책사유가 없음에도 메이커가 프로젝트 또는 특정 서비스의 취소를 명시적으로 회사에게
														요청하여 취소되는 경우(결제예약금이 목표금액에 미치지 못할 것으로 예상됨을 이유로 취소하는 경우를
														포함하며 이에 한정되지 아니함)에는 다음 각 호에서 정한 바에 따라 위약벌을 회사에게 지급하여야 합니다.
														<ol>
															<li>취소를 명시적으로 요청하는 서면이 회사에 도달한 시점을 기준으로 목표 금액이 모집되지
																않은 경우 : 50만 원</li>
															<li>취소를 명시적으로 요청하는 서면이 회사에 도달한 시점을 기준으로 목표 금액 이상으로
																모집되었으나 1천만 원 미만인 경우 : 50만원 및 위 시점에 모집된 결제금을 기준으로 메이커가
																이용하고 있는 요금제의 수수료율을 곱하여 산정한 금원의 50%를 합한 금액</li>
															<li>취소를 명시적으로 요청하는 서면이 회사에 도달한 시점을 기준으로 목표 금액 이상으로
																모집되었으며 1천만원 이상인 경우 : 50만원 및 위 시점에 모집된 결제금을 기준으로 메이커가
																이용하고 있는 요금제의 수수료율을 곱하여 산정한 금원의 80%를 합한 금액</li>
														</ol>
													</li>
													<li>메이커의 고의 또는 중과실로 인하여 제10조에 따른 확인 및 보증사항이 사실과 다르거나
														제35조에 따른 프로젝트 취소사유가 발생하여 프로젝트가 취소된 경우 메이커는 손해배상금과 별개로 이용하고
														있는 요금제에 따른 수수료의 2배 상당의 위약벌(예약구매 기간 중 프로젝트 취소가 있는 경우 취소 당시
														결제예약금을 기준으로 한 수수료의 2배 상당액을 의미)을 회사에 지급하여야 합니다. 단, 본 항의 사유로
														프로젝트가 취소되기 전 메이커가 프로젝트 취소를 명시적으로 회사에게 요청하는 경우에는 제1항의 위약벌은
														중복 적용되지 않습니다.</li>
													<li>제1항 내지 제2항에 더불어, 메이커가 이용하는 요금제에 공간아이펀드 쇼룸 서비스가 포함된
														경우, 공간아이펀드 쇼룸 서비스 제공 기간이 종료되기 전에 서비스를 취소하기 위해서는 다음 각 호의 기준에
														따라 회사에게 위약벌을 추가로 지급하여야 합니다.
														<ol>
															<li>전시 서비스 진행 시작일 6일 전 취소 : 위약벌 없음</li>
															<li>전시 서비스 진행 시작일 5일 ~ 1일 전 취소 : 15만원</li>
															<li>전시 서비스 제공 된 이후 취소 : 30만원</li>
														</ol>
													</li>
													<li>메이커가 본 약관 및 정책을 위반하였으나 제35조 및 제40조에 따른 프로젝트 취소 또는
														이용계약의 해제/해지를 하는 것이 오히려 서포터의 이익에 반하는 것으로 판단되는 경우, 회사는 메이커에게
														프로젝트 취소 또는 이용계약의 해제/해지 대신 결제금의 10%에 해당하는 금원을 위약벌로 청구할 수
														있습니다.</li>
													<li>메이커가 본 약관 및 정책을 위반함에 따라 프로젝트 또는 특정 서비스의 취소로 인해 회사에
														손해가 발생한 경우 메이커는 제1항 내지 제4항의 위약벌과는 별도로 손해배상금(집행한 광고비 등 실비를
														포함하며 이에 한정되지 아니함)을 회사에 지급하여야 합니다.</li>
													<li>제1항 내지 제3항의 위약벌이 발생했음에도 불구하고, 회사는 다음 각 호에 해당하는 경우
														메이커에게 위약벌을 부과하지 않을 수 있습니다. 단, 회사가 메이커의 프로젝트 취소 요청을 승인하거나
														결정하기 전 메이커가 임의로 프로젝트 취소에 대하여 서포터에게 공지한 경우에는 위약벌은 면제되지
														않습니다.
														<ol>
															<li>프로젝트 취소에 메이커의 귀책사유가 없는 경우</li>
															<li>프로젝트 취소에 관해 메이커와 회사 간 합의가 이루어진 경우</li>
															<li>서포터의 배송 전 결제 취소로 인하여 결제금이 목표했던 금액에 미달하게 되어 프로젝트를
																취소하는 경우</li>
															<li>기타 불가항력에 의한 사유 등 위약벌 면제의 필요성이 인정되는 경우</li>
														</ol>
													</li>
													<li>회사는 본 조의 위약벌을 본 약관에 따른 정산금에서 공제하거나 메이커에게 별도로 청구할 수
														있습니다.</li>
												</ol>

												<h2 id="제4장-스토어-서비스">제4장 스토어 서비스</h2>
												<h3 id="제42조-스토어-용어의-정의"
													style="font-size: 18px; font-weight: bold;">제42조 (스토어
													용어의 정의)</h3>
												<p>본 장에서 사용하는 용어의 정의는 다음 각 호와 같습니다. 본 장에서 정의되지 않은 용어는 본
													약관의 다른 장 및 일반 거래 관행에 따라 정의된 의미를 가집니다.</p>
												<ol>
													<li style="list-style-type: lower-alpha;">“구매”라 함은
														서포터가 서비스를 통해 메이커가 판매하는 상품을 구매하고 대금을 지급하는 행위를 의미합니다.</li>
													<li style="list-style-type: lower-alpha;">“판매대금”이라 함은
														서비스를 통해 판매되어 구매확정이 완료된 건들의 합계 금액(부가가치세 포함)을 의미합니다.</li>
												</ol>
												<h3 id="제43조-상품의-배송"
													style="font-size: 18px; font-weight: bold;">제43조 (상품의
													배송)</h3>
												<ol>
													<li>메이커는 서포터의 상품 주문에 따른 결제일로부터 최대 14일 내 상품 발송일(이하
														“발송일”)을 지정하여야 하며 서포터가 이를 확인할 수 있도록 회사가 지정한 방법에 따라 공지해야합니다.</li>
													<li>서포터의 주문에 따른 결제가 완료되면 회사는 메이커가 주문 정보를 확인할 수 있도록 조치를
														취하고 메이커는 당해 주문 정보에 따라 배송을 하여야 합니다.</li>
													<li>메이커는 주문내역을 확인하고 배송 중 상품이 파손되지 않도록 적절한 포장을 한 후 배송의
														증명 또는 추적이 가능한 물류대행(택배)업체(이하 “배송업체”)에 배송을 위탁하여야 합니다.</li>
													<li>메이커는 메이커가 지정한 발송일 내 상품의 발송을 완료하여야 하고, 메이커 스튜디오에
														송장번호 등의 발송 관련 데이터를 입력하여 발송이 완료되었음을 증명하여야 합니다. 단, 메이커가
														배송경과가 추적되지 않는 직접전달 등으로 상품을 발송하는 경우, 상품 배송에 대한 증명책임을 부담합니다.</li>
													<li>상품의 배송과 관련하여 서포터와 분쟁이 발생한 경우 회사는 메이커에게 배송완료의 증빙을
														요청할 수 있으며 메이커는 회사의 요청이 있은 날로부터 7일 이내에 해당 자료를 제출하여야 합니다.
														메이커가 증빙자료를 제출하지 않거나 허위 배송정보의 입력으로 인해 서포터 및 회사에게 발생하는 손해 및
														제반 문제에 대한 모든 책임은 메이커에게 있습니다.</li>
													<li>메이커가 제1항에서 정한 발송일에 상품을 발송하지 못할 경우에는 이메일 또는 기타 방법을
														통하여 서포터에게 발송지연사유 및 발송예정일을 안내해야합니다.</li>
													<li>서포터의 귀책사유로 인하지 않은 배송 오류 등으로 인하여 서포터가 상품을 정상적으로
														수령하지 못한 경우 메이커는 그에 관한 모든 책임을 부담하여야 합니다.</li>
												</ol>
												<h3 id="제44조-구매취소-반품-교환-환불"
													style="font-size: 18px; font-weight: bold;">제44조
													(구매취소, 반품, 교환, 환불)</h3>
												<ol>
													<li>메이커는 서포터가 주문한 상품을 공급하기 어려운 경우임을 인지한 즉시 해당 사실을 서포터
														및 회사에게 통지한 후 서포터의 동의를 얻은 후 해당 구매를 취소하여야 하며 서포터의 상품대금
														결제일로부터 3 영업일 이내에 상품대금 환불 및 환불에 필요한 조치를 취하여야 합니다.</li>
													<li>서포터는 상품 배송완료일로부터 7일(배송 완료일을 확인할 수 없는 경우에는 판매형태 및
														배송방식 등을 고려하여 산정된 합리적인 기간 내)이내에 반품 또는 교환을 요청할 수 있으며 메이커는
														서포터가 이 기간 내 반품이나 교환을 요청하는 경우 서포터의 요청에 따라 반품 또는 교환을 해주어야
														합니다. 다만, 상품이 무형의 재화 또는 서비스인 경우에는 전자상거래법 등 관련 법령 및 이에 따라
														메이커가 정한 환불 및 교환 방침에 따라 환불 및 교환 신청이 가능하며, 다음 각 호의 경우 본문의
														내용이 적용되지 않습니다.
														<ol>
															<li>서포터의 귀책사유로 인하여 상품이 멸실 또는 훼손된 경우</li>
															<li>서포터의 상품 사용 또는 일부 소비로 인해 상품의 가치 등이 현저히 감소한 경우</li>
															<li>시간이 지나 다시 판매하기가 곤란할 정도로 상품의 가치가 현저히 감소한 경우</li>
															<li>복제가 가능한 상품의 포장이 훼손된 경우</li>
															<li>서포터의 주문에 따라 개별적으로 생산되는 상품으로서 상품 판매시 반품이나 교환의 제한을
																명시적으로 고지하고 서포터의 동의를 받은 경우</li>
															<li>기타 법령 및 규정에 의해 상품의 반품이 제한되는 경우</li>
														</ol>
													</li>
													<li>상기 제2항에도 불구하고 상품이 표시 또는 광고와 상이한 상품이 배송된 경우, 서포터는
														상품의 배송완료일로부터 3개월 이내 또는 해당 사실을 인지하거나 인지할 수 있었던 날로부터 30일 이내에
														반품 또는 교환을 요청할 수 있습니다. 이러한 경우, 메이커는 서포터의 요청에 따라 상품의 환불 또는
														교환을 포함하여 필요한 조치를 취하여야 합니다.</li>
													<li>상기 제2항 또는 제3항에 따라 서포터가 구매한 상품을 반품 또는 교환을 요청하는 경우,
														해당 메이커는 반품 절차에 대한 자세한 설명을 서포터에게 제공한 후 서포터의 요청에 따라 반품 또는
														교환을 진행하여야 합니다. 이러한 경우, 메이커는 관련 법률에 의거하여 반품을 받은 후 교환이나 환불
														또는 환불에 필요한 조치를 하며 추가적으로 발생하는 비용은 교환 또는 환불의 책임이 있는 당사자가
														부담하여야 합니다.</li>
													<li>메이커는 상품 하자 또는 배송 사고 등 서포터의 귀책사유가 없는 반품 또는 교환의 경우
														해당 배송비용을 해당 서포터에게 부과해서는 안되며 서포터 반품 상품의 배송비용으로 사전에 추가적으로
														지불한 비용은 서포터의 요청에 따라 반환되어야 합니다.</li>
													<li>메이커는 수시로 서비스 관련 사이트 및 메이커 스튜디오 등을 통해 서포터의 반품 요청이
														접수되었는지 확인하고 필요한 조치를 취하여야 합니다. 메이커가 고객의 반품 요청 등을 확인하지 못하는
														경우에는 메이커의 과실로 간주되며 메이커는 이를 확인하지 못하였다는 이유로 고객의 반품 요청 등을 거절할
														수 없습니다.</li>
													<li>메이커가 물류나 가구 직배송 등 자체 배송한 상품의 경우 최초 배송 시에 서포터에게
														청약철회 및 반품절차를 전자상거래법 등 관련 법규에 따라 정확히 안내하여야 합니다.</li>
													<li>메이커는 서포터의 반품 신청이 접수된 날로부터 7영업일 이내에 환불 또는 환불에 필요한
														조치를 취하여야 합니다. 만약 메이커가 7영업일 내에 아무런 조치를 취하지 않은 주문 건은 자동 환불 될
														수 있습니다.</li>
													<li>서포터의 상품 대금 결제 후 ‘상품 준비 중’ 상태로부터 상당한 기간이 경과 되는 경우
														회사는 해당 주문 건을 취소하고 환불처리할 수 있습니다.</li>
													<li>본 약관 및 운영 정책, 관련 법령 및 규정에 따라 허용되는 한도 내에서 서포터의 청약,
														반품 등의 철회를 제한하고자 하는 경우, 해당 메이커는 전자상거래법 제17조 제6항에 따라 이러한 사실
														및 제한 사유를 상품의 포장이나 서비스 관련 사이트 등 서포터가 쉽게 알 수 있는 곳에 표시하여야
														합니다.</li>
													<li>상품에 결함이 있거나 그 중에서도 특히 상품의 안전에 결함이 있는 경우에는 해당 메이커는
														판매한 모든 상품을 회수(수리, 교환, 수거, 환불)하여야 하고 그로 인한 모든 비용을 부담하여야
														합니다.</li>
													<li>본 약관 및 정책에 따른 서포터의 주문 취소, 교환 또는 반품 요청과 관련하여 메이커가
														환불, 배송 확인, 교환 제공 등을 하지 않는 경우, 회사는 해당 주문에 대하여 합리적인 범위 내에서
														적절한 조치를 취할 수 있습니다. 이와 관련하여 메이커의 귀책사유가 있는 경우, 회사는 서포터에게 환불한
														금액 및 적절한 조치를 취하는 과정에서 발생한 비용을 메이커에게 청구할 수 있습니다.</li>
												</ol>
												<h3 id="제45조-판매대금-정산"
													style="font-size: 18px; font-weight: bold;">제45조 (판매대금
													정산)</h3>
												<ol>
													<li>회사는 매월 2회(15일과 말일) 서비스를 통해 판매된 상품 중 구매확정이 완료된 건들을
														합계하여 판매대금을 산정하며 해당 판매대금에서 제7조에서 정한 수수료 및 회사에 대한 미납금, 기타
														채무금 등 상계 청구할 수 있는 상당액을 공제한 나머지 금액(이하, “정산금”)을 산정하여 메이커에게
														지급합니다.</li>
													<li>회사는 제1항에 대한 세부사항(판매대금, 공제 세부사항, 정산금 등)이 기재된 정산
														내역서를 메이커 스튜디오로 통지하며 정산 내역서를 발송한 날로부터 10영업일 내에 정산금이 지급되도록
														조치합니다. 단, 지급오류 등 양 당사자의 책임없는 사유로 인해 정산금 지급이 늦어질 경우 그러하지
														아니합니다.</li>
													<li>회사는 메이커 스튜디오에 기재된 메이커 명의의 계좌에 한정하여 제1항 정산절차에 따른
														금원을 지급합니다. 다만, 예외적으로 회사가 정한 기준에 따라 특별한 사유가 인정되는 경우에는 별도의
														변경 약정서를 작성한 후 메이커 명의의 다른 은행계좌로 지급할 수 있습니다.</li>
													<li>메이커가 정산금 지급과 관련하여 메이커 스튜디오 등을 통해 회사에 제공한 정보가 정확하지
														않은 경우 정산금 지급이 불가하거나 보류될 수 있으며, 이에 대한 책임은 메이커가 부담합니다.</li>
												</ol>
												<h3 id="제46조-판매대금-정산의-보류"
													style="font-size: 18px; font-weight: bold;">제46조 (판매대금
													정산의 보류)</h3>
												<ol>
													<li>회사는 다음 각 호 중 어느 하나에 해당하지 아니하는 경우에 메이커에게 정산절차를
														진행하며, 다음 각 호 중 어느 하나에 해당하는 경우 그 사유가 해소되거나 해결되었다고 판단될 때까지
														정산절차의 진행을 보류할 수 있습니다.
														<ol>
															<li>메이커가 회사가 요청하는 정산에 필요한 서류(지급받을 계좌정보 등을 포함하며 이에
																한정되지 아니함) 또는 정보를 적시에 적정하게 제출하지 않거나 변경사실을 통지하지 않은 경우</li>
															<li>제21조의 서비스의 중단 사유가 발생하거나 서비스의 중단에 관한 신고나 민원이 접수된
																경우</li>
															<li>메이커의 채권자의 신청에 의한 정산금의 가압류, 압류 및 추심명령 등 법원의 결정이
																있을 경우</li>
															<li>메이커가 본 약관의 규정을 위반하거나 위반한 것으로 의심될 만한 타당한 정황이 있는
																경우</li>
														</ol>
													</li>
													<li>회사는 장기 배송지연 건을 배송완료 건으로 간주하여 주문 절차를 종료할 수 있으며, 해당
														구매에 대하여 추후 발생할 수 있는 환불 요청에 대비하여 일정 기간 동안 판매대금의 정산을 보류할 수
														있습니다.</li>
													<li>본 조에 정한 외에도 법률의 규정에 의하거나 자금세탁방지 관련 의무 미준수 등 합리적인
														사유가 있는 경우에는 회사는 메이커에게 통지하고 정산금의 전부 또는 일부에 대한 정산을 일정 기간
														유보하거나 회사가 메이커에게 가지는 채권과 상계할 수 있습니다.</li>
												</ol>
												<h3 id="제47조-스토어-결제대금예치-서비스"
													style="font-size: 18px; font-weight: bold;">제47조 (스토어
													결제대금예치 서비스)</h3>
												<ol>
													<li>메이커는 메이커와 서포터 간에 이루어지는 상품 등 매매의 안전성과 신뢰성을 높이고 상품
														등을 인수하기 전에 대금을 결제해야 하는 서포터를 보호하기 위하여, 서포터에게 대금의 수령, 보관 및
														송금업무로 이루어지는 결제대금예치 서비스를 제공하여야 합니다.</li>
													<li>메이커는 법에서 정하는 한도 내에서 서비스를 통한 모든 거래에 결제대금예치 서비스를
														적용하여야 하며, 메이커가 결제대금예치 서비스를 통하지 않는 직거래를 유도하는 경우 회사는 해당 거래를
														취소하거나 판매를 중지하는 등 기타 필요한 조치를 취할 수 있습니다.</li>
													<li>결제대금예치 서비스를 이용하지 않은 거래 및 물품 또는 결제대금예치 서비스가 종결한 이후의
														거래와 관련하여 발생한 모든 사항은 메이커와 서포터가 상호협의를 통해 해결하여야 합니다.</li>
													<li>회사가 메이커로 하여금 결제대금예치 서비스를 이용할 수 있도록 하는 경우, 메이커는
														회사에서 제시하는 결제대금예치 서비스 이용규칙에 동의해야 합니다.</li>
												</ol>
												<h3 id="제48조-스토어-서비스-이용계약의-해제-해지"
													style="font-size: 18px; font-weight: bold;">제48조 (스토어
													서비스 이용계약의 해제/해지)</h3>
												<ol>
													<li>회사는 다음 각 호에서 정한 사유가 발생할 경우 메이커에게 상당한 기한을 정하여 시정을
														최고할 수 있으며, 메이커가 최고를 받은 후 위 기한 이내에 시정하지 않았을 때 회사는 즉시 본 약관의
														일부 또는 전부를 해제 또는 해지할 수 있습니다.
														<ol>
															<li>본 약관 및 회사의 정책을 위반하거나 회사로부터 그 시정을 요구 받은 후 7일 이내에
																이를 시정하지 아니한 경우</li>
															<li>압류 및 가압류 등 금융기관의 거래정지, 회생 및 파산절차의 개시, 어음이나 수표의
																부도, 영업정지 및 취소 등의 행정처분, 주요 자산에 대한 보전처분, 영업양도 및 합병 등으로 본
																약관의 이행이 불가능한 경우</li>
															<li>기타 천재지변, 법령 또는 정부기관의 조치 등의 사유로 인하여 당사자가 본 약관에 따른
																업무를 원만하게 수행할 수 없다고 판단되는 경우</li>
															<li>관련 법령을 위반하거나 메이커의 책임 있는 사유로 인하여 회사가 명예 실추 등
																유/무형적 손해를 입은 경우</li>
															<li>제10조에 따른 메이커의 보증사항이 사실과 중대하게 다른 경우</li>
															<li>메이커가 본 약관에 따른 당사자의 중요한 의무를 이행하지 아니하여 계약의 목적을
																달성하기 어려운 경우</li>
															<li>메이커가 본 약관 및 정책과 <a
																href="/web/wterms/reward_screening_policy#3.1-메이커"
																target="_blank">심사 정책</a>에서 정하는 부정 행위를 한 경우
															</li>
														</ol>
													</li>
													<li>메이커가 본 약관을 해지하고자 하는 경우, 해지사유를 기재한 서면(전자우편 또는 메이커
														스튜디오 시스템을 통한 신청을 포함)으로 신청하여야 합니다. 만약 현재 진행 중인 거래, 문의, 또는
														민원이 있는 경우에는 본 약관의 해지가 불가능하며, 메이커가 해당 사항을 처리 완료한 후 본 약관의
														해지가 가능합니다.</li>
													<li>본 약관의 해지에도 불구하고 메이커는 해지 시까지 완결되지 않은 주문 건의 배송, 교환,
														환불에 필요한 조치를 취하여야 하며, 해지 이전에 이미 주문이 완료된 상품과 관련하여 발생한 메이커의
														책임과 관련된 조항은 그 효력을 유지합니다.</li>
													<li>본 조에 의한 본 약관의 해지는 기발생한 양 당사자의 권리관계 및 손해배상 청구에 영향을
														미치지 아니합니다.</li>
												</ol>
												<h2 id="부칙">부칙</h2>
												<p>제30조 제3항 제c호의 수정 및 제39조 제4항 제c호의 수정은 2023. 2. 12.부터
													시행됩니다.</p>
											</article>

										</main>
										<label
											class="Checkbox_checkbox__27KzI Checkbox_lg__15YJd Checkbox_labeled__uRUNZ"><input
											disabled="" type="checkbox" class="Checkbox_input__304VX"
											id="check_result"><span
											class="Checkbox_icon__3gYsg" aria-hidden="true"	><svg

													viewBox="0 0 16 2" focusable="false" role="presentation"
													class="withIcon_icon__1Oal1 Checkbox_removeIcon__3mPDx"
													aria-hidden="true">
													<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg> <svg
													viewBox="0 0 48 48" focusable="false" role="presentation"
													class="withIcon_icon__1Oal1 Checkbox_checkIcon__165W2"
													aria-hidden="true">
													<path
														d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
											class="Checkbox_content__3WSlM"><span>위 사실을 모두
													확인하였고 동의합니다.</span></span></label>
									</div>
								</div>
							</section>

							<section class="Section_container__3md8M spacing-9"
								style="max-width: 630px;">
								<div class="Section_header__1qwS7 spacing-4">
									<h2 class="Section_title__ikPIm Section_isRequired__F8rij">환불
										정책</h2>
									<div class="Section_guide__2xeJO"></div>
								</div>
								<div class="Section_content__3OkLZ">
									<div class="RefundPolicyField_container__ltHLf">
										<div color="basic"
											class="MessageBox_messageBox__2uiL- MessageBox_basic__33eeL RefundPolicyField_messageBox__4qusN">

											<div class="MessageBox_content__1LidS">
												<div class="MessageBox_description__1fIpe">
													<p>
														이 프로젝트는 <strong>펀딩 환불 정책</strong>이 적용돼요.
													</p>
													
												</div>
											</div>
										</div>
										<ul>
											<li>약속한 리워드 발송 예정일까지 리워드가 출발하지 않았다면? 서포터는 환불 신청할 수 있어요.</li>
											<li>리워드 수령 후 하자가 발견되었다면? 서포터는 환불 신청할 수 있어요.</li>
											<li>메이커는 서포터의 환불 신청 내역을 먼저 확인한 후 승인할 수 있어요.</li>
										</ul>
									</div>
								</div>
							</section>
							
							<section class="Section_container__3md8M spacing-9" style="">
								<div style="max-width: 630px;">
									<div class="Section_header__1qwS7">
										<h2 class="Section_title__ikPIm ">A/S
											정책</h2>
										<div class="Section_guide__2xeJO"></div>
									</div>
									<div class="Section_description__10Uwo">리워드 사용 중 문제가 발생할
										수 있어요. 해결 방법을 미리 알려 주시면 서포터님들의 신뢰를 얻을 수 있어요.</div>
									<div class="Section_content__3OkLZ">
										<div class="TextField_textField__23rCe TextField_md__2zsQn">
											<label></label>
											<div class="TextField_field__1E9vt">
												<textarea placeholder="내용을 입력해 주세요" maxlength="800" rows="4"
													class="Textarea_textarea__2swOj undefined"
													id="project_AS"></textarea>
												<textarea aria-hidden="true" readonly="" tabindex="-1"
													class="Textarea_textarea__2swOj undefined"
													style="visibility: hidden; position: absolute; overflow: hidden; height: 0px; top: 0px; left: 0px; transform: translateZ(0px); pointer-events: none;"></textarea>
											</div>
										</div>
									</div>
								</div>
								<div class="Section_guideMessage__3XqrM">
									예시)<br>
									<ul>
										<li>보증 기간: 리워드 수령일로부터 1년</li>
										<li>규정: 정상적인 상태에서 사용 중 발생한 제품 하자인 경우 1:1 교체</li>
										<li>A/S 불가 규정: 보증 기간 이내일지라도 사용자의 고의 또는 과실로 인하여 제품 수리 및
											재생이 불가능한 경우</li>
										<li>접수 방법: 접수처를 통해 하자에 대한 정확한 소명 후 처리됩니다.</li>
										<li>접수처: 010-1234-5678 / 카카오톡 아이디 @abcd</li>
									</ul>
								</div>
							</section>
							<section class="Section_container__3md8M spacing-6"
								style="max-width: 630px;">
								<div class="Section_content__3OkLZ">
									<div color="info"
										class="MessageBox_messageBox__3acWS MessageBox_info__16itf PolicyPreviewMessageBox_container__3ooAI">
										<span><svg viewBox="0 0 40 40" focusable="false"
												role="presentation"
												class="withIcon_icon__1Oal1 MessageBox_icon__31KWI MessageBox_withoutTitle__2S2r8"
												aria-hidden="true">
												<path fill="none" d="M0 0h40v40H0z"></path>
												<path
													d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z"></path></svg></span>
										<div class="MessageBox_content__3db50">
											<div class="MessageBox_description__1bCQv">
												<p>
													프로젝트가 공개되면 서포터님들에게 환불 정책이 안내돼요.<br>메이커님께 관련 문의가 들어올 수
													있으니 꼼꼼히 확인해 주세요.
												</p>
												
											</div>
										</div>
									</div>
								</div>
							</section>
							<div class="ProjectTypeFormContainer_buttonWrapper__3fh_J">
									<input type="button" style="width: 420px; max-width: 100%;"
										id="save" name="savePlan" value="저장하기"
										class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD FundingPlanLayout_submitBtn__1EzVj">
								</div>
						</div>
					</section>
					<div class="ChannelTalk_container__3OcHU">
						<button type="button"></button>
					</div>
				</div>
			</div>
		</div>
		<div class="Toast_toast__1b_B2">
			<div class="Toast_content__G-bTq"></div>
		</div>
	</div>

</body>
</html>