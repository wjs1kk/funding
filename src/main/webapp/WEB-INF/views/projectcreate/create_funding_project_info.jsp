<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.4.js"></script>

<link
	href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css"
	rel="stylesheet">
<link
	href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/studio/funding/static/css/7.6e33e59e.chunk.css">

<script type="text/javascript">
	//프로젝트 유형
	$(function() {
		$("input:radio[value=FUNDING]").on("click", function() {
			$("input:radio[value=PREORDER]").prop('checked', false)
			$('#project_type').val(1);
		})
	})
	
	$(function() {
		$("input:radio[value=PREORDER]").on("click", function() {
			$("input:radio[value=FUNDING]").prop('checked', false)
			$('#project_type').val(2);
		})
	})
	
	//심사서류 모달
	$(function() {
		$("#modal_open").on("click", function() {
			$('#modal').css('display', 'block');			
		})
	})

	//카테고리 선택
	$(function() {
		$("#ul_list").on("click",function() {
			$("#category_result").text($(":focus").val()).css('color','#00b2b2');
					$('#typeSelect').text($("#category_result").text());
					$('#project_reward_category').val($("#category_result").text());
					
		})
	})

	//완료 선택 시 변경 불가, 리워드 제작 형태 표시
	$(function() {
		$("#complete").on("click", function() {
			if($('#typeSelect').text() == ""){
				alert("카테고리를 선택해주세요")
				return false;
			}
			$('#complete').css({
				'pointer-events' : 'none',
				'background-color' : 'gray',
				'border-color' : 'gray'
			});
			$("#ul_list").css('pointer-events', 'none');
			$('#reward_type').css('display', 'block');
		})
	})

	//리워드 라디오버튼	
	$(function() {
		$("input:radio[value=2P01]").on("click", function() {
			let radio = "직접 제조"
			$("input:radio[value=2P02]").prop('checked', false)
			$("input:radio[value=2P03]").prop('checked', false)

			$('#next').css('display', 'block');
			$('#next_hidden').css('display', 'none');
			$('#makerSelect').text(radio);
			$('#project_reward_produce_type').val(1);
			
		})
	})

	$(function() {
		$("input:radio[value=2P02]").on("click", function() {
			let radio = "위탁 제조"
			$("input:radio[value=2P01]").prop('checked', false)
			$("input:radio[value=2P03]").prop('checked', false)

			$('#next').css('display', 'block');
			$('#next_hidden').css('display', 'none');
			$('#makerSelect').text(radio);
			$('#project_reward_produce_type').val(2);

		})
	})

	$(function() {
		$("input:radio[value=2P03]").on("click", function() {
			let radio = "ODM"
			$("input:radio[value=2P01]").prop('checked', false)
			$("input:radio[value=2P02]").prop('checked', false)

			$('#next').css('display', 'block');
			$('#next_hidden').css('display', 'none');
			$('#makerSelect').text(radio);
			$('#project_reward_produce_type').val(3);

		})
	})

	//리워드 선택 후 다음
	$(function() {
		$("#next").on("click", function() {
			$('#first_page').css('display', 'none');
			$('#second_page').css('display', 'block');
		})
	})
	//리워드 등록
	$(function() {
		$("#registration").on("click", function() {
			let document = $('#documents').val().split("\\")
			if(document == ""){
				alert("필수서류를 확인해주세요");
				return false;
			}
			$('#modal').css('display', 'none');
			$('#modal_open').css('display', 'none');
			$('#complete_reward').css('display', 'block');
			$('#documentSelect').text(document[document.length-1]);
			
		})
	})

	//삭제버튼 클릭 시 초기화
	$(function() {
				$("#delete").on(
						"click",
						function() {
							$('#modal_open').css('display', 'block');
							$('#first_page').css('display', 'block');
							$('#complete_reward').css('display', 'none');
							$('#second_page').css('display', 'none');
							$('#reward_type').css('display', 'none');
							$('#next').css('display', 'none');
							$('#complete').css({
								'pointer-events' : 'auto',
								'background-color' : '#00c4c4',
								'border-color' : '#00c4c4'
							});
							$("#ul_list").css('pointer-events', 'auto');
							$("#category_result").text(
									$("#category_basic").val()).css('color',
									'gray');
							$("input:radio[value=2P01]").prop('checked', false)
							$("input:radio[value=2P02]").prop('checked', false)
							$("input:radio[value=2P03]").prop('checked', false)

						})
			})
	//저장하기 클릭시 서류 확인 후 정보저장	
				$(function() {
					$('#save').click(function(){
						var formData = new FormData();
						var identity = $('#project_identity')[0].files;
						var documents = $('#documents')[0].files;
						 formData.append('identity', identity[0]);
						 formData.append('documents', documents[0]);
						 var target = parseInt($("#project_target").val(), 10);
						 if($('#project_type').val() == 0){
							 alert("프로젝트 유형을 확인해주세요");
							 console.log(target)
							 return false;	
						 } else if(target < 500000 || target > 10000000 || isNaN(target)){							 					 
							 alert("목표금액을 50만원 이상 1천만원 미만으로 설정해 주세요");
							 return false;
							 
						 } else if($("#project_introduce").val() == ""){
							 alert("프로젝트 소개글을 작성해주세요");
							 return false;
							 
						 } else if(identity[0] == undefined || documents[0] == undefined){
							 alert("신분증 또는 필수서류를 확인해주세요");
							 return false;
						 } 
							$.ajax({
								type: "post",
								url: "projectInfoFileUpdate?project_idx=" + ${param.project_idx},
								processData: false,
					          	contentType: false,
								data: formData,
									success: function() {
										$.ajax({
											type: "post",
											url: "projectInfoUpdate",
											data: { 
												project_idx: ${param.project_idx},
												project_category: $("#project_category").val(),
												project_introduce: $("#project_introduce").val(),
												project_type: $("#project_type").val(),
												project_target: $("#project_target").val(),
												project_reward_category: $("#project_reward_category").val(),
												project_reward_produce_type: $("#project_reward_produce_type").val()
											},
											success: function() {
												location.href = "main?project_idx=" + ${param.project_idx};
											}
										});
									}
							})
						})
					});

