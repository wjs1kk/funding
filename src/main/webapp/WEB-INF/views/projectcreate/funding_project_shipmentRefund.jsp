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
<link href="https://static.wadiz.kr/studio/funding/static/css/main.2b8a3946.chunk.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/studio/funding/static/css/9.2112a1bf.chunk.css">
<link rel="stylesheet" type="text/css" href="https://static.wadiz.kr/main/css/coupon-zone.ba4c0b7f.chunk.css">

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
									
									<h2 class="FundingStoryContainer_title__1r0ZE">발송 환불 관리</h2>
									<br>
									<table id="list"></table>
									<div id="pager"></div>
									<div style="margin-top:20px; font-size:30px;" id="click_result"></div>
									
									
									<!-- 운송장 입력 모달 -->
									<div class="ModalWrapper_modalWrapPortal__3hqCw" id="modal" style="display: none;">
										<div class="ModalWrapper_modalWrapOverlay__25q_n ModalWrapper_modalWrapOverlayAfterOpen__2TRqO">
											<div class="ModalWrapper_modalWrapContent__27xIR ModalWrapper_modalWrapContentAfterOpen__2OfUs" tabindex="-1" role="dialog">
												<div class="ModalLayout_modalWrap__2TF56">
													<div class="ModalLayout_modalWrapBox__2jSsd">
														<h3 class="ModalLayout_title__2qKim">운송장 번호 입력</h3>
														<button type="button" class="wz button less icon dense ModalLayout_closeButton__3XepS" id="modal_close">
															<svg viewBox="0 0 40 40" focusable="false" role="presentation" class="withIcon_icon__3lrgp" aria-hidden="true">
															<path d="M33.4 8L32 6.6l-12 12-12-12L6.6 8l12 12-12 12L8 33.4l12-12 12 12 1.4-1.4-12-12 12-12z"></path></svg>
														</button>
														
														<!-- 모달 쿠폰 리스트 -->
															<div class="CouponDownloadList_item__3KB38" style="height: 20%; text-align: left !important;">
																<div class="CouponDownloadItem_container__1hk2c">
																	<div class="CouponDownloadItem_content__2MxtW">
																		<dl>
																			<dt class="BlindText_textHidden__ovQb4">
																				<select style="width: 100%; height: 30px; color:#BBBBBB; padding-left: 13px; font-family: inherit; font-size:14px; border: none;" id="courier">
																					<option>배송사 선택</option>
																					<option value="대한통운">대한통운</option>
																					<option value="우체국택배">우체국택배</option>
																					<option value="한진택배">한진택배</option>
																					<option value="롯데택배">롯데택배</option>
																					<option value="천일택배">천일택배</option>
																					<option value="한덱스">한덱스</option>
																					<option value="합동택배">합동택배</option>
																					<option value="로젠택배">로젠택배</option>
																					<option value="현대택배">현대택배</option>
																				</select>
																				<input type="text" id="tracking_number" value="" placeholder="운송장 번호를 입력해주세요"  style="font-size: 20px">
																				<input type="hidden" id="payment_idx" value="">
																			</dt>
																			
																		</dl>
																	</div>
																	
																	<input type="button" style="width: 100%;" id="saveBtn" name="saveBtn" value="입력 완료" class=" Button_button__1e2A2 Button_primary__PxOJr Button_contained__TTXSM Button_lg__3vRQD FundingPlanLayout_submitBtn__1EzVj">
<%-- 																	<button class="Button_button__2FuOU CouponDownloadItem_button__3fO54" type="button" onclick="couponUse(${myCouponList.coupon_percent}, ${map.reward_amount}, ${map.reward_delivery_fee }, '${myCouponList.coupon_name }' , ${myCouponList.coupon_idx })"> --%>
<!-- 																		<span> -->
<!-- 																			<span class="Button_children__ilFun"> -->
<!-- 																				<path d="M40.8 43.2H7.2v-2.4h33.6v2.4zm-5.28-22.08L25.2 31.44V4.8h-2.4v26.64L12.48 21.12 10.8 22.8 24 36l13.2-13.2-1.68-1.68z"></path></svg> -->
<!-- 																				<span class="CouponDownloadItem_label__1HUCF">입력완료</span></span></span> -->
<!-- 																	</button> -->
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
	</div>
