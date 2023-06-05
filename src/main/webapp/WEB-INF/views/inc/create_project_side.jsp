<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
tocplusTop=1000
tocplusLeft=1500
tocplusWidth=310
tocplusHeight=140
tocplusFrameColor="orange"
tocplusUserName="Guest"
</script> <script type="text/javascript" src="http://tocplus007.com:80/chatLoader.do?userId=test_ko"></script>

<script>
	$.ajax({
		 url: 'projectUpdateCheck',
	     type: 'POST',
	     data: {project_idx: ${param.project_idx}},
	     dataType: "json",
	     success: function(response) {
	    	 if(response.project_approve_status == "2"){
		    	 $('.AppSidebarMenuList_container__199gJ>ul>li>a').eq(1).attr("href", "fundingProjectState?project_idx="+${param.project_idx}) // 새소식
		    	 $('.AppSidebarMenuList_container__199gJ>ul>li>a').eq(1).attr("class", "AppSidebarMenuList_navLink__1FytL") // 새소식
		    	 $('.AppSidebarMenuList_container__199gJ>ul>li>a>.icon-lock-o ').eq(0).remove()
		    	 $('.AppSidebarMenuList_container__199gJ>ul>li>a').eq(2).attr("href", "projectShipmentRefund?project_idx="+${param.project_idx}) // 오픈예졍 현황
		    	 $('.AppSidebarMenuList_container__199gJ>ul>li>a').eq(2).attr("class", "AppSidebarMenuList_navLink__1FytL") // 오픈예졍 현황
		    	 $('.AppSidebarMenuList_container__199gJ>ul>li>a>.icon-lock-o ').eq(0).remove()
		    	 $('.AppSidebarMenuList_container__199gJ>ul>li>a').eq(3).attr("href", "projectFeeCalculate?project_idx="+${param.project_idx}) // 프로젝트 현황
		    	 $('.AppSidebarMenuList_container__199gJ>ul>li>a').eq(3).attr("class", "AppSidebarMenuList_navLink__1FytL") // 프로젝트 현황
		    	 $('.AppSidebarMenuList_container__199gJ>ul>li>a>.icon-lock-o ').eq(0).remove()
	    	 }
	     },
	     error: function(xhr, status, error) {
	     }
	})
</script>
<div class="AppSidebarLayout_contents__2thGr" id="sidebar">
	<div
		class="AppSidebarRewardProjectInfo_container__2Ykhp AppSidebarRewardProjectInfo_defaultBackgroundImage__1rWVS">
		<div class="AppSidebarRewardProjectInfo_projectFlagGroup__2GdB4">
			<span class="AppSidebarRewardProjectInfo_flag__2Ctnr">펀딩</span><span
				class="AppSidebarRewardProjectInfo_flag__2Ctnr">작성 중</span>
		</div>
		<a class="AppSidebarRewardProjectInfo_projectName__1Hf5o"
			href="/web/campaign/detail/213704?preview=Y" target="_blank"
			rel="nofollow noopener noreferrer">김동욱의<br>멋진 프로젝트
		</a>
		<button
			class="Button_button__1e2A2 Button_info__Nu98q Button_text__3KyLl Button_md__1FRMG Button_endIcon__3ZOY3 AppSidebarRewardProjectInfo_projectNumberButton__1izF_"
			type="button">
			<span><span class="Button_children__q9VCZ">프로젝트 번호
					213704</span> <svg viewBox="0 0 32 32" focusable="false"
					role="presentation"
					class="withIcon_icon__3lrgp Button_icon__1qsE3 AppSidebarRewardProjectInfo_expandIcon__2oHiN"
					aria-hidden="true" style="width: 20px; height: 20px;">
									<path
						d="M16 22.4L5.6 12l1.12-1.12L16 20.16l9.28-9.28L26.4 12 16 22.4z"></path></svg></span>
		</button>
	</div>
	
	<!-- 05-17 김동욱 각 페이지로 포워딩하는 항목에 project_idx 파라미터 추가   -->
	<nav class="AppSidebarMenuList_container__199gJ">
		<div class="AppSidebarMenuList_margin__3qjoc"></div>
		<ul>
			<li><a aria-current="page"
				class="AppSidebarMenuList_navLink__1FytL AppSidebarMenuList_active__tbFuL"
				href="main?project_idx=${param.project_idx }">프로젝트 관리<i
					class="icon-chevron-left AppSidebarMenuList_chevronIcon__2YV-z AppSidebarMenuList_open__bjhTR"
					aria-hidden="true"></i></a>
				<ul class="AppSidebarRewardSubList_container__2zCmr">
					<li><a
						class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
						href="plan?project_idx=${param.project_idx }">요금제 선택</a></li>
					<li><a
						class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
						href="screening?project_idx=${param.project_idx }">프로젝트 정보</a></li>
					<li><a
						class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
						href="baseinfo?project_idx=${param.project_idx }">기본 정보</a></li>
					<li><a
						class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
						href="story?project_idx=${param.project_idx }">스토리 작성</a></li>
						<!-- 05-16 김동욱 리워드 설계 페이지 추가 -->
					<li><a
						class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
						href="reward?project_idx=${param.project_idx }">리워드 설계</a></li>
					<li><a
						class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
						href="policy?project_idx=${param.project_idx }">정책</a></li>
					<li><a
						class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
						href="makerInfo?project_idx=${param.project_idx }">메이커 정보</a></li>
					<li><a
						class="AppSidebarMenuList_navLink__1FytL AppSidebarRewardSubList_subMenu__iqWsa"
						href="contractInfo?project_idx=${param.project_idx }">대표자 및 정산 정보</a></li>
				</ul></li>
			<li><a
				class="AppSidebarMenuList_navLink__1FytL AppSidebarMenuList_disabled__3yitR">프로젝트 현황<i
					class="icon-lock-o AppSidebarMenuList_lockIcon__3H-rC"
					aria-hidden="true"></i>
					<div class="AppSidebarMenuList_helpFloating__3uu8D">프로젝트 공개 후
						확인할 수 있어요.</div>
			</a></li>
			<li><a
				class="AppSidebarMenuList_navLink__1FytL AppSidebarMenuList_disabled__3yitR"
				href="/studio/reward/213704/supporter">발송∙환불 관리<i
					class="icon-lock-o AppSidebarMenuList_lockIcon__3H-rC"
					aria-hidden="true"></i>
					<div class="AppSidebarMenuList_helpFloating__3uu8D">프로젝트 공개 후
						확인할 수 있어요.</div></a></li>
			<li><a
				class="AppSidebarMenuList_navLink__1FytL AppSidebarMenuList_disabled__3yitR">수수료∙정산 관리<i
					class="icon-lock-o AppSidebarMenuList_lockIcon__3H-rC"
					aria-hidden="true"></i>
					<div class="AppSidebarMenuList_helpFloating__3uu8D">프로젝트 제출 후
						확인할 수 있어요.</div></a></li>
		</ul>
	</nav>
</div>