</script>

<!-- 불필요한 CSS들 -->
<!-- <link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/9.2112a1bf.chunk.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/19.b3b957fa.chunk.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/2.e6f58385.chunk.css"> -->

</head>
<input type="hidden" id="project_reward_produce_type">
<input type="hidden" id="project_reward_category">
<body class="ReactModal__Body--open" aria-hidden="true">
	<div data-react-modal-body-trap="" tabindex="0"
		style="position: absolute; opacity: 0;"></div>
	<noscript>You need to enable JavaScript to run this app.</noscript>
	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<div class="AppLayout_main__14bCi">
				<jsp:include page="../inc/create_project_side.jsp"></jsp:include>
				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<div id="container" class="ContentsLayout_container__11k-W">
						<div>
							<ol class="Breadcrumb_container__3YjD4">
								<li class="Breadcrumb_item__2r9Ym">프로젝트 관리</li>
								<li class="Breadcrumb_item__2r9Ym">프로젝트 정보</li>
							</ol>
							<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
							<nav class="DetailNavbar_container__3SkEf">
								<jsp:include page="../inc/project_top.jsp"></jsp:include>
							</nav>
							<div class="HeaderLayout_container__3fXkO">
								<div class="HeaderLayout_contents__F4hlC">
									<h2 class="ProjectTypeFormContainer_title__3Zn37">프로젝트 정보</h2>
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
							<form class="ProjectTypeFormContainer_form__3kGVN">
								<input type="hidden" value="0" id="project_type">
								<section class="Section_container__3md8M spacing-9"
									style="max-width: 630px;">
									<div style="" class="Section_header__1qwS7 spacing-4">
										<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
											카테고리
											<div>
												<button type="button" class="Tooltip_button__26Zz0"
													aria-describedby="Tooltip_6">
													<span class="Tooltip_label__1s0-R"></span><span
														class="Tooltip_helpIconWrap__3JEtO"><svg
															viewBox="0 0 40 40" focusable="false" role="presentation"
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
										</h2>
										<div class="Section_guide__2xeJO"></div>
									</div>
									<div class="Section_content__3OkLZ">
										<div class="select-menu">
											<div class=" css-2b097c-container" id="category">
												<span aria-live="polite" aria-atomic="false"
													aria-relevant="additions text" class="css-7pg0cj-a11yText"></span>

												<div class="d-flex justify-content-center">
													<select
														style="width: 100%; height: 45px; font-size: 12pt; font-family: roboto"
														class="select-menu__value-container select-menu__value-container--has-value css-1hwfws3"
														name="project_category" id="project_category">
														<option value="테크/가전">테크/가전</option>
														<option value="패션/잡화">패션/잡화</option>
														<option value="홈/리빙">홈/리빙</option>
														<option value="뷰티">뷰티</option>
														<option value="푸드">푸드</option>
														<option value="출판">출판</option>
														<option value="클래스/컨설팅">클래스/컨설팅</option>
														<option value="래저/아웃도어">래저/아웃도어</option>
														<option value="스포츠/모빌리티">스포츠/모빌리티</option>
														<option value="컬쳐/아티스트">컬쳐/아티스트</option>
														<option value="캐릭터/굿즈">캐릭터/굿즈</option>
														<option value="베이비/키즈">베이비/키즈</option>
														<option value="게임/취미">게임/취미</option>
														<option value="여행/숙박">여행/숙박</option>
														<option value="기부/캠페인">기부/캠페인</option>
														<option value="후원">후원</option>
														<option value="모임">모임</option>
													</select>
												</div>
											</div>
										</div>
								</section>
								<section
									class="Section_container__3md8M ClassificationField_container__3Jk9- spacing-5"
									style="max-width: 630px;">
									<div style="" class="Section_header__1qwS7 spacing-4">
										<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
											프로젝트 유형
											<div>
												<button type="button" class="Tooltip_button__26Zz0"
													aria-describedby="Tooltip_8">
													<span class="Tooltip_label__1s0-R"></span><span
														class="Tooltip_helpIconWrap__3JEtO"><svg
															viewBox="0 0 40 40" focusable="false" role="presentation"
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
										</h2>
										<div class="Section_guide__2xeJO">
											<div class="Section_helperMessage__3V6GQ">
												<a class="link"
													href="https://www.wadiz.kr/link/service_guide1"
													target="_blank" rel="nofollow noopener noreferrer"
													data-ga-category="펀딩·프리오더_통합_가이드" data-ga-action="클릭">펀딩·프리오더
													통합 가이드<svg viewBox="0 0 40 40" focusable="false"
														role="presentation"
														class="withIcon_icon__3lrgp withIcon_inline__3A3d_ icon"
														aria-hidden="true" style="width: 14px; height: 14px;">
														<path
															d="M31.42 35.84h-27V8.4h14.76v-2H2.42v31.44h31V22.55h-2v13.29z"></path>
														<path
															d="M37.32 15.41l-.01-13-12.99.01v2l9.72-.01-18.19 19.42 1.46 1.37 18-19.22.01 9.43h2z"></path></svg>
												</a>
											</div>
										</div>
									</div>
									<div class="Section_content__3OkLZ">
										<div class="Radios_box__3GDo6 spacing-5">
											<label for="FUNDING"
												class="Radio_radio__3reB4 Radio_lg__1w7t8 Radio_labeled__3Z_NE Radios_label__1Wcpl"><input
												type="radio" id="FUNDING" value="FUNDING"><span
												class="Radio_icon__twaSu"></span><span
												class="Radio_label__C-Uvs"><span
													class="Radios_labelContent__3ueO3"><strong
														class="Radios_catogory__1-L3j">펀딩</strong>첫 출시예요.<span
														class="Badge_container__3mdFR Badge_visible__2c54z Radios_badge__2FN4r"><span
															class="Badge_badge__zKi0D Badge_label__2iNzD Badge_md__YzReR Badge_primary__3jwLR Badge_tertiary__-ciUe">💰
																프로젝트 성공 시 바로 정산받을 수 있어요</span></span></span><span
													class="Radios_moreInfo__2mm0t"></span></span></label><label
												for="PREORDER"
												class="Radio_radio__3reB4 Radio_lg__1w7t8 Radio_labeled__3Z_NE Radios_label__1Wcpl"><input
												type="radio" id="PREORDER" value="PREORDER"><span
												class="Radio_icon__twaSu"></span><span
												class="Radio_label__C-Uvs"><span
													class="Radios_labelContent__3ueO3"><strong
														class="Radios_catogory__1-L3j">공동구매</strong>공동구매임당~!~!~!~!</span><span
													class="Radios_moreInfo__2mm0t"></span></span></label>
										</div>
									</div>

									<div class="Introduction_container__IWGM7">
										<div class="Introduction_title__3u8a4">프로젝트 소개</div>
										<div class="Introduction_desc__1AfNb">
											준비하고 계신 리워드의 특별한 점을 작성해 주세요.<br>기존 제품 ・ 서비스 ・ 콘텐츠를 개선했다면
											어떤 점이 달라졌는지 작성해 주세요.
										</div>
										<div class="Introduction_box__2MDXY">
											<div
												class="TextField_textField__23rCe TextField_sm__lHdDB Introduction_campaignFeature__2omWC">
												<label></label>
												<div class="TextField_field__1E9vt">
													<textarea id="project_introduce"
														placeholder="·OOO한 내용을 기획/개발해 와디즈에서 최초 공개 하고자 합니다. ·우리집 아이가 OO 소재의 이불을 좋아하는 모습을 보고, OO 소재로 만들어진 인형을 만들게 되었습니다. ·우리 회사에서 판매하고 있는 기존 모델에 OO 기능을 추가하였습니다."
														maxlength="500" rows="2"
														class="Textarea_textarea__2swOj Textarea_sm__L3hnj"
														style="height: 378px;"></textarea>
												</div>
											</div>
										</div>
									</div>

								</section>
								<div class="ClassificationField_container__3Jk9- spacing-9">
									<section
										class="Section_container__3md8M Field_makerTypeContainer__fmVot spacing-8"
										style="max-width: 630px;">
										<div class="Section_header__1qwS7 spacing-4">
											<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
												메이커 유형
												<div>
													<button type="button" class="Tooltip_button__26Zz0"
														aria-describedby="Tooltip_3">
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
											</h2>
											<div class="Section_guide__2xeJO"></div>
										</div>
										<div class="Section_content__3OkLZ">
											<div class="ToggleButton_flex__IlXuC">
												<button
													class="Button_button__1e2A2 Button_primary__PxOJr Button_lg__3vRQD ToggleButton_box__3U0gi"
													type="button">
													<span><span class="Button_children__q9VCZ">개인</span></span>
												</button>
											</div>
										</div>
									</section>
									<section class="Section_container__3md8M spacing-5"
										style="max-width: 630px;">
										<h3 class="Section_subtitle__2Ydca">신분증</h3>
										<div class="Section_description__10Uwo">
											<p>대표자 확인을 위해 신분증 사본을 업로드해 주세요.</p>
											<ul>
												<li>주민등록번호 뒷자리는 노출되지 않도록 가려 주세요.</li>
												<li>JPG, JPEG, PNG, PDF / 10MB 이하 파일 업로드 가능</li>
											</ul>
										</div>
										<div class="Section_content__3OkLZ">
											<div class="FileUpload_container__3FuFH container">
												<input type="file" id="project_identity" name="file" accept=".jpg, .jpeg, .png, .pdf"/>
											</div>
										</div>
									</section>
								</div>
								<section class="Section_container__3md8M spacing-9"
									style="max-width: 630px;">
									<div class="Section_header__1qwS7 spacing-4">
										<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
											심사 서류
											<div>
												<button type="button" class="Tooltip_button__26Zz0"
													aria-describedby="Tooltip_4">
													<span class="Tooltip_label__1s0-R"></span><span
														class="Tooltip_helpIconWrap__3JEtO"><svg
															viewBox="0 0 40 40" focusable="false" role="presentation"
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
										</h2>
										<div class="Section_guide__2xeJO"></div>
									</div>
									<div class="Section_content__3OkLZ">
										<p class="RewardItemsField_desc__33Ija">리워드 관련 서류 제출이
											필요해요.</p>
										<button
											class="RewardItemAddButton_addBox__3Ycf1 RewardItemAddButton_isActive__AEPbM"
											type="button" id="modal_open">
											<div>
												<svg viewBox="0 0 32 32" focusable="false"
													role="presentation"
													class="withIcon_icon__3lrgp RewardItemAddButton_icon__lx90x"
													aria-hidden="true" style="width: 40px; height: 40px;">
													<path
														d="M16 1.6C8.047 1.6 1.6 8.047 1.6 16S8.047 30.4 16 30.4 30.4 23.953 30.4 16 23.953 1.6 16 1.6zm8 15.2h-7.2V24h-1.6v-7.2H8v-1.6h7.2V8h1.6v7.2H24z"></path></svg>
												<p>리워드 선택 후 서류를 추가해 주세요.</p>
											</div>
										</button>
										<li style="display: none" id="complete_reward"
											class="FundingScreeningAttachmentItem_container__ec2HN FundingScreeningAttachmentItem_errorContainer__14mCt"><div
												class="FundingScreeningAttachmentItem_wrap__K6kUY">
												<div class="FundingScreeningAttachmentItem_title__sQoj-">리워드
													종류</div>
												<div id="typeSelect"></div>
											</div>
											<div class="FundingScreeningAttachmentItem_wrap__K6kUY">
												<div class="FundingScreeningAttachmentItem_title__sQoj-">리워드
													제작 형태</div>
												<div id="makerSelect"></div>
											</div>
											<div class="FundingScreeningAttachmentItem_wrap__K6kUY">
												<div class="FundingScreeningAttachmentItem_title__sQoj-">필수
													서류 제출</div>
													<div id="documentSelect"></div>
											</div>

											<div class="FundingScreeningAttachmentItem_btnWrap__1ixFm">

												<button class="Button_button__1e2A2 Button_sm__dnvmq"
													id="delete" type="button">
													<span><span class="Button_children__q9VCZ"><svg
																viewBox="0 0 40 40" focusable="false"
																role="presentation" class="withIcon_icon__3lrgp"
																aria-hidden="true">
																<path
																	d="M36.67 5.31H3.33v2h2.82v31.88h27.7V7.31h2.82zm-4.82 31.88H8.15V7.31h23.7zM15 .81h10v2H15z"></path>
																<path d="M14.75 15.18h2v15h-2zm8.5 0h2v15h-2z"></path></svg>삭제</span></span>
												</button>
											</div></li>
									</div>
								</section>
								<section class="Section_container__3md8M">
									<div style="max-width: 630px;">
										<div class="Section_header__1qwS7">
											<h2 class="Section_title__ikPIm">목표 금액</h2>
											<div class="Section_guide__2xeJO"></div>
										</div>
										<div class="Section_description__10Uwo">
											<p>50만 원 이상 1천만 원 미만으로 설정해 주세요.</p>
											<p>개인 후원 프로젝트는 기부금품 법에 따라 한 해에 1천만 원 미만까지 후원 받을 수 있어요.</p>
										</div>
										<div class="Section_content__3OkLZ">
											<div
												class="TextField_textField__23rCe TextField_md__2zsQn TextField_right__1qt_G">
												<label></label>
												<div class="TextField_field__1E9vt">
													<input placeholder="목표 금액을 입력해 주세요." type="text"
														id="project_target"
														class="Input_input__2kAAL Input_md__3-eZ6"
														aria-invalid="false" value=""><span
														class="TextField_fixedText__2vIuK TextField_endText__3jIeG">원</span>
												</div>
											</div>
										</div>
									</div>
									<div class="Section_guideMessage__3XqrM">
										<h4>
											<a href="https://www.wadiz.kr/link/goal" target="blank"
												rel="nofollow noopener noreferrer"><strong>목표
													금액은 너무 낮거나 높지 않게</strong></a>
										</h4>
										<p>리워드 제작비, 배송비, 인건비, 운영비 등을 고려해 금액을 설정해 주세요.</p>
										<p>프로젝트의 성공 여부를 결정짓는 중요한 요소이니 신중하게 고민해 주세요.</p>
									</div>
								</section>
								<!-- 저장하기 버튼 -->
								<div class="ProjectTypeFormContainer_buttonWrapper__3fh_J">
									<input type="button" style="width: 420px; max-width: 100%;"
										id="save" name="savePlan" value="저장하기"
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
										<h3 class="ModalLayout_title__2qKim">심사 서류</h3>
										<button type="button"
											class="wz button less icon dense ModalLayout_closeButton__3XepS"
											id="modal_close"
											onclick="location.href='screening?project_idx=' + ${param.project_idx}">
											<svg viewBox="0 0 40 40" focusable="false"
												role="presentation" class="withIcon_icon__3lrgp"
												aria-hidden="true">
												<path
													d="M33.4 8L32 6.6l-12 12-12-12L6.6 8l12 12-12 12L8 33.4l12-12 12 12 1.4-1.4-12-12 12-12z"></path></svg>
										</button>
										<div id="ModalLayout_Contents"
											class="ModalLayout_modalWrapContents__1TI5w">

											<div class="CreateRewardItemModal_container__17oYn"
												id="first_page">
												<p class="CreateRewardItemModal_description__3WrUq">마지막에
													[등록]을 눌러야 리워드가 정상 등록돼요.</p>
												<h4 class="CreateRewardItemModal_pageTitle__128Er">
													<span>리워드 종류</span><a
														href="https://makercenter.wadiz.kr/board/basic/245"
														class="CreateRewardItemModal_link__1JDi7" target="_blank"
														rel="noopener noreferrer">가이드 안내 보기</a>
												</h4>
												<div class="FundingScreeningCategoryGroup_radioGroup__1lgFw">
													<input type="radio" name="btnradio" id="categorySelect"
														value="select" checked=""><label
														for="categorySearch">카테고리 선택</label>

												</div>
												<!-- 		카테고리 선택 -->
												<div id="category_select" style="display: block">
													<div
														class="FundingScreeningRewardCategorySelect_selectedCategories__1Xh6Z">

														<span
															class="FundingScreeningRewardCategorySelect_none__2at-g"
															id="category_result">카테고리를 선택해 주세요</span> <input
															id="category_basic"
															class="FundingScreeningRewardCategorySelect_none__2at-g"
															type="hidden" value="카테고리를 선택해 주세요">

														<button
															class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_sm__dnvmq"
															type="button" id="complete">
															<span><span class="Button_children__q9VCZ">완료</span></span>
														</button>
													</div>
													<div
														class="FundingScreeningRewardCategorySelect_categoryList__1qMyG">
														<ul id="ul_list"
															class="FundingScreeningRewardCategories_desktopCategories__MVKT4">
															<li><button class="" type="button" data-index="0"
																	data-code="64" data-blocked="false" value="가구/인테리어">
																	가구/인테리어
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="1"
																	data-code="66" data-blocked="false" value="도서">
																	도서
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="2"
																	data-code="67" data-blocked="false" value="디지털/가전">
																	디지털/가전
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="3"
																	data-code="68" data-blocked="false" value="출산/육아">
																	출산 / 육아
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="4"
																	data-code="69" data-blocked="false" value="여가/생활편의">
																	여가/생활편의
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="5"
																	data-code="6A" data-blocked="false" value="생활/건강">
																	생활/건강
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="6"
																	data-code="6B" data-blocked="false" value="패션의류">
																	패션의류
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="7"
																	data-code="6C" data-blocked="false" value="패션잡화">
																	패션잡화
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="8"
																	data-code="6D" data-blocked="false" value="화장품/미용">
																	화장품/미용
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="9"
																	data-code="6E" data-blocked="false" value="스포츠/레저">
																	스포츠/레저
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="10"
																	data-code="6F" data-blocked="false" value="식품">
																	식품
																	<svg viewBox="0 0 40 40" focusable="false"
																		role="presentation" class="withIcon_icon__3lrgp"
																		aria-hidden="true">
																	<path
																			d="M28 20L15 33l-1.4-1.4L25.2 20 13.6 8.4 15 7l13 13z"></path></svg>
																</button></li>
															<li><button class="" type="button" data-index="11"
																	data-code="65" data-blocked="false" value="원하는 리워드 없음">원하는
																	리워드 없음</button></li>
														</ul>
													</div>
													<div color="basic"
														class="MessageBox_messageBox__3acWS MessageBox_basic__2vbop MessageBox_vertical__1mezf">
														<span><svg viewBox="0 0 40 40" focusable="false"
																role="presentation"
																class="withIcon_icon__1Oal1 MessageBox_icon__31KWI MessageBox_withoutTitle__2S2r8"
																aria-hidden="true">
															<path fill="none" d="M0 0h40v40H0z"></path>
															<path
																	d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z"></path></svg></span>
														<div class="MessageBox_content__3db50">
															<div class="MessageBox_description__1bCQv">
																<ul>
																	<li>반드시 본인의 리워드 종류에 맞는 카테고리를 선택한 후, '완료' 버튼을 눌러
																		주세요.</li>
																	<li>해당하는 리워드 종류가 없을 경우, '원하는 리워드 없음'을 클릭하고 다음 선택을
																		진행해 주세요.</li>
																	<li>리워드에 맞는 종류가 없거나 중요 서류 안내가 누락되었다면 오른쪽 하단 고객센터
																		채팅 상담에 남겨 주세요.<br>(프로젝트 번호, 내용을 기재해 주시면 보다 빠른 응대가
																		가능해요.)
																	</li>
																</ul>
															</div>
														</div>
													</div>

													<!-- 리워드 제작 형태 -->
													<div
														class="FundingScreeningProductStyleForm_container__3wlQa"
														id="reward_type" style="display: none">
														<h4
															class="FundingScreeningProductStyleForm_pageTitle__3mVla">리워드
															제작 형태</h4>
														<div class="FundingScreeningProductStyleForm_box__1zcr4">
															<label for="2P01" id="direct"
																class="Radio_radio__3reB4 Radio_sm__2LIbL Radio_labeled__3Z_NE"><input
																type="radio" id="2P01" value="2P01"><span
																class="Radio_icon__twaSu"></span><span
																class="Radio_label__C-Uvs"><div
																		class="FundingScreeningProductStyleForm_title__32DKG">직접
																		제조</div>
																	<div
																		class="FundingScreeningProductStyleForm_desc__3qrkp">기획과
																		개발, 생산까지 모든 과정을 직접 해요.</div></span></label>
														</div>
														<div class="FundingScreeningProductStyleForm_box__1zcr4">
															<label for="2P02" id="consignment"
																class="Radio_radio__3reB4 Radio_sm__2LIbL Radio_labeled__3Z_NE"><input
																type="radio" id="2P02" value="2P02"><span
																class="Radio_icon__twaSu"></span><span
																class="Radio_label__C-Uvs"><div
																		class="FundingScreeningProductStyleForm_title__32DKG">위탁
																		제조</div>
																	<div
																		class="FundingScreeningProductStyleForm_desc__3qrkp">기획과
																		개발까지 직접 하고 제 3자인 위탁 생산 업체가 생산해요.</div></span></label>
														</div>
														<div class="FundingScreeningProductStyleForm_box__1zcr4">
															<label for="2P03" id="ODM"
																class="Radio_radio__3reB4 Radio_sm__2LIbL Radio_labeled__3Z_NE"><input
																type="radio" id="2P03" value="2P03"><span
																class="Radio_icon__twaSu"></span><span
																class="Radio_label__C-Uvs"><div
																		class="FundingScreeningProductStyleForm_title__32DKG">ODM</div>
																	<div
																		class="FundingScreeningProductStyleForm_desc__3qrkp">국내외
																		제조업체에서 개발한 제품의 일부를 유의미하게 개선이나 변경해 위탁 생산을 의뢰했어요.</div></span></label>
														</div>
													</div>
												</div>

												<button
													class="Button_button__1e2A2 Button_lg__3vRQD Button_disabled__3x0Tg CreateRewardItemModal_nextButton__1plbg"
													style="display: block" id="next_hidden" type="button"
													disabled="">
													<span><span class="Button_children__q9VCZ">다음</span></span>
												</button>

												<button
													class="Button_button__1e2A2 Button_lg__3vRQD CreateRewardItemModal_nextButton__1plbg"
													style="display: none" id="next" type="button">
													<span><span class="Button_children__q9VCZ">다음</span></span>
												</button>

											</div>
											<!-- 												두번째 심사서류 모달 -->
											<div style="display: none" id="second_page"
												class="FundingScreeningAttachmentReqiuredFileUploadForm_container__2EW6p">
												<label
													class="wz label FundingScreeningAttachmentReqiuredFileUploadForm_label__3al0O Label_label__3oH0h"><strong>[필수
														서류]</strong> 리워드의 종류와 제작 형태에 따라 꼭 필요한 필수 서류를 업로드해 주세요.<br>
													<ol>
														<li>서류 제출 가이드를 먼저 확인해 주세요.</li>
														<li>메이커의 리워드와 가장 유사한 '리워드 종류'에서 요청하는 필수 서류들을 제출하면
															담당자가 확인해요.</li>
													</ol></label>
												<p
													class="FundingScreeningAttachmentReqiuredFileUploadForm_notice__uS5Qi">
													메이커의 유형과 업력, 리워드의 종류 및 제작 일정과 방식에 따라 일부 서류 제출이 면제될 수 있습니다.
													<br>
												</p>
												<table
													class="FundingScreeningAttachmentRequirementChecksTable_table__29nwj">
													<tbody></tbody>
												</table>
												<div
													class="FundingScreeningAttachmentFileUploadTable_tableContainer__3YIxA">
													<table
														class="FundingScreeningAttachmentFileUploadTable_table__ZqTFf">
														<thead>
															<tr>
																<th>구분</th>
																<th colspan="2">서류</th>
															</tr>
														</thead>
														<tbody>
															<tr>
																<td><p
																		class="FundingScreeningAttachmentFileUploadTable_columnName__3ByJO">자체
																		제작</p>
																	<button
																		class="Button_button__1e2A2 Button_sm__dnvmq FundingScreeningAttachmentFileUploadTable_example__3mxhR"
																		type="button">
																		<span><span class="Button_children__q9VCZ">예시
																				보기</span></span>
																	</button></td>
																<td
																	class="FundingScreeningAttachmentFileUploadTable_columnValue__qGl3Q"></td>
																<td
																	class="FundingScreeningAttachmentFileUploadTable_buttonColumn__1h796">																	
																	<input type="file" name="files" id="documents"
																	accept="image/*, .pdf, .zip, .xlsx, .hwp" multiple=""></td>
															</tr>
														</tbody>
													</table>
												</div>
												<button
													class="Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD"
													type="button" style="width: 100%" id="registration">
													<span><span class="Button_children__q9VCZ">등록</span></span>
												</button>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>