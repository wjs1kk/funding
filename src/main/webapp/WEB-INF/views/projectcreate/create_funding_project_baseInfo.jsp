<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html lang="ko" class="">

<head>
	<title>와디즈 프로젝트만들기 기본정보</title>

<link
	href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css"
	rel="stylesheet">
<link
	href="https://static.wadiz.kr/studio/funding/static/css/main.092b721b.chunk.css"
	rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/studio/funding/static/css/9.2112a1bf.chunk.css">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/studio/funding/static/css/18.725773c4.chunk.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<!-- 데이트피커를 위한 라이브러리 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- 데이트피커를 위한 라이브러리 -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">

	$(function() {
		$("#project_adult").on("click", function() {
			if($('#project_adult').is(':checked')){			
				$('#project_adult').val(1);
			}else{
				$('#project_adult').val(0);			
			}
		})
	})

	$(function() {
		$('#project_adult').val(0);
		$('#save').click(function(){
			var formData = new FormData();
			var files = $('#project_thumbnail')[0].files;
			 formData.append('files', files[0]);
			 if(files[0] == undefined){
				 alert("대표 이미지를 확인해주세요");
				 return false;
			 } else if($("#project_title").val() == ""){
				 alert("프로젝트 제목을 확인해주세요");
				 return false;
			 }
				$.ajax({
					type: "post",
					url: "projectBaseInfoFileUpdate?project_idx=" + ${param.project_idx},
					processData: false,
		          	contentType: false,
					data: formData,
					success: function() {
						$.ajax({
							type: "post",
							url: "projectBaseInfoUpdate",
							data:{
								project_idx: ${param.project_idx},
								project_title: $("#project_title").val(),
								project_end_date: $("#project_end_date").val(),
								project_adult: $("#project_adult").val()
							},
							success: function() {
								location.href = "main?project_idx=" + ${param.project_idx};
							}
						})
					}
				});
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
							<li class="Breadcrumb_item__2r9Ym">기본 정보</li>
						</ol>
						<div class="Page_title__1tce_" role="heading" aria-level="2">기본
							정보</div>
						<div class="Page_description__VzZod">프로젝트를 대표하는 중요한 정보들을 입력해
							주세요.</div>
						<div class="Page_guide__3JgBF">
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
						</div>
						<div class="Page_content__1d0Vb">
							<section class="Section_container__3md8M spacing-9" style="">
								<div style="max-width: 630px;">
									<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
										프로젝트 제목
										<div>
											<button type="button" class="Tooltip_button__26Zz0"
												aria-describedby="Tooltip_1">
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
									<div class="Section_header__1qwS7 spacing-4">
										<h2 class="Section_title__ikPIm Section_isRequired__F8rij">프로젝트
											제목</h2>
										<div class="Section_guide__2xeJO"></div>
									</div>
									<div class="Section_content__3OkLZ">
										<div class="TextField_textField__23rCe TextField_md__2zsQn">
											<label></label>
											<div class="TextField_field__1E9vt">
												<input placeholder="제목을 입력해 주세요" maxlength="40" type="text"
													class="Input_input__2kAAL Input_md__3-eZ6"
													id="project_title"
													aria-invalid="false" value="">
											</div>
										</div>
									</div>
								</div>
								<div class="Section_guideMessage__3XqrM">
									<h4>프로젝트 제목은 핵심을 간결하게</h4>
									<p>리워드의 장점과 특징이 잘 드러나는 키워드를 한 가지 이상 포함해 주세요.</p>
									<p>중요한 키워드는 눈에 잘 띄도록 제목 앞부분에 적는 것을 추천해요.</p>
									<p>
										예시)<br>바지걸이+옷걸이가 하나로! 옷 정리에 1초만 투자하자<br>[8만 원대 국민
										무스탕] 가죽으로 26억 펀딩받은 비결?<br>[와디즈 한정] 광화문, 블록으로 재탄생하다!
									</p>
								</div>
							</section>
							<section class="Section_container__3md8M spacing-9"
								style="max-width: 630px;">
								<div style="" class="Section_header__1qwS7">
									<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
										대표 이미지
										<div>
											<button type="button" class="Tooltip_button__26Zz0"
												aria-describedby="Tooltip_2">
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
								<div class="Section_description__10Uwo">
									<ul>
										<li>3MB 이하의 JPG, JPEG, PNG 파일</li>
										<li>해상도 1200x675 픽셀 이상</li>
										<li>텍스트나 로고는 넣을 수 없어요.</li>
									</ul>
								</div>
								<div class="Section_content__3OkLZ">
											<div class="FileUpload_container__3FuFH container">
												<input type="file" id="project_thumbnail" name="file" />
											</div>
										</div>
							</section>
							<section class="Section_container__3md8M spacing-9"
								style="max-width: 630px;">
								<div class="Section_header__1qwS7" style="">
									<h2 class="Section_title__ikPIm Section_isRequired__F8rij">
										프로젝트 종료일
										<div>
											<button type="button" class="Tooltip_button__26Zz0"
												aria-describedby="Tooltip_3">
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
								<div class="Section_description__10Uwo">프로젝트 심사부터 리워드 제작
									기간 등 전체 일정을 고려해 설정해 주세요.</div>
								<div class="Section_content__3OkLZ">
									<div>
										<div color="basic"
											class="MessageBox_messageBox__3acWS MessageBox_basic__2vbop spacing-3">
											<span><svg viewBox="0 0 40 40" focusable="false"
													role="presentation"
													class="withIcon_icon__1Oal1 MessageBox_icon__31KWI MessageBox_withoutTitle__2S2r8"
													aria-hidden="true">
													<path fill="none" d="M0 0h40v40H0z"></path>
													<path
														d="M20 1a19 19 0 1 0 19 19A19.06 19.06 0 0 0 20 1zm1 28.6h-2v-13h2zm-1-15.84A1.8 1.8 0 1 1 21.8 12a1.8 1.8 0 0 1-1.8 1.76z"></path></svg></span>
											<div class="MessageBox_content__3db50">
												<div class="MessageBox_description__1bCQv">리워드 발송은
													프로젝트 종료 후 결제까지 완료된 다음에 시작할 수 있어요.</div>
											</div>
										</div>
										
										<div class="DateField_container__2FQ6X">
											<div class="ant-picker css-57nriz date-picker"
												style="width: 100%;">
												<div class="ant-picker-input">

													<input type="text" id="project_end_date" name="project_end_date" placeholder="여기">
													<script>
													   $(function() {
													       //input을 datepicker로 선언
													       $("#project_end_date").datepicker({
													           dateFormat: 'yy-mm-dd' //달력 날짜 형태
													           ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
													           ,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
													           ,changeYear: true //option값 년 선택 가능
													           ,changeMonth: true //option값  월 선택 가능                
													           ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
													           ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
													           ,buttonImageOnly: true //버튼 이미지만 깔끔하게 보이게함
													           ,buttonText: "선택" //버튼 호버 텍스트              
													           ,yearSuffix: "년" //달력의 년도 부분 뒤 텍스트
													           ,monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 텍스트
													           ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip
													           ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 텍스트
													           ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 Tooltip
													           ,minDate: "+5d" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
													           ,maxDate: "+5y" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
													       });                    
													       
													       //초기값을 오늘 날짜로 설정해줘야 합니다.
													       $('#project_end_date').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
													   });
													</script>
												</div>
											</div>
										</div>
										
										
									</div>
								</div>
							</section>
							
							<section class="Section_container__3md8M spacing-9"
								style="max-width: 630px;">
								<div class="Section_header__1qwS7">
									<h2 class="Section_title__ikPIm Section_isOptional__DtcQ8">🚫
										성인 인증</h2>
									<div class="Section_guide__2xeJO"></div>
								</div>
								<div class="Section_description__10Uwo">19세 이상만 사용할 수 있는
									리워드인 경우 체크해 주세요. 체크 시 성인 인증을 완료한 서포터만 해당 프로젝트에 참여할 수 있어요.</div>
								<div class="Section_content__3OkLZ">
									<div class="CheckboxField_container__1FHmG">
										<label
											class="Checkbox_checkbox__27KzI Checkbox_md__28FjK Checkbox_labeled__uRUNZ">
											<input type="checkbox" id="project_adult" class="Checkbox_input__304VX"><span
											class="Checkbox_icon__3gYsg" aria-hidden="true"><svg
													viewBox="0 0 16 2" focusable="false" role="presentation"
													class="withIcon_icon__1Oal1 Checkbox_removeIcon__3mPDx"
													aria-hidden="true">
													<path fill-rule="evenodd" d="M0 0h16v2H0z"></path></svg>
												<svg viewBox="0 0 48 48" focusable="false"
													role="presentation"
													class="withIcon_icon__1Oal1 Checkbox_checkIcon__165W2"
													aria-hidden="true">
													<path
														d="M18 39.6L4.8 26.4l3.36-3.36L18 32.76l21.84-21.72 3.36 3.36z"></path></svg></span><span
											class="Checkbox_content__3WSlM"><span>19세 이상 참여
													가능한 리워드예요.</span></span></label>
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

</body>
</html>