</body>
</html>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.14/themes/redmond/jquery-ui.css" type="text/css" />
<!-- jqGrid CSS -->
<link rel="stylesheet" href="//cdn.jsdelivr.net/jqgrid/4.6.0/css/ui.jqgrid.css" type="text/css" />
<!-- The actual JQuery code -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.10.2.min.js" /></script>
<!-- The JQuery UI code -->
<script type="text/javascript" src="https://code.jquery.com/ui/1.10.3/jquery-ui.min.js" /></script>
<!-- The jqGrid language file code-->
<script type="text/javascript" src="//cdn.jsdelivr.net/jqgrid/4.6.0/i18n/grid.locale-kr.js" /></script>
<!-- The atual jqGrid code -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jqgrid/4.6.0/jquery.jqGrid.src.js" /></script>
<script>

	$(document).ready(function() {
		var mydata;
		
		$.ajax({
			type: "post",
			url: "getMyPaymentList",
			data: {project_idx:${param.project_idx}
			},
			async:false,
			dataType:"JSON",
			success: function(response) {
				mydata = response;
			}
		})
		console.log(mydata)
		
		$("#list").jqGrid({
			datatype: "local",
			data: mydata,
			colNames:[
				'주문번호',
				'결제 날짜',
				'회원 번호',
// 				'프로젝트 번호',
				'리워드명',
				'리워드 금액',
				'포인트 사용 금액',
				'쿠폰 사용 금액',
				'배송비',
				'추가 후원금',
				'총 결제 금액',
				'배송지',
				'수취인 연락처', 
				'운송장번호',
				'발송'
				],
			colModel:[
				{name:'payment_idx', index:'payment_idx', width:80, align: "center"},
				{name:'payment_date', index:'payment_date', width:140 , align: "center" },
				{name:'member_idx', index:'member_idx', width:130 , align: "center" },
// 				{name:'project_idx', index:'project_idx', width:130 , align: "center" },
				{name:'reward_name', index:'reward_name', width:300 , align: "center" },
				{name:'reward_amount', index:'reward_amount', width:130 , align: "center" },
				{name:'used_point_amount', index:'used_point_amount', width:100 , align: "center" },
				{name:'used_coupon_amount', index:'used_coupon_amount', width:100 , align: "center" },
				{name:'delivery_fee', index:'delivery_fee', width:130 , align: "center" },
				{name:'donation', index:'donation', width:100 , align: "center" },
				{name:'total_amount', index:'total_amount', width:130 , align: "center" },
				{name:'delivery_address', index:'delivery_address', width:300 , align: "center" },
				{name:'delivery_phone_number', index:'delivery_phone_number', width:300 , align: "center" },
				{name:'tracking_number', index:'tracking_number', width:150, align: "center"},
				{name:'발송', index:'발송', width:80, align: "center", formatter:formatOpt2, sortable: false}
// 				{name:'idx', index: 'idx', hidden: true}
			],
			autowidth: true,
			multiselect: true,
			shrinkToFit:false,
			pager:'#pager',
			rowNum: 20,
			rowList: [20, 50],
			sortname: 'date',
			sortorder: 'desc',
			height: 500
		});
		function formatOpt1(cellvalue, options, rowObject){
			
			console.log(cellvalue)
			console.log(options)
			console.log(rowObject)
			var str = "";
			var row_id = options.rowId;
			var idx = rowObject.payment_idx;
	
			str += "<div class=\"btn-group\">";
			str += "<button type='button' class='btn btn-default btn-sm'  onclick=\"javascript:fn_update('" + row_id + "','" + idx + "' )\">수정</button>";
			str += "</div>";
	
			return str;
		}
		function formatOpt2(cellvalue, options, rowObject){
			console.log(cellvalue)
			console.log(options)
			console.log(rowObject)
			var str = "";
			var row_id = options.rowId;
			var idx = rowObject.payment_idx;
	
			str += "<div class=\"btn-group\">";
			str += "<button type='button' class='btn btn-default btn-sm' onclick=\"javascript:trackingNumberUpdate('" + row_id + "','" + idx + "' )\">발송</button>";
			str += "</div>";
	
			return str;
		}
	
		$(window).on('resize.jqGrid', function() {
			$("#list").jqGrid('setGridWidth', $("#list").parent().parent().parent().parent().parent().width());
		})
		$(".jarviswidget-fullscreen-btn").click(function(){
				setTimeout(function() {
					$("#list").jqGrid('setGridWidth', $("#list").parent().parent().parent().parent().parent().width());
				}, 100);
			});
		
			$("#list").on("click", function() {
				$('#list tr').removeClass("ui-state-highlight");
		    });
		});
	
	
		function trackingNumberUpdate(rowid, idx){
			
			$(".ModalWrapper_modalWrapPortal__3hqCw").css("display", "block");
			$("#payment_idx").val(idx);
// 			alert($("#payment_idx").val());
			
			
// 			var str = "rowid 는 "+rowid+" / idx 는 "+idx+" 입니다.";
// 			$("#click_result").html(str);
		}
		
		$("#saveBtn").on("click", function() {
// 			$("#courier").index($("#courier option:selected"))
			if($("#courier option:selected").index() == 0){
				alert("택배사를 선택해주세요.")
				return false;
			}
			
			if($("#tracking_number").val() == null || $("#tracking_number").val() == ""){
				alert("운송장 번호를 입력해주세요.")
				return false;
			}
			
			$.ajax({
				type: "post",
				url: "trackingNumberUpdate",
				data: {payment_idx:$("#payment_idx").val(),
					tracking_number:$("#courier").val() + " (" + $("#tracking_number").val() + ")"
				},
				success: function() {
					$(".ModalWrapper_modalWrapPortal__3hqCw").css("display", "none");
// 					$("#tracking_number").val("");
// 					$("#payment_idx").val("");
					location.href = "projectShipmentRefund?project_idx="+${param.project_idx}
				}
			})
		})
		
		$("#modal_close").on("click", function() {
			$(".ModalWrapper_modalWrapPortal__3hqCw").css("display", "none");
		})
</script>
