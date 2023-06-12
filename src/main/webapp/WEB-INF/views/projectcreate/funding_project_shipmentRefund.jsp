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
									
									
									<h3>funding_project_shipmentRefund.jsp</h3>
									<table id="list"></table>
									<div id="pager"></div>
									<div style="margin-top:20px; font-size:30px;" id="click_result"></div>
									
									
									
									
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
		
		console.log(mydata);
		
	
		$("#list").jqGrid({
			datatype: "local",
			data: mydata,
			colNames:[
// 				'주문번호',
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
// 				{name:'payment_idx', index:'payment_idx', width:80, align: "center"},
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
			height: 500,
			width: 800
		});
		function formatOpt1(cellvalue, options, rowObject){
			var str = "";
			var row_id = options.rowId;
			var idx = rowObject.idx;
	
			str += "<div class=\"btn-group\">";
			str += "<button type='button' class='btn btn-default btn-sm'  onclick=\"javascript:fn_update('" + row_id + "','" + idx + "' )\">수정</button>";
			str += "</div>";
	
			return str;
		}
		function formatOpt2(cellvalue, options, rowObject){
			var str = "";
			var row_id = options.rowId;
			var idx = rowObject.idx;
	
			str += "<div class=\"btn-group\">";
			str += "<button type='button' class='btn btn-default btn-sm' onclick=\"javascript:fn_delete('" + row_id + "','" + idx + "' )\">발송</button>";
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
		function fn_update(rowid, idx){
			var str = "rowid 는 "+rowid+" / idx 는 "+idx+" 입니다.";
			$("#click_result").html(str);
	
		}
		function fn_delete(rowid, idx){
			var str = "rowid 는 "+rowid+" / idx 는 "+idx+" 입니다.";
			$("#click_result").html(str);
		}
</script>
