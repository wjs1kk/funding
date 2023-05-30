<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://static.wadiz.kr/studio/funding/static/css/5.6aa6dee4.chunk.css" rel="stylesheet">
<link href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/9.2112a1bf.chunk.css">
<!-- 05-29 김동욱 jquery 라이브러리 추가 -->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>

<script type="text/javascript">
	
	
	// 05-29 김동욱 각 항목 업데이트 여부 확인후 작성중 -> 작성 완료로 변경
	$(function() {
		
		$.ajax({
			 url: 'projectUpdateCheck',
	          type: 'POST',
	          data: {project_idx: ${param.project_idx}},
	          dataType: "json",
	          success: function(response) {
	        	  
	        	  if(response.project_plan != null || response.project_plan != 0){
	        		  $(".PageMenuList_card__1VyAW>.PageMenuList_container__1xz-L>.PageMenuList_status__3M6fF").eq(0).text("작성 완료");
	        		  $("#project_plan").val("Y");
	        	  }
	        	  
	        	  if(response.project_category != null || response.project_category != ""){
	        		  $(".PageMenuList_card__1VyAW>.PageMenuList_container__1xz-L>.PageMenuList_status__3M6fF").eq(1).text("작성 완료");
	        		  $("#project_info").val("Y");
	        	  }
	        	  
	        	  if(response.project_title != null || response.project_title != ""){
	        		  $(".PageMenuList_card__1VyAW>.PageMenuList_container__1xz-L>.PageMenuList_status__3M6fF").eq(2).text("작성 완료");
	        		  $("#project_baseInfo").val("Y");
	        	  }
	        	  
	        	  if(response.project_story != null || response.project_story != ""){
	        		  $(".PageMenuList_card__1VyAW>.PageMenuList_container__1xz-L>.PageMenuList_status__3M6fF").eq(3).text("작성 완료");
	        		  $("#project_story").val("Y");
	        	  }
	        		
	        	  // 리워드 정책 추가해야 함
	        	  
	        	  
	        	  if(response.maker_idx != null || response.maker_idx != 0){
	        		  $(".PageMenuList_card__1VyAW>.PageMenuList_container__1xz-L>.PageMenuList_status__3M6fF").eq(6).text("작성 완료");
	        		  $("#project_maker").val("Y");
	        	  }
	        	  
	        	  // 값이 있으면 hidden에 값이 들어가고 그 값이 모두 Y이면 버튼 활성화
	        	  if($("#project_plan").val() == "Y"
	        		&& $("#project_info").val() == "Y"
	        		&& $("#project_baseInfo").val() == "Y"
	        		&& $("#project_reward").val() == "Y"
	        	 	// 리워드 정책 추가해야 함
	        	 	
	        		&& $("#project_story").val() == "Y"
	        		&& $("#project_maker").val() == "Y"
	        		&& $("#representative_info").val() == "Y"
	        	  ){
		      		$("#submitBtn").attr("disabled", false);
	        	  }
	        	  
	          },
	          error: function(xhr, status, error) {
	          }
		})
		
		// 05-30 김동욱 대표자 정산 정보가 있는지 확인 후 작성완료로 변경
  	 	 $.ajax({
    			 url: 'getMyRepresentativeInfo',
    	          type: 'POST',
    	          dataType: "json",
    	          success: function(response) {
    	        	  
		        	  if(response != null){
		        		  $(".PageMenuList_card__1VyAW>.PageMenuList_container__1xz-L>.PageMenuList_status__3M6fF").eq(7).text("작성 완료");
		        		  $("#representative_info").val("Y");
		        	  }
    	        	  
    	          },
    	          error: function(xhr, status, error) {
    	          }
    		})
    		
    		
   		// 05-30 김동욱 리워드 설계를 작성했는 지 확인 후 작성 완료로 변경
   		$.ajax({
	   			 url: 'getProjectReward',
	   	          type: 'POST',
	   	          data: {project_idx: ${param.project_idx}},
	   	          dataType: "json",
	   	          success: function(response) {
	   	        	  
	   	        	  if(response != null){
	   	        		  $(".PageMenuList_card__1VyAW>.PageMenuList_container__1xz-L>.PageMenuList_status__3M6fF").eq(4).text("작성 완료");
	       				  $("#project_reward").val("Y");
	   	        	  }
	   	        	  
	   	          },
	   	          error: function(xhr, status, error) {
	   	          }
   		})
		
		
   		// 05-30 김동욱 프로젝트 제출하기
		$("#submitBtn").on("click", function() {
			$.ajax({
	   			 url: 'projectApproveSubmit',
	   	          type: 'POST',
	   	          data: {project_idx: ${param.project_idx}},
	   	          success: function() {
	   	        	  
	   	          },
	   	          error: function(xhr, status, error) {
	   	          }
  			})
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
						<div class="FundingHeader_container__2vEbt">
							<h2 class="FundingHeader_title__19M9i">프로젝트 관리</h2>
							<p class="FundingHeader_description__1vRHW">프로젝트를 공개하는 데 필요한
								내용을 작성해 주세요.</p>
						</div>
						<div class="FundingLayout_container___Cixh">
							<div class="FundingLayout_contents__12sTn">
								<div class="FundingStatus_container__3bqGB">
									<div class="FundingStatus_label__393mk">
										프로젝트 준비 상태
										<button class="FundingStatus_link__3Dz78" type="button">지금
											나의 단계는?</button>
									</div>
									<div class="FundingStatus_statusView__D10Ag"></div>
									<div class="FundingStatus_statusView__D10Ag">
										<div class="FundingStatus_icon__1Xrqx yellow"></div>
										작성 중
									</div>
									<div class="FundingStatus_guide__37jtT">아래의 필수 항목들이 모두 작성
										완료 상태로 바뀌면 [제출하기]를 누를 수 있어요.</div>
								</div>
								<div class="FundingContainer_listContainer__1jw_z">
									<div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm"
												href="plan?project_idx=${param.project_idx }">요금제 선택</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													중</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="plan?project_idx=${param.project_idx }"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">프로젝트 정보</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="screening?project_idx=${param.project_idx }"><button
													
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">기본 정보</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="baseinfo?project_idx=${param.project_idx }"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">스토리 작성</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="story?project_idx=${param.project_idx }"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">리워드 설계</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
													<!-- 05-16 김동욱 리워드 설계 페이지 추가 -->
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="reward?project_idx=${param.project_idx }"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">정책</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="policy?project_idx=${param.project_idx }"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">메이커 정보</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="makerInfo?project_idx=${param.project_idx }"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
										<div
											class="PageMenuList_card__1VyAW PageMenuList_wadizColor__3nQuN">
											<div class="PageMenuList_container__1xz-L">
												<div class="PageMenuList_name__2nKKm">대표자 및 정산 정보</div>
												<div
													class="PageMenuList_status__3M6fF PageMenuList_wadizColor__3nQuN">작성
													전</div>
												<a class="PageMenuList_buttonWrapper__3PXAt"
													href="contractInfo?project_idx=${param.project_idx }"><button
														type="button" class="wz button">작성하기</button></a>
											</div>
										</div>
									</div>
								</div>
								<div class="FundingSubmit_container__3kwkh">
									<button type="button" disabled="" id="submitBtn"
										class="wz button primary FundingSubmit_button__1Qs0d">제출하기</button>
								</div>
							</div>
							<input type="hidden" id="project_plan">
							<input type="hidden" id="project_info">
							<input type="hidden" id="project_baseInfo">
							<input type="hidden" id="project_story">
							<input type="hidden" id="project_reward">
							<input type="hidden" id="project_maker">
							<input type="hidden" id="representative_info">
							
							
							<!-- 오른쪽 (공간 와디즈 쇼룸 신청하기, 필수 서류 확인하기 등 배너) -->
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