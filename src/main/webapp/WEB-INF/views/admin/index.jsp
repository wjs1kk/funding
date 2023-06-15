<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<!-- =========================================================
* Sneat - Bootstrap 5 HTML Admin Template - Pro | v1.0.0
==============================================================

* Product Page: https://themeselection.com/products/sneat-bootstrap-html-admin-template/
* Created by: ThemeSelection
* License: You must have a valid license purchased in order to legally use the theme for your project.
* Copyright ThemeSelection (https://themeselection.com)

=========================================================
 -->
<!-- beautify ignore:start -->
<html lang="en" class="light-style layout-menu-fixed" dir="ltr"
	data-theme="theme-default" data-assets-path="resources/assets/"
	data-template="vertical-menu-template-free">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

<title>관리자 - 메인</title>

<meta name="description" content="">

<!-- Favicon -->
<link rel="icon" type="image/x-icon"
	href="resources/assets/img/favicon/favicon.ico">

<!-- Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
<link
	href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap"
	rel="stylesheet">

<!-- Icons. Uncomment required icon fonts -->
<link rel="stylesheet" href="resources/assets/vendor/fonts/boxicons.css">

<!-- Core CSS -->
<link rel="stylesheet" href="resources/assets/vendor/css/core.css"
	class="template-customizer-core-css">
<link rel="stylesheet"
	href="resources/assets/vendor/css/theme-default.css"
	class="template-customizer-theme-css">
<link rel="stylesheet" href="resources/assets/css/demo.css">

<!-- Vendors CSS -->
<link rel="stylesheet"
	href="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css">

<link rel="stylesheet"
	href="resources/assets/vendor/libs/apex-charts/apex-charts.css">

<!-- Page CSS -->

<!-- Helpers -->
<script src="resources/assets/vendor/js/helpers.js"></script>
<style type="text/css">
.layout-menu-fixed .layout-navbar-full .layout-menu, .layout-page {
	padding-top: 0px !important;
}

.content-wrapper {
	padding-bottom: 0px !important;
}
</style>

<!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
<!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
<script src="resources/assets/js/config.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Task', 'Hours per Day'],
          ['Work',     11],
          ['Eat',      2],
          ['Commute',  2],
          ['Watch TV', 2],
          ['Sleep',    7]
        ]);

        var options = {
          title: 'My Daily Activities',
          pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);
      }
    </script>
</head>

