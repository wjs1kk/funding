<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/11.e00806b3.chunk.css">
<link href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css" rel="stylesheet">
<link href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css" rel="stylesheet">

</head>
<body class="ReactModal__Body--open" aria-hidden="true">
	<div id="root">
		<div id="AppLayout_Container" class="AppLayout_container__3zbzb">
			<div class="AppLayout_main__14bCi">
				<jsp:include page="../inc/create_project_side.jsp"></jsp:include>
				<div id="AppLayout_Contents" class="AppLayout_contents__wv3DF">
					<div id="container" class="ContentsLayout_container__11k-W">
						<div>
							<ol class="Breadcrumb_container__3YjD4">
								<li class="Breadcrumb_item__2r9Ym">프로젝트 관리</li>
								<li class="Breadcrumb_item__2r9Ym">메이커 정보</li>
							</ol>
							<!-- 05-17 김동욱 모든 프로젝트 페이지 상단탭 project_top.jsp include로 변경 -->
							<nav class="DetailNavbar_container__3SkEf">
								<jsp:include page="../inc/project_top.jsp"></jsp:include>
							</nav>
							<div class="HeaderLayout_container__3fXkO">
								<div class="HeaderLayout_contents__F4hlC">
									<h2 class="MakerInfoFormContainer_title__2_urf">메이커 정보</h2>
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
							<div class="MouseOverGuide_container__3jDBz">
								<div class="MouseOverGuide_contents__APrXG"></div>
								<div class="MouseOverGuide_guideWrapper__28wbb">
									<div
										class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
										<h5 class="MouseOverGuide_title__1sJjC"></h5>
										<div class="MouseOverGuide_content__I9HrE"></div>
									</div>
								</div>
							</div>
							<form class="wz form">
								<div class="MakerInfoWrapper_container__VyCZ5">
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="MakerInfoInputField_container__4b8t-">
												<div class="TextField_textField__23rCe TextField_md__2zsQn">
													<label><div>
															<div class="ToolTipMobile_toolTipContainer__2tYPd">
																<div
																	class="ToolTipMobile_label__1dBSo ToolTipMobile_required__3WiIn">메이커명</div>
															</div>
															<p class="MakerInfoInputField_desc__1La-Q">법인 사업자는
																법인등기부상 법인명 / 개인 사업자는 주민등록상 성명 또는 상호 / 개인은 주민등록상 성명을 입력해
																주세요.</p>
														</div></label>
													<div class="TextField_field__1E9vt">
														<input name="makerName" placeholder="메이커명 입력"
															maxlength="64" type="text"
															class="Input_input__2kAAL Input_md__3-eZ6"
															aria-invalid="false">
													</div>
													<em class="HelperMessage_helperMessage__1qZPy">61자 남음</em>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div
												class="MouseOverGuide_guide__13NEZ MouseOverGuide_isEmpty__2pOmW">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE"></div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div
												class="field Form_field__35I9T required ImageFormField_field__X1jTW">
												<div class="ImageFormField_labelWrapper__2bUMF">
													<label class="wz label Label_label__3oH0h"><div
															class="ToolTipMobile_toolTipContainer__2tYPd">
															<div class="ToolTipMobile_label__1dBSo">
																<span
																	class="MakerProfileImageFieldContainer_label__1jYxl">메이커
																	프로필 이미지</span>
															</div>
															<div
																class="HelpFloating_wrap__6QNWy ToolTipMobile_helpFloating__fNzSX"
																style="font-size: 14px;">
																<button type="button" title="도움말 보기"
																	class="HelpFloating_button__2EATP"
																	style="font-size: 14px;">
																	<i class="icon help-o" aria-hidden="true"></i>
																</button>
																<div
																	class="HelpFloating_message__1c-6d HelpFloating_black__1v2uo"
																	style="min-width: 350px;">
																	<div data-role="title">사진으로 신뢰감을 주세요.</div>
																	브랜드 로고 또는 메이커 사진을 등록해 주세요. 서포터님들이 더 쉽게 메이커님을 알아볼 수 있어요.
																</div>
															</div>
														</div></label>
												</div>
												<div class="ImageFormField_buttonWrapper__su3pO">
													<label
														class="wz label ImageFileButton_label__3thB2 Label_label__3oH0h"><button
															type="button"
															class="wz button gray ImageFileButton_button__3gAHD">
															<i class="icon-camera-o" aria-hidden="true"></i>등록하기
														</button>
														<div class="wz input right ImageFileButton_input__1Dnch">
															<input accept="image/jpg,image/jpeg,image/png"
																name="uploadFile" placeholder="" type="file" value="">
														</div></label><em class="helper error"></em><em
														class="helper ImageFormField_helper__3XC5c">3MB 이하의
														JPG, JPEG, PNG 파일, 해상도 300x300 픽셀 이상</em>
												</div>
											</div>
											<input type="hidden" name="profileImageSeq">
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div class="MouseOverGuide_guide__13NEZ">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE">
													<div data-role="title">사진으로 신뢰감을 주세요.</div>
													브랜드 로고 또는 메이커 사진을 등록해 주세요. 서포터님들이 더 쉽게 메이커님을 알아볼 수 있어요.
												</div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="MakerJoinMemberField_wrapper__3IYAs">
												<lable class="MakerJoinMemberField_header__mgGUn">
												<div class="ToolTipMobile_toolTipContainer__2tYPd">
													<div class="ToolTipMobile_label__1dBSo">함께하는 멤버</div>
													<span class="ToolTipMobile_optional__LcH0a">(선택 사항)</span>
													<div
														class="HelpFloating_wrap__6QNWy ToolTipMobile_helpFloating__fNzSX"
														style="font-size: 14px;">
														<button type="button" title="도움말 보기"
															class="HelpFloating_button__2EATP"
															style="font-size: 14px;">
															<i class="icon help-o" aria-hidden="true"></i>
														</button>
														<div
															class="HelpFloating_message__1c-6d HelpFloating_black__1v2uo"
															style="min-width: 350px;">
															<div data-role="title">팀원을 소개해 주세요.</div>
															프로젝트를 함께 하는 팀원의 와디즈 계정을 등록해주시면, 메이커 정보에서 함께 확인할 수 있습니다.
														</div>
													</div>
												</div>
												</lable>
												<p class="MakerJoinMemberField_desc__1KP2a">와디즈 회원으로 가입된
													팀원이 있다면 함께 소개해 주세요. 서포터님들의 신뢰를 높일 수 있어요.</p>
												<div class="MakerJoinMemberField_container__2hVLl">
													<div class="MakerJoinMemberField_fieldWrapper__2nONB">
														<input name="memberItem" placeholder="멤버 이메일 입력"
															type="text" class="Input_input__2kAAL Input_md__3-eZ6"
															aria-invalid="false">
														<button type="button" disabled="" class="wz button gray">추가</button>
													</div>
													<input type="hidden" name="members" value="[]">
													<div class="MakerJoinMemberField_list__3ewh4"></div>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div class="MouseOverGuide_guide__13NEZ">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE">
													<div data-role="title">팀원을 소개해 주세요.</div>
													프로젝트를 함께 하는 팀원의 와디즈 계정을 등록해주시면, 메이커 정보에서 함께 확인할 수 있습니다.
												</div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="MakerInfoInputField_container__4b8t-">
												<div class="TextField_textField__23rCe TextField_md__2zsQn">
													<label><div>
															<div class="ToolTipMobile_toolTipContainer__2tYPd">
																<div
																	class="ToolTipMobile_label__1dBSo ToolTipMobile_required__3WiIn">문의
																	이메일</div>
																<div
																	class="HelpFloating_wrap__6QNWy ToolTipMobile_helpFloating__fNzSX"
																	style="font-size: 14px;">
																	<button type="button" title="도움말 보기"
																		class="HelpFloating_button__2EATP"
																		style="font-size: 14px;">
																		<i class="icon help-o" aria-hidden="true"></i>
																	</button>
																	<div
																		class="HelpFloating_message__1c-6d HelpFloating_black__1v2uo"
																		style="min-width: 350px;">
																		<div data-role="title">메이커님께 문의 이메일을 보내고 싶어요.</div>
																		프로젝트 공개 후 서포터님들이 문의할 수 있는 이메일을 안내해 주세요.
																	</div>
																</div>
															</div>
														</div></label>
													<div class="TextField_field__1E9vt">
														<input name="contactEmail" placeholder="이메일 입력"
															maxlength="64" type="text"
															class="Input_input__2kAAL Input_md__3-eZ6"
															aria-invalid="false">
													</div>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div class="MouseOverGuide_guide__13NEZ">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE">
													<div data-role="title">메이커님께 문의 이메일을 보내고 싶어요.</div>
													프로젝트 공개 후 서포터님들이 문의할 수 있는 이메일을 안내해 주세요.
												</div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="MakerInfoInputField_container__4b8t-">
												<div class="TextField_textField__23rCe TextField_md__2zsQn">
													<label><div>
															<div class="ToolTipMobile_toolTipContainer__2tYPd">
																<div
																	class="ToolTipMobile_label__1dBSo ToolTipMobile_required__3WiIn">문의
																	전화번호</div>
																<div
																	class="HelpFloating_wrap__6QNWy ToolTipMobile_helpFloating__fNzSX"
																	style="font-size: 14px;">
																	<button type="button" title="도움말 보기"
																		class="HelpFloating_button__2EATP"
																		style="font-size: 14px;">
																		<i class="icon help-o" aria-hidden="true"></i>
																	</button>
																	<div
																		class="HelpFloating_message__1c-6d HelpFloating_black__1v2uo"
																		style="min-width: 350px;">
																		<div data-role="title">메이커님께 문의 전화를 하고 싶어요.</div>
																		프로젝트 공개 후 서포터님들이 유선 문의할 수 있는 전화번호를 안내해 주세요.
																	</div>
																</div>
															</div>
														</div></label>
													<div class="TextField_field__1E9vt">
														<input name="contactPhoneNumber" placeholder="전화번호 입력"
															maxlength="20" type="tel"
															class="Input_input__2kAAL Input_md__3-eZ6"
															aria-invalid="false">
													</div>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div class="MouseOverGuide_guide__13NEZ">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE">
													<div data-role="title">메이커님께 문의 전화를 하고 싶어요.</div>
													프로젝트 공개 후 서포터님들이 유선 문의할 수 있는 전화번호를 안내해 주세요.
												</div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="MakerKakaoField_container__eHP08">
												<div class="MakerKakaoField_linkInputWrapper__1lsZC">
													<div class="TextField_textField__23rCe TextField_md__2zsQn">
														<label><div
																class="ToolTipMobile_toolTipContainer__2tYPd">
																<div class="ToolTipMobile_label__1dBSo">카카오톡 채널</div>
																<span class="ToolTipMobile_optional__LcH0a">(선택
																	사항)</span>
																<div
																	class="HelpFloating_wrap__6QNWy ToolTipMobile_helpFloating__fNzSX"
																	style="font-size: 14px;">
																	<button type="button" title="도움말 보기"
																		class="HelpFloating_button__2EATP"
																		style="font-size: 14px;">
																		<i class="icon help-o" aria-hidden="true"></i>
																	</button>
																	<div
																		class="HelpFloating_message__1c-6d HelpFloating_black__1v2uo"
																		style="min-width: 350px;">
																		<div data-role="title">메이커님과 소통하고 싶어요.</div>
																		서포터님들과 소통이 가능한 카카오톡 채널을 운영하고 있나요? 채널 홈 URL을 안내해 주세요.<br>
																		<br>※ 홈 URL은 카카오톡 채널 관리자 센터 &gt; 관리 &gt; 상세 설정에서
																		확인할 수 있어요.
																	</div>
																</div>
															</div></label>
														<div class="TextField_field__1E9vt">
															<input name="kakaoSearchId" placeholder="검색용 아이디 입력"
																type="text" class="Input_input__2kAAL Input_md__3-eZ6"
																aria-invalid="false">
														</div>
													</div>
												</div>
												<div class="MakerKakaoField_linkInputWrapper__1lsZC">
													<input name="kakaoHomeUrl" placeholder="홈페이지 URL 입력"
														type="text" class="Input_input__2kAAL Input_md__3-eZ6"
														aria-invalid="false">
													<button type="button" disabled=""
														class="wz button gray MakerKakaoField_linkBtn__3lSv9">
														<i class="icon-openlink-o" aria-hidden="true"></i>
													</button>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div class="MouseOverGuide_guide__13NEZ">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE">
													<div data-role="title">메이커님과 소통하고 싶어요.</div>
													서포터님들과 소통이 가능한 카카오톡 채널을 운영하고 있나요? 채널 홈 URL을 안내해 주세요.<br>
													<br>※ 홈 URL은 카카오톡 채널 관리자 센터 &gt; 관리 &gt; 상세 설정에서 확인할 수
													있어요.
												</div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="MakerKakaoField_container__eHP08">
												<div class="MakerKakaoField_linkInputWrapper__1lsZC">
													<lable class="MakerKakaoField_header__2mEoy">
													<div class="ToolTipMobile_toolTipContainer__2tYPd">
														<div class="ToolTipMobile_label__1dBSo">홈페이지</div>
														<span class="ToolTipMobile_optional__LcH0a">(선택 사항)</span>
														<div
															class="HelpFloating_wrap__6QNWy ToolTipMobile_helpFloating__fNzSX"
															style="font-size: 14px;">
															<button type="button" title="도움말 보기"
																class="HelpFloating_button__2EATP"
																style="font-size: 14px;">
																<i class="icon help-o" aria-hidden="true"></i>
															</button>
															<div
																class="HelpFloating_message__1c-6d HelpFloating_black__1v2uo"
																style="min-width: 350px;">
																<div data-role="title">메이커님에 대해 더 알고 싶어요.</div>
																운영 중인 웹사이트나 블로그 URL을 등록해 주세요. 최대 2개까지 입력할 수 있어요.
															</div>
														</div>
													</div>
													</lable>
													<div class="MakerKakaoField_content__1L5cK">
														<input name="websiteAUrl" placeholder="홈페이지 URL 입력"
															type="text" class="Input_input__2kAAL Input_md__3-eZ6"
															aria-invalid="false">
														<button type="button" disabled=""
															class="wz button gray MakerKakaoField_linkBtn__3lSv9">
															<i class="icon-openlink-o" aria-hidden="true"></i>
														</button>
													</div>
												</div>
												<div class="MakerKakaoField_linkInputWrapper__1lsZC">
													<input name="websiteBUrl" placeholder="홈페이지 URL 입력"
														type="text" class="Input_input__2kAAL Input_md__3-eZ6"
														aria-invalid="false">
													<button type="button" disabled=""
														class="wz button gray MakerKakaoField_linkBtn__3lSv9">
														<i class="icon-openlink-o" aria-hidden="true"></i>
													</button>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div class="MouseOverGuide_guide__13NEZ">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE">
													<div data-role="title">메이커님에 대해 더 알고 싶어요.</div>
													운영 중인 웹사이트나 블로그 URL을 등록해 주세요. 최대 2개까지 입력할 수 있어요.
												</div>
											</div>
										</div>
									</div>
									<div class="MouseOverGuide_container__3jDBz">
										<div class="MouseOverGuide_contents__APrXG">
											<div class="MakerKakaoField_container__eHP08">
												<lable class="MakerKakaoField_header__2mEoy">
												<div class="ToolTipMobile_toolTipContainer__2tYPd">
													<div class="ToolTipMobile_label__1dBSo">SNS</div>
													<span class="ToolTipMobile_optional__LcH0a">(선택 사항)</span>
													<div
														class="HelpFloating_wrap__6QNWy ToolTipMobile_helpFloating__fNzSX"
														style="font-size: 14px;">
														<button type="button" title="도움말 보기"
															class="HelpFloating_button__2EATP"
															style="font-size: 14px;">
															<i class="icon help-o" aria-hidden="true"></i>
														</button>
														<div
															class="HelpFloating_message__1c-6d HelpFloating_black__1v2uo"
															style="min-width: 350px;">
															<div data-role="title">서포터님들과 소통은 필수</div>
															페이스북, 트위터, 인스타그램 계정에서 프로젝트 소식을 지속적으로 알리는 건 성공 프로젝트들의
															공통점이랍니다.
														</div>
													</div>
												</div>
												</lable>
												<div class="MakerSnsDetailField_container__3bpB5">
													<input name="facebookUrl"
														placeholder="https://www.facebook.com/" maxlength="100"
														type="text"
														class="Input_input__2kAAL Input_md__3-eZ6 MakerSnsDetailField_input__2-gqv"
														aria-invalid="false">
													<button type="button" disabled=""
														class="wz button gray MakerSnsDetailField_linkBtn__2WI0K">
														<i class="icon-openlink-o" aria-hidden="true"></i>
													</button>
												</div>
												<div class="MakerSnsDetailField_container__3bpB5">
													<input name="twitterUrl"
														placeholder="https://www.twitter.com/" maxlength="100"
														type="text"
														class="Input_input__2kAAL Input_md__3-eZ6 MakerSnsDetailField_input__2-gqv"
														aria-invalid="false">
													<button type="button" disabled=""
														class="wz button gray MakerSnsDetailField_linkBtn__2WI0K">
														<i class="icon-openlink-o" aria-hidden="true"></i>
													</button>
												</div>
												<div class="MakerSnsDetailField_container__3bpB5">
													<input name="instagramUrl"
														placeholder="https://www.instagram.com/" maxlength="100"
														type="text"
														class="Input_input__2kAAL Input_md__3-eZ6 MakerSnsDetailField_input__2-gqv"
														aria-invalid="false">
													<button type="button" disabled=""
														class="wz button gray MakerSnsDetailField_linkBtn__2WI0K">
														<i class="icon-openlink-o" aria-hidden="true"></i>
													</button>
												</div>
											</div>
										</div>
										<div class="MouseOverGuide_guideWrapper__28wbb">
											<div class="MouseOverGuide_guide__13NEZ">
												<h5 class="MouseOverGuide_title__1sJjC"></h5>
												<div class="MouseOverGuide_content__I9HrE">
													<div data-role="title">서포터님들과 소통은 필수</div>
													페이스북, 트위터, 인스타그램 계정에서 프로젝트 소식을 지속적으로 알리는 건 성공 프로젝트들의
													공통점이랍니다.
												</div>
											</div>
										</div>
									</div>
								</div>
								<div class="MakerInfoFormContainer_btnWrapper__2EVfb">
									<button type="button" class="wz button primary">저장하기</button>
								</div>
								<input type="hidden" name="isTemporary" value="true"><input
									type="hidden" name="isTarget" value="true"><input
									type="hidden" name="isFeedback" value="false">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>