<body>
   
	<!-- Layout wrapper -->
	<div class="layout-wrapper layout-content-navbar">
		<div class="layout-container">
			<!-- Menu -->

			<jsp:include page="../inc/admin_top.jsp"></jsp:include>

			<!-- / Menu -->

			<!-- Layout container -->
			<div class="layout-page">
				<!-- Navbar -->
				<nav class="layout-navbar container-xxl navbar navbar-expand-xl navbar-detached align-items-center bg-navbar-theme" id="layout-navbar">
			      <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0   d-xl-none ">
			        <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
			          <i class="bx bx-menu bx-sm"></i>
			        </a>
			      </div>    
			      <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">    
			        <!-- Search -->
			        <div class="navbar-nav align-items-center">
			          <div class="nav-item d-flex align-items-center">
			            <i class="bx bx-search fs-4 lh-0"></i>
			            <input type="text" class="form-control border-0 shadow-none" placeholder="Search..." aria-label="Search...">
			          </div>
			        </div>
			        <!-- /Search -->       
			        <ul class="navbar-nav flex-row align-items-center ms-auto">        
			          <!-- Place this tag where you want the button to render. -->
			          <li class="nav-item lh-1 me-3">
			            <span></span>
			          </li>
			        </ul>
			      </div>
			  </nav>
			<!-- / Navbar -->
				
				<!--  content -->
				<div class="content-wrapper" style="margin-top: 50px;">
					<div class="container-xxl flex-grow-1 container-p-y">
						 <div class="row">
  <!-- Order Statistics -->
  <div class="col-md-6 col-lg-12 col-xl-6 order-0 mb-4">
    <div class="card h-100">
      <div class="card-header d-flex align-items-center justify-content-between pb-0">
        <div class="card-title mb-0">
          <h5 class="m-0 me-2">Order Statistics</h5>
        </div>
        <div class="dropdown">
          <button class="btn p-0" type="button" id="orederStatistics" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="bx bx-dots-vertical-rounded"></i>
          </button>
        </div>
      </div>
      <div class="card-body">
        <div class="d-flex justify-content-between align-items-center mb-3" style="position: relative;">
          <div class="d-flex flex-column align-items-center gap-1">
          	<span>총 프로젝트</span>
            <h2 class="mb-2">${count } 개</h2>
          </div>
          <div id="orderStatisticsChart" style="min-height: 137.55px;"><div id="apexchartsp5g86gub" class="apexcharts-canvas apexchartsp5g86gub apexcharts-theme-light" style="width: 130px; height: 137.55px;"><svg id="SvgjsSvg2042" width="130" height="137.55" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2044" class="apexcharts-inner apexcharts-graphical" transform="translate(-7, 0)"><defs id="SvgjsDefs2043"><clipPath id="gridRectMaskp5g86gub"><rect id="SvgjsRect2046" width="150" height="173" x="-4.5" y="-2.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskp5g86gub"></clipPath><clipPath id="nonForecastMaskp5g86gub"></clipPath><clipPath id="gridRectMarkerMaskp5g86gub"><rect id="SvgjsRect2047" width="145" height="172" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><g id="SvgjsG2048" class="apexcharts-pie"><g id="SvgjsG2049" transform="translate(0, 0) scale(1)"><circle id="SvgjsCircle2050" r="44.835365853658544" cx="70.5" cy="70.5" fill="transparent"></circle><g id="SvgjsG2051" class="apexcharts-slices"><g id="SvgjsG2052" class="apexcharts-series apexcharts-pie-series" seriesName="테크/가전" rel="1" data:realIndex="0"><path id="SvgjsPath2053" d="M 70.5 10.71951219512195 A 59.78048780487805 59.78048780487805 0 0 1 97.63977353321047 123.7648046533095 L 90.85483014990785 110.44860348998213 A 44.835365853658544 44.835365853658544 0 0 0 70.5 25.664634146341456 L 70.5 10.71951219512195 z" fill="rgba(105,108,255,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-0" index="0" j="0" data:angle="153" data:startAngle="0" data:strokeWidth="5" data:value="85" data:pathOrig="M 70.5 10.71951219512195 A 59.78048780487805 59.78048780487805 0 0 1 97.63977353321047 123.7648046533095 L 90.85483014990785 110.44860348998213 A 44.835365853658544 44.835365853658544 0 0 0 70.5 25.664634146341456 L 70.5 10.71951219512195 z" stroke="#ffffff"></path></g><g id="SvgjsG2054" class="apexcharts-series apexcharts-pie-series" seriesName="푸드" rel="2" data:realIndex="1"><path id="SvgjsPath2055" d="M 97.63977353321047 123.7648046533095 A 59.78048780487805 59.78048780487805 0 0 1 70.5 130.28048780487805 L 70.5 115.33536585365854 A 44.835365853658544 44.835365853658544 0 0 0 90.85483014990785 110.44860348998213 L 97.63977353321047 123.7648046533095 z" fill="rgba(133,146,163,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-1" index="0" j="1" data:angle="27" data:startAngle="153" data:strokeWidth="5" data:value="15" data:pathOrig="M 97.63977353321047 123.7648046533095 A 59.78048780487805 59.78048780487805 0 0 1 70.5 130.28048780487805 L 70.5 115.33536585365854 A 44.835365853658544 44.835365853658544 0 0 0 90.85483014990785 110.44860348998213 L 97.63977353321047 123.7648046533095 z" stroke="#ffffff"></path></g><g id="SvgjsG2056" class="apexcharts-series apexcharts-pie-series" seriesName="홈/리빙" rel="3" data:realIndex="2"><path id="SvgjsPath2057" d="M 70.5 130.28048780487805 A 59.78048780487805 59.78048780487805 0 0 1 10.71951219512195 70.50000000000001 L 25.664634146341456 70.5 A 44.835365853658544 44.835365853658544 0 0 0 70.5 115.33536585365854 L 70.5 130.28048780487805 z" fill="rgba(3,195,236,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-2" index="0" j="2" data:angle="90" data:startAngle="180" data:strokeWidth="5" data:value="50" data:pathOrig="M 70.5 130.28048780487805 A 59.78048780487805 59.78048780487805 0 0 1 10.71951219512195 70.50000000000001 L 25.664634146341456 70.5 A 44.835365853658544 44.835365853658544 0 0 0 70.5 115.33536585365854 L 70.5 130.28048780487805 z" stroke="#ffffff"></path></g><g id="SvgjsG2058" class="apexcharts-series apexcharts-pie-series" seriesName="패션/잡화" rel="4" data:realIndex="3"><path id="SvgjsPath2059" d="M 10.71951219512195 70.50000000000001 A 59.78048780487805 59.78048780487805 0 0 1 70.48956633664653 10.719513105630845 L 70.4921747524849 25.664634829223125 A 44.835365853658544 44.835365853658544 0 0 0 25.664634146341456 70.5 L 10.71951219512195 70.50000000000001 z" fill="rgba(113,221,55,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-3" index="0" j="3" data:angle="90" data:startAngle="270" data:strokeWidth="5" data:value="50" data:pathOrig="M 10.71951219512195 70.50000000000001 A 59.78048780487805 59.78048780487805 0 0 1 70.48956633664653 10.719513105630845 L 70.4921747524849 25.664634829223125 A 44.835365853658544 44.835365853658544 0 0 0 25.664634146341456 70.5 L 10.71951219512195 70.50000000000001 z" stroke="#ffffff"></path></g></g></g><g id="SvgjsG2060" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"><text id="SvgjsText2061" font-family="Helvetica, Arial, sans-serif" x="70.5" y="90.5" text-anchor="middle" dominant-baseline="auto" font-size="0.8125rem" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-datalabel-label" style="font-family: Helvetica, Arial, sans-serif;">Weekly</text><text id="SvgjsText2062" font-family="Public Sans" x="70.5" y="71.5" text-anchor="middle" dominant-baseline="auto" font-size="1.5rem" font-weight="400" fill="#566a7f" class="apexcharts-text apexcharts-datalabel-value" style="font-family: &quot;Public Sans&quot;;">38%</text></g></g><line id="SvgjsLine2063" x1="0" y1="0" x2="141" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2064" x1="0" y1="0" x2="141" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line></g><g id="SvgjsG2045" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div><div class="apexcharts-tooltip apexcharts-theme-dark"><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(105, 108, 255);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(133, 146, 163);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 3;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(3, 195, 236);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 4;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(113, 221, 55);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div></div></div>
        <div class="resize-triggers"><div class="expand-trigger"><div style="width: 263px; height: 139px;"></div></div><div class="contract-trigger"></div></div></div>
        <ul class="p-0 m-0">
          <li class="d-flex mb-4 pb-1">
            <div class="avatar flex-shrink-0 me-3">
              <span class="avatar-initial rounded bg-label-primary"><i class="bx bx-mobile-alt"></i></span>
            </div>
            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
              <div class="me-2">
                <h6 class="mb-0">테크/가전</h6>
                <small class="text-muted">Mobile, Earbuds, TV</small>
              </div>
              <div class="user-progress">
                <small class="fw-semibold">82.5k</small>
              </div>
            </div>
          </li>
          <li class="d-flex mb-4 pb-1">
            <div class="avatar flex-shrink-0 me-3">
              <span class="avatar-initial rounded bg-label-success"><i class="bx bx-closet"></i></span>
            </div>
            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
              <div class="me-2">
                <h6 class="mb-0">패션/잡화</h6>
                <small class="text-muted">T-shirt, Jeans, Shoes</small>
              </div>
              <div class="user-progress">
                <small class="fw-semibold">23.8k</small>
              </div>
            </div>
          </li>
          <li class="d-flex mb-4 pb-1">
            <div class="avatar flex-shrink-0 me-3">
              <span class="avatar-initial rounded bg-label-info"><i class="bx bx-home-alt"></i></span>
            </div>
            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
              <div class="me-2">
                <h6 class="mb-0">홈/리빙</h6>
                <small class="text-muted">Fine Art, Dining</small>
              </div>
              <div class="user-progress">
                <small class="fw-semibold">849k</small>
              </div>
            </div>
          </li>
          <li class="d-flex">
            <div class="avatar flex-shrink-0 me-3">
              <span class="avatar-initial rounded bg-label-secondary"><i class="bx bx-football"></i></span>
            </div>
            <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
              <div class="me-2">
                <h6 class="mb-0">푸드</h6>
                <small class="text-muted">Football, Cricket Kit</small>
              </div>
              <div class="user-progress">
                <small class="fw-semibold">99</small>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  <!--/ Order Statistics -->

  <!-- Expense Overview -->
  <div class="col-md-6 col-lg-12 col-xl-6 order-0 mb-4">
    <div class="card h-100">
      <div class="card-header">
        <ul class="nav nav-pills" role="tablist">
          <li class="nav-item">
            <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab" data-bs-target="#navs-tabs-line-card-income" aria-controls="navs-tabs-line-card-income" aria-selected="true">Income</button>
          </li>
          <li class="nav-item">
            <button type="button" class="nav-link" role="tab">Expenses</button>
          </li>
          <li class="nav-item">
            <button type="button" class="nav-link" role="tab">Profit</button>
          </li>
        </ul>
      </div>
      <div class="card-body px-0">
        <div class="tab-content p-0">
          <div class="tab-pane fade show active" id="navs-tabs-line-card-income" role="tabpanel" style="position: relative;">
            <div class="d-flex p-4 pt-3">
              <div class="avatar flex-shrink-0 me-3">
                <img src="../assets/img/icons/unicons/wallet.png" alt="User">
              </div>
              <div>
                <small class="text-muted d-block">Total Balance</small>
                <div class="d-flex align-items-center">
                  <h6 class="mb-0 me-1">$459.10</h6>
                  <small class="text-success fw-semibold">
                    <i class="bx bx-chevron-up"></i>
                    42.9%
                  </small>
                </div>
              </div>
            </div>
            <div id="incomeChart" style="min-height: 215px;"><div id="apexchartshsectml2" class="apexcharts-canvas apexchartshsectml2 apexcharts-theme-light" style="width: 310px; height: 215px;"><svg id="SvgjsSvg2065" width="310" height="215" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg apexcharts-zoomable" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2067" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 10)"><defs id="SvgjsDefs2066"><clipPath id="gridRectMaskhsectml2"><rect id="SvgjsRect2072" width="298.635009765625" height="175.73" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskhsectml2"></clipPath><clipPath id="nonForecastMaskhsectml2"></clipPath><clipPath id="gridRectMarkerMaskhsectml2"><rect id="SvgjsRect2073" width="320.635009765625" height="201.73" x="-14" y="-14" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient2093" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop2094" stop-opacity="0.5" stop-color="rgba(105,108,255,0.5)" offset="0"></stop><stop id="SvgjsStop2095" stop-opacity="0.25" stop-color="rgba(195,196,255,0.25)" offset="0.95"></stop><stop id="SvgjsStop2096" stop-opacity="0.25" stop-color="rgba(195,196,255,0.25)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine2071" x1="0" y1="0" x2="0" y2="173.73" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="0" y="0" width="1" height="173.73" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG2099" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2100" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText2102" font-family="Helvetica, Arial, sans-serif" x="0" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2103"></tspan><title></title></text><text id="SvgjsText2105" font-family="Helvetica, Arial, sans-serif" x="41.80500139508929" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2106">Jan</tspan><title>Jan</title></text><text id="SvgjsText2108" font-family="Helvetica, Arial, sans-serif" x="83.61000279017858" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2109">Feb</tspan><title>Feb</title></text><text id="SvgjsText2111" font-family="Helvetica, Arial, sans-serif" x="125.41500418526786" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2112">Mar</tspan><title>Mar</title></text><text id="SvgjsText2114" font-family="Helvetica, Arial, sans-serif" x="167.22000558035714" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2115">Apr</tspan><title>Apr</title></text><text id="SvgjsText2117" font-family="Helvetica, Arial, sans-serif" x="209.02500697544642" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2118">May</tspan><title>May</title></text><text id="SvgjsText2120" font-family="Helvetica, Arial, sans-serif" x="250.8300083705357" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2121">Jun</tspan><title>Jun</title></text><text id="SvgjsText2123" font-family="Helvetica, Arial, sans-serif" x="292.63500976562494" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2124">Jul</tspan><title>Jul</title></text></g></g><g id="SvgjsG2127" class="apexcharts-grid"><g id="SvgjsG2128" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine2130" x1="0" y1="0" x2="292.635009765625" y2="0" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2131" x1="0" y1="43.4325" x2="292.635009765625" y2="43.4325" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2132" x1="0" y1="86.865" x2="292.635009765625" y2="86.865" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2133" x1="0" y1="130.29749999999999" x2="292.635009765625" y2="130.29749999999999" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2134" x1="0" y1="173.73" x2="292.635009765625" y2="173.73" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2129" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine2136" x1="0" y1="173.73" x2="292.635009765625" y2="173.73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2135" x1="0" y1="1" x2="0" y2="173.73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2074" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG2075" class="apexcharts-series" seriesName="seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2097" d="M 0 173.73L 0 112.92450000000001C 14.631750488281249 112.92450000000001 27.173250906808036 125.95425 41.805001395089285 125.95425C 56.43675188337053 125.95425 68.97825230189733 86.86500000000001 83.61000279017857 86.86500000000001C 98.24175327845981 86.86500000000001 110.7832536969866 121.611 125.41500418526785 121.611C 140.0467546735491 121.611 152.58825509207588 34.74600000000001 167.22000558035714 34.74600000000001C 181.8517560686384 34.74600000000001 194.39325648716516 104.238 209.02500697544642 104.238C 223.65675746372767 104.238 236.19825788225444 65.14875 250.8300083705357 65.14875C 265.46175885881695 65.14875 278.0032592773438 91.20825 292.635009765625 91.20825C 292.635009765625 91.20825 292.635009765625 91.20825 292.635009765625 173.73M 292.635009765625 91.20825z" fill="url(#SvgjsLinearGradient2093)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskhsectml2)" pathTo="M 0 173.73L 0 112.92450000000001C 14.631750488281249 112.92450000000001 27.173250906808036 125.95425 41.805001395089285 125.95425C 56.43675188337053 125.95425 68.97825230189733 86.86500000000001 83.61000279017857 86.86500000000001C 98.24175327845981 86.86500000000001 110.7832536969866 121.611 125.41500418526785 121.611C 140.0467546735491 121.611 152.58825509207588 34.74600000000001 167.22000558035714 34.74600000000001C 181.8517560686384 34.74600000000001 194.39325648716516 104.238 209.02500697544642 104.238C 223.65675746372767 104.238 236.19825788225444 65.14875 250.8300083705357 65.14875C 265.46175885881695 65.14875 278.0032592773438 91.20825 292.635009765625 91.20825C 292.635009765625 91.20825 292.635009765625 91.20825 292.635009765625 173.73M 292.635009765625 91.20825z" pathFrom="M -1 217.1625L -1 217.1625L 41.805001395089285 217.1625L 83.61000279017857 217.1625L 125.41500418526785 217.1625L 167.22000558035714 217.1625L 209.02500697544642 217.1625L 250.8300083705357 217.1625L 292.635009765625 217.1625"></path><path id="SvgjsPath2098" d="M 0 112.92450000000001C 14.631750488281249 112.92450000000001 27.173250906808036 125.95425 41.805001395089285 125.95425C 56.43675188337053 125.95425 68.97825230189733 86.86500000000001 83.61000279017857 86.86500000000001C 98.24175327845981 86.86500000000001 110.7832536969866 121.611 125.41500418526785 121.611C 140.0467546735491 121.611 152.58825509207588 34.74600000000001 167.22000558035714 34.74600000000001C 181.8517560686384 34.74600000000001 194.39325648716516 104.238 209.02500697544642 104.238C 223.65675746372767 104.238 236.19825788225444 65.14875 250.8300083705357 65.14875C 265.46175885881695 65.14875 278.0032592773438 91.20825 292.635009765625 91.20825" fill="none" fill-opacity="1" stroke="#696cff" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMaskhsectml2)" pathTo="M 0 112.92450000000001C 14.631750488281249 112.92450000000001 27.173250906808036 125.95425 41.805001395089285 125.95425C 56.43675188337053 125.95425 68.97825230189733 86.86500000000001 83.61000279017857 86.86500000000001C 98.24175327845981 86.86500000000001 110.7832536969866 121.611 125.41500418526785 121.611C 140.0467546735491 121.611 152.58825509207588 34.74600000000001 167.22000558035714 34.74600000000001C 181.8517560686384 34.74600000000001 194.39325648716516 104.238 209.02500697544642 104.238C 223.65675746372767 104.238 236.19825788225444 65.14875 250.8300083705357 65.14875C 265.46175885881695 65.14875 278.0032592773438 91.20825 292.635009765625 91.20825" pathFrom="M -1 217.1625L -1 217.1625L 41.805001395089285 217.1625L 83.61000279017857 217.1625L 125.41500418526785 217.1625L 167.22000558035714 217.1625L 209.02500697544642 217.1625L 250.8300083705357 217.1625L 292.635009765625 217.1625"></path><g id="SvgjsG2076" class="apexcharts-series-markers-wrap" data:realIndex="0"><g id="SvgjsG2078" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskhsectml2)"><circle id="SvgjsCircle2079" r="6" cx="0" cy="112.92450000000001" class="apexcharts-marker no-pointer-events w07e88d7g" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="0" j="0" index="0" default-marker-size="6"></circle><circle id="SvgjsCircle2080" r="6" cx="41.805001395089285" cy="125.95425" class="apexcharts-marker no-pointer-events wyhc6s0m2" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="1" j="1" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2081" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskhsectml2)"><circle id="SvgjsCircle2082" r="6" cx="83.61000279017857" cy="86.86500000000001" class="apexcharts-marker no-pointer-events wipoeqk8" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="2" j="2" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2083" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskhsectml2)"><circle id="SvgjsCircle2084" r="6" cx="125.41500418526785" cy="121.611" class="apexcharts-marker no-pointer-events w85m2a7e5" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="3" j="3" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2085" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskhsectml2)"><circle id="SvgjsCircle2086" r="6" cx="167.22000558035714" cy="34.74600000000001" class="apexcharts-marker no-pointer-events w1ig078hr" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="4" j="4" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2087" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskhsectml2)"><circle id="SvgjsCircle2088" r="6" cx="209.02500697544642" cy="104.238" class="apexcharts-marker no-pointer-events whhohmu0e" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="5" j="5" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2089" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskhsectml2)"><circle id="SvgjsCircle2090" r="6" cx="250.8300083705357" cy="65.14875" class="apexcharts-marker no-pointer-events w574935c7" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="6" j="6" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2091" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMaskhsectml2)"><circle id="SvgjsCircle2092" r="6" cx="292.635009765625" cy="91.20825" class="apexcharts-marker no-pointer-events wqqqhosaa" stroke="#696cff" fill="#ffffff" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="7" j="7" index="0" default-marker-size="6"></circle></g></g></g><g id="SvgjsG2077" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine2137" x1="0" y1="0" x2="292.635009765625" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2138" x1="0" y1="0" x2="292.635009765625" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2139" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2140" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2141" class="apexcharts-point-annotations"></g><rect id="SvgjsRect2142" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect2143" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><rect id="SvgjsRect2070" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG2125" class="apexcharts-yaxis" rel="0" transform="translate(-8, 0)"><g id="SvgjsG2126" class="apexcharts-yaxis-texts-g"></g></g><g id="SvgjsG2068" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 107.5px;"></div><div class="apexcharts-tooltip apexcharts-theme-light"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(105, 108, 255);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
            <div class="d-flex justify-content-center pt-4 gap-2">
              <div class="flex-shrink-0" style="position: relative;">
                <div id="expensesOfWeek" style="min-height: 57.7px;"><div id="apexchartsakemmkrdf" class="apexcharts-canvas apexchartsakemmkrdf apexcharts-theme-light" style="width: 60px; height: 57.7px;"><svg id="SvgjsSvg1861" width="60" height="57.7" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG1863" class="apexcharts-inner apexcharts-graphical" transform="translate(-10, -10)"><defs id="SvgjsDefs1862"><clipPath id="gridRectMaskakemmkrdf"><rect id="SvgjsRect1865" width="86" height="87" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskakemmkrdf"></clipPath><clipPath id="nonForecastMaskakemmkrdf"></clipPath><clipPath id="gridRectMarkerMaskakemmkrdf"><rect id="SvgjsRect1866" width="84" height="89" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><g id="SvgjsG1867" class="apexcharts-radialbar"><g id="SvgjsG1868"><g id="SvgjsG1869" class="apexcharts-tracks"><g id="SvgjsG1870" class="apexcharts-radialbar-track apexcharts-track" rel="1"><path id="apexcharts-radialbarTrack-0" d="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 39.99617740968999 18.098171065291247" fill="none" fill-opacity="1" stroke="rgba(236,238,241,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="2.0408536585365864" stroke-dasharray="0" class="apexcharts-radialbar-area" data:pathOrig="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 39.99617740968999 18.098171065291247"></path></g></g><g id="SvgjsG1872"><g id="SvgjsG1876" class="apexcharts-series apexcharts-radial-series" seriesName="seriesx1" rel="1" data:realIndex="0"><path id="SvgjsPath1877" d="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 22.2810479140526 52.873572242130095" fill="none" fill-opacity="0.85" stroke="rgba(105,108,255,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="4.081707317073173" stroke-dasharray="0" class="apexcharts-radialbar-area apexcharts-radialbar-slice-0" data:angle="234" data:value="65" index="0" j="0" data:pathOrig="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 22.2810479140526 52.873572242130095"></path></g><circle id="SvgjsCircle1873" r="18.881402439024395" cx="40" cy="40" class="apexcharts-radialbar-hollow" fill="transparent"></circle><g id="SvgjsG1874" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)" style="opacity: 1;"><text id="SvgjsText1875" font-family="Helvetica, Arial, sans-serif" x="40" y="45" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#697a8d" class="apexcharts-text apexcharts-datalabel-value" style="font-family: Helvetica, Arial, sans-serif;">$65</text></g></g></g></g><line id="SvgjsLine1878" x1="0" y1="0" x2="80" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine1879" x1="0" y1="0" x2="80" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line></g><g id="SvgjsG1864" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div></div></div>
              <div class="resize-triggers"><div class="expand-trigger"><div style="width: 61px; height: 59px;"></div></div><div class="contract-trigger"></div></div></div>
              <div>
                <p class="mb-n1 mt-1">Expenses This Week</p>
                <small class="text-muted">$39 less than last week</small>
              </div>
            </div>
          <div class="resize-triggers"><div class="expand-trigger"><div style="width: 311px; height: 377px;"></div></div><div class="contract-trigger"></div></div></div>
        </div>
      </div>
    </div>
  </div>
  <!--/ Expense Overview -->

  <!-- Transactions -->
  
  <!--/ Transactions -->
</div>
					</div>
				</div>
			</div>

			<!-- Overlay -->
			<div class="layout-overlay layout-menu-toggle"></div>
		</div>
		<!-- / Layout wrapper -->

		<!-- Core JS -->
		<!-- build:js assets/vendor/js/core.js -->
		<script
			src="${pageContext.request.contextPath }/resources/assets/vendor/libs/jquery/jquery.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/assets/vendor/libs/popper/popper.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/assets/vendor/js/bootstrap.js"></script>
		<script
			src="${pageContext.request.contextPath }/resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

		<script
			src="${pageContext.request.contextPath }/resources/assets/vendor/js/menu.js"></script>
		<!-- endbuild -->

		<!-- Vendors JS -->
		<script
			src="${pageContext.request.contextPath }/resources/assets/vendor/libs/apex-charts/apexcharts.js"></script>

		<!-- Main JS -->
		<script
			src="${pageContext.request.contextPath }/resources/assets/js/main.js"></script>

		<!-- Page JS -->
		<script
			src="${pageContext.request.contextPath }/resources/assets/js/dashboards-analytics.js"></script>

		<!-- Place this tag in your head or just before your close body tag. -->
		<script async="" defer="" src="https://buttons.github.io/buttons.js"></script>


</body>
</html>