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
<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default" data-assets-path="resources/assets/" data-template="vertical-menu-template-free"><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">

    <title>Dashboard - Analytics | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="">

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="resources/assets/img/favicon/favicon.ico">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="">
    <link href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&amp;display=swap" rel="stylesheet">

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="resources/assets/vendor/fonts/boxicons.css">

    <!-- Core CSS -->
    <link rel="stylesheet" href="resources/assets/vendor/css/core.css" class="template-customizer-core-css">
    <link rel="stylesheet" href="resources/assets/vendor/css/theme-default.css" class="template-customizer-theme-css">
    <link rel="stylesheet" href="resources/assets/css/demo.css">

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css">

    <link rel="stylesheet" href="resources/assets/vendor/libs/apex-charts/apex-charts.css">

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="resources/assets/vendor/js/helpers.js"></script><style type="text/css">
.layout-menu-fixed .layout-navbar-full .layout-menu,
.layout-page {
  padding-top: 0px !important;
}
.content-wrapper {
  padding-bottom: 0px !important;
}</style>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="resources/assets/js/config.js"></script>
  <style type="text/css">.apexcharts-canvas {
  position: relative;
  user-select: none;
  /* cannot give overflow: hidden as it will crop tooltips which overflow outside chart area */
}


/* scrollbar is not visible by default for legend, hence forcing the visibility */
.apexcharts-canvas ::-webkit-scrollbar {
  -webkit-appearance: none;
  width: 6px;
}

.apexcharts-canvas ::-webkit-scrollbar-thumb {
  border-radius: 4px;
  background-color: rgba(0, 0, 0, .5);
  box-shadow: 0 0 1px rgba(255, 255, 255, .5);
  -webkit-box-shadow: 0 0 1px rgba(255, 255, 255, .5);
}


.apexcharts-inner {
  position: relative;
}

.apexcharts-text tspan {
  font-family: inherit;
}

.legend-mouseover-inactive {
  transition: 0.15s ease all;
  opacity: 0.20;
}

.apexcharts-series-collapsed {
  opacity: 0;
}

.apexcharts-tooltip {
  border-radius: 5px;
  box-shadow: 2px 2px 6px -4px #999;
  cursor: default;
  font-size: 14px;
  left: 62px;
  opacity: 0;
  pointer-events: none;
  position: absolute;
  top: 20px;
  display: flex;
  flex-direction: column;
  overflow: hidden;
  white-space: nowrap;
  z-index: 12;
  transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-tooltip.apexcharts-theme-light {
  border: 1px solid #e3e3e3;
  background: rgba(255, 255, 255, 0.96);
}

.apexcharts-tooltip.apexcharts-theme-dark {
  color: #fff;
  background: rgba(30, 30, 30, 0.8);
}

.apexcharts-tooltip * {
  font-family: inherit;
}


.apexcharts-tooltip-title {
  padding: 6px;
  font-size: 15px;
  margin-bottom: 4px;
}

.apexcharts-tooltip.apexcharts-theme-light .apexcharts-tooltip-title {
  background: #ECEFF1;
  border-bottom: 1px solid #ddd;
}

.apexcharts-tooltip.apexcharts-theme-dark .apexcharts-tooltip-title {
  background: rgba(0, 0, 0, 0.7);
  border-bottom: 1px solid #333;
}

.apexcharts-tooltip-text-y-value,
.apexcharts-tooltip-text-goals-value,
.apexcharts-tooltip-text-z-value {
  display: inline-block;
  font-weight: 600;
  margin-left: 5px;
}

.apexcharts-tooltip-text-y-label:empty,
.apexcharts-tooltip-text-y-value:empty,
.apexcharts-tooltip-text-goals-label:empty,
.apexcharts-tooltip-text-goals-value:empty,
.apexcharts-tooltip-text-z-value:empty {
  display: none;
}

.apexcharts-tooltip-text-y-value,
.apexcharts-tooltip-text-goals-value,
.apexcharts-tooltip-text-z-value {
  font-weight: 600;
}

.apexcharts-tooltip-text-goals-label, 
.apexcharts-tooltip-text-goals-value {
  padding: 6px 0 5px;
}

.apexcharts-tooltip-goals-group, 
.apexcharts-tooltip-text-goals-label, 
.apexcharts-tooltip-text-goals-value {
  display: flex;
}
.apexcharts-tooltip-text-goals-label:not(:empty),
.apexcharts-tooltip-text-goals-value:not(:empty) {
  margin-top: -6px;
}

.apexcharts-tooltip-marker {
  width: 12px;
  height: 12px;
  position: relative;
  top: 0px;
  margin-right: 10px;
  border-radius: 50%;
}

.apexcharts-tooltip-series-group {
  padding: 0 10px;
  display: none;
  text-align: left;
  justify-content: left;
  align-items: center;
}

.apexcharts-tooltip-series-group.apexcharts-active .apexcharts-tooltip-marker {
  opacity: 1;
}

.apexcharts-tooltip-series-group.apexcharts-active,
.apexcharts-tooltip-series-group:last-child {
  padding-bottom: 4px;
}

.apexcharts-tooltip-series-group-hidden {
  opacity: 0;
  height: 0;
  line-height: 0;
  padding: 0 !important;
}

.apexcharts-tooltip-y-group {
  padding: 6px 0 5px;
}

.apexcharts-tooltip-box, .apexcharts-custom-tooltip {
  padding: 4px 8px;
}

.apexcharts-tooltip-boxPlot {
  display: flex;
  flex-direction: column-reverse;
}

.apexcharts-tooltip-box>div {
  margin: 4px 0;
}

.apexcharts-tooltip-box span.value {
  font-weight: bold;
}

.apexcharts-tooltip-rangebar {
  padding: 5px 8px;
}

.apexcharts-tooltip-rangebar .category {
  font-weight: 600;
  color: #777;
}

.apexcharts-tooltip-rangebar .series-name {
  font-weight: bold;
  display: block;
  margin-bottom: 5px;
}

.apexcharts-xaxistooltip {
  opacity: 0;
  padding: 9px 10px;
  pointer-events: none;
  color: #373d3f;
  font-size: 13px;
  text-align: center;
  border-radius: 2px;
  position: absolute;
  z-index: 10;
  background: #ECEFF1;
  border: 1px solid #90A4AE;
  transition: 0.15s ease all;
}

.apexcharts-xaxistooltip.apexcharts-theme-dark {
  background: rgba(0, 0, 0, 0.7);
  border: 1px solid rgba(0, 0, 0, 0.5);
  color: #fff;
}

.apexcharts-xaxistooltip:after,
.apexcharts-xaxistooltip:before {
  left: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.apexcharts-xaxistooltip:after {
  border-color: rgba(236, 239, 241, 0);
  border-width: 6px;
  margin-left: -6px;
}

.apexcharts-xaxistooltip:before {
  border-color: rgba(144, 164, 174, 0);
  border-width: 7px;
  margin-left: -7px;
}

.apexcharts-xaxistooltip-bottom:after,
.apexcharts-xaxistooltip-bottom:before {
  bottom: 100%;
}

.apexcharts-xaxistooltip-top:after,
.apexcharts-xaxistooltip-top:before {
  top: 100%;
}

.apexcharts-xaxistooltip-bottom:after {
  border-bottom-color: #ECEFF1;
}

.apexcharts-xaxistooltip-bottom:before {
  border-bottom-color: #90A4AE;
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:after {
  border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-bottom.apexcharts-theme-dark:before {
  border-bottom-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top:after {
  border-top-color: #ECEFF1
}

.apexcharts-xaxistooltip-top:before {
  border-top-color: #90A4AE;
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:after {
  border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip-top.apexcharts-theme-dark:before {
  border-top-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-xaxistooltip.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-yaxistooltip {
  opacity: 0;
  padding: 4px 10px;
  pointer-events: none;
  color: #373d3f;
  font-size: 13px;
  text-align: center;
  border-radius: 2px;
  position: absolute;
  z-index: 10;
  background: #ECEFF1;
  border: 1px solid #90A4AE;
}

.apexcharts-yaxistooltip.apexcharts-theme-dark {
  background: rgba(0, 0, 0, 0.7);
  border: 1px solid rgba(0, 0, 0, 0.5);
  color: #fff;
}

.apexcharts-yaxistooltip:after,
.apexcharts-yaxistooltip:before {
  top: 50%;
  border: solid transparent;
  content: " ";
  height: 0;
  width: 0;
  position: absolute;
  pointer-events: none;
}

.apexcharts-yaxistooltip:after {
  border-color: rgba(236, 239, 241, 0);
  border-width: 6px;
  margin-top: -6px;
}

.apexcharts-yaxistooltip:before {
  border-color: rgba(144, 164, 174, 0);
  border-width: 7px;
  margin-top: -7px;
}

.apexcharts-yaxistooltip-left:after,
.apexcharts-yaxistooltip-left:before {
  left: 100%;
}

.apexcharts-yaxistooltip-right:after,
.apexcharts-yaxistooltip-right:before {
  right: 100%;
}

.apexcharts-yaxistooltip-left:after {
  border-left-color: #ECEFF1;
}

.apexcharts-yaxistooltip-left:before {
  border-left-color: #90A4AE;
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:after {
  border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-left.apexcharts-theme-dark:before {
  border-left-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right:after {
  border-right-color: #ECEFF1;
}

.apexcharts-yaxistooltip-right:before {
  border-right-color: #90A4AE;
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:after {
  border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip-right.apexcharts-theme-dark:before {
  border-right-color: rgba(0, 0, 0, 0.5);
}

.apexcharts-yaxistooltip.apexcharts-active {
  opacity: 1;
}

.apexcharts-yaxistooltip-hidden {
  display: none;
}

.apexcharts-xcrosshairs,
.apexcharts-ycrosshairs {
  pointer-events: none;
  opacity: 0;
  transition: 0.15s ease all;
}

.apexcharts-xcrosshairs.apexcharts-active,
.apexcharts-ycrosshairs.apexcharts-active {
  opacity: 1;
  transition: 0.15s ease all;
}

.apexcharts-ycrosshairs-hidden {
  opacity: 0;
}

.apexcharts-selection-rect {
  cursor: move;
}

.svg_select_boundingRect, .svg_select_points_rot {
  pointer-events: none;
  opacity: 0;
  visibility: hidden;
}
.apexcharts-selection-rect + g .svg_select_boundingRect,
.apexcharts-selection-rect + g .svg_select_points_rot {
  opacity: 0;
  visibility: hidden;
}

.apexcharts-selection-rect + g .svg_select_points_l,
.apexcharts-selection-rect + g .svg_select_points_r {
  cursor: ew-resize;
  opacity: 1;
  visibility: visible;
}

.svg_select_points {
  fill: #efefef;
  stroke: #333;
  rx: 2;
}

.apexcharts-svg.apexcharts-zoomable.hovering-zoom {
  cursor: crosshair
}

.apexcharts-svg.apexcharts-zoomable.hovering-pan {
  cursor: move
}

.apexcharts-zoom-icon,
.apexcharts-zoomin-icon,
.apexcharts-zoomout-icon,
.apexcharts-reset-icon,
.apexcharts-pan-icon,
.apexcharts-selection-icon,
.apexcharts-menu-icon,
.apexcharts-toolbar-custom-icon {
  cursor: pointer;
  width: 20px;
  height: 20px;
  line-height: 24px;
  color: #6E8192;
  text-align: center;
}

.apexcharts-zoom-icon svg,
.apexcharts-zoomin-icon svg,
.apexcharts-zoomout-icon svg,
.apexcharts-reset-icon svg,
.apexcharts-menu-icon svg {
  fill: #6E8192;
}

.apexcharts-selection-icon svg {
  fill: #444;
  transform: scale(0.76)
}

.apexcharts-theme-dark .apexcharts-zoom-icon svg,
.apexcharts-theme-dark .apexcharts-zoomin-icon svg,
.apexcharts-theme-dark .apexcharts-zoomout-icon svg,
.apexcharts-theme-dark .apexcharts-reset-icon svg,
.apexcharts-theme-dark .apexcharts-pan-icon svg,
.apexcharts-theme-dark .apexcharts-selection-icon svg,
.apexcharts-theme-dark .apexcharts-menu-icon svg,
.apexcharts-theme-dark .apexcharts-toolbar-custom-icon svg {
  fill: #f3f4f5;
}

.apexcharts-canvas .apexcharts-zoom-icon.apexcharts-selected svg,
.apexcharts-canvas .apexcharts-selection-icon.apexcharts-selected svg,
.apexcharts-canvas .apexcharts-reset-zoom-icon.apexcharts-selected svg {
  fill: #008FFB;
}

.apexcharts-theme-light .apexcharts-selection-icon:not(.apexcharts-selected):hover svg,
.apexcharts-theme-light .apexcharts-zoom-icon:not(.apexcharts-selected):hover svg,
.apexcharts-theme-light .apexcharts-zoomin-icon:hover svg,
.apexcharts-theme-light .apexcharts-zoomout-icon:hover svg,
.apexcharts-theme-light .apexcharts-reset-icon:hover svg,
.apexcharts-theme-light .apexcharts-menu-icon:hover svg {
  fill: #333;
}

.apexcharts-selection-icon,
.apexcharts-menu-icon {
  position: relative;
}

.apexcharts-reset-icon {
  margin-left: 5px;
}

.apexcharts-zoom-icon,
.apexcharts-reset-icon,
.apexcharts-menu-icon {
  transform: scale(0.85);
}

.apexcharts-zoomin-icon,
.apexcharts-zoomout-icon {
  transform: scale(0.7)
}

.apexcharts-zoomout-icon {
  margin-right: 3px;
}

.apexcharts-pan-icon {
  transform: scale(0.62);
  position: relative;
  left: 1px;
  top: 0px;
}

.apexcharts-pan-icon svg {
  fill: #fff;
  stroke: #6E8192;
  stroke-width: 2;
}

.apexcharts-pan-icon.apexcharts-selected svg {
  stroke: #008FFB;
}

.apexcharts-pan-icon:not(.apexcharts-selected):hover svg {
  stroke: #333;
}

.apexcharts-toolbar {
  position: absolute;
  z-index: 11;
  max-width: 176px;
  text-align: right;
  border-radius: 3px;
  padding: 0px 6px 2px 6px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}

.apexcharts-menu {
  background: #fff;
  position: absolute;
  top: 100%;
  border: 1px solid #ddd;
  border-radius: 3px;
  padding: 3px;
  right: 10px;
  opacity: 0;
  min-width: 110px;
  transition: 0.15s ease all;
  pointer-events: none;
}

.apexcharts-menu.apexcharts-menu-open {
  opacity: 1;
  pointer-events: all;
  transition: 0.15s ease all;
}

.apexcharts-menu-item {
  padding: 6px 7px;
  font-size: 12px;
  cursor: pointer;
}

.apexcharts-theme-light .apexcharts-menu-item:hover {
  background: #eee;
}

.apexcharts-theme-dark .apexcharts-menu {
  background: rgba(0, 0, 0, 0.7);
  color: #fff;
}

@media screen and (min-width: 768px) {
  .apexcharts-canvas:hover .apexcharts-toolbar {
    opacity: 1;
  }
}

.apexcharts-datalabel.apexcharts-element-hidden {
  opacity: 0;
}

.apexcharts-pie-label,
.apexcharts-datalabels,
.apexcharts-datalabel,
.apexcharts-datalabel-label,
.apexcharts-datalabel-value {
  cursor: default;
  pointer-events: none;
}

.apexcharts-pie-label-delay {
  opacity: 0;
  animation-name: opaque;
  animation-duration: 0.3s;
  animation-fill-mode: forwards;
  animation-timing-function: ease;
}

.apexcharts-canvas .apexcharts-element-hidden {
  opacity: 0;
}

.apexcharts-hide .apexcharts-series-points {
  opacity: 0;
}

.apexcharts-gridline,
.apexcharts-annotation-rect,
.apexcharts-tooltip .apexcharts-marker,
.apexcharts-area-series .apexcharts-area,
.apexcharts-line,
.apexcharts-zoom-rect,
.apexcharts-toolbar svg,
.apexcharts-area-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
.apexcharts-line-series .apexcharts-series-markers .apexcharts-marker.no-pointer-events,
.apexcharts-radar-series path,
.apexcharts-radar-series polygon {
  pointer-events: none;
}


/* markers */

.apexcharts-marker {
  transition: 0.15s ease all;
}

@keyframes opaque {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}


/* Resize generated styles */

@keyframes resizeanim {
  from {
    opacity: 0;
  }
  to {
    opacity: 0;
  }
}

.resize-triggers {
  animation: 1ms resizeanim;
  visibility: hidden;
  opacity: 0;
}

.resize-triggers,
.resize-triggers>div,
.contract-trigger:before {
  content: " ";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  height: 100%;
  width: 100%;
  overflow: hidden;
}

.resize-triggers>div {
  background: #eee;
  overflow: auto;
}

.contract-trigger:before {
  width: 200%;
  height: 200%;
}</style>
<!-- 관리자 메뉴 active -->
<script type="text/javascript">
window.onload = function(){
	var li = document.getElementById('adminMain');
	li.className += ' active';
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
            <div class="layout-menu-toggle navbar-nav align-items-xl-center me-3 me-xl-0 d-xl-none">
              <a class="nav-item nav-link px-0 me-xl-4" href="javascript:void(0)">
                <i class="bx bx-menu bx-sm"></i>
              </a>
            </div>

            <div class="navbar-nav-right d-flex align-items-center" id="navbar-collapse">
              <!-- Search -->
              
              <!-- /Search -->

              <ul class="navbar-nav flex-row align-items-center ms-auto">
                <!-- Place this tag where you want the button to render. -->
                <li class="nav-item lh-1 me-3">
                  <span></span>
                </li>

                <!-- User -->
                <li class="nav-item navbar-dropdown dropdown-user dropdown">
                  <a class="nav-link dropdown-toggle hide-arrow" href="javascript:void(0);" data-bs-toggle="dropdown">
                    <div class="avatar avatar-online">
                      <img src="resources/assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                    </div>
                  </a>
                  <ul class="dropdown-menu dropdown-menu-end">
                    <li>
                      <a class="dropdown-item" href="#">
                        <div class="d-flex">
                          <div class="flex-shrink-0 me-3">
                            <div class="avatar avatar-online">
                              <img src="resources/assets/img/avatars/1.png" alt="" class="w-px-40 h-auto rounded-circle">
                            </div>
                          </div>
                          <div class="flex-grow-1">
                            <span class="fw-semibold d-block">John Doe</span>
                            <small class="text-muted">Admin</small>
                          </div>
                        </div>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-user me-2"></i>
                        <span class="align-middle">My Profile</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <i class="bx bx-cog me-2"></i>
                        <span class="align-middle">Settings</span>
                      </a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="#">
                        <span class="d-flex align-items-center align-middle">
                          <i class="flex-shrink-0 bx bx-credit-card me-2"></i>
                          <span class="flex-grow-1 align-middle">Billing</span>
                          <span class="flex-shrink-0 badge badge-center rounded-pill bg-danger w-px-20 h-px-20">4</span>
                        </span>
                      </a>
                    </li>
                    <li>
                      <div class="dropdown-divider"></div>
                    </li>
                    <li>
                      <a class="dropdown-item" href="auth-login-basic.html">
                        <i class="bx bx-power-off me-2"></i>
                        <span class="align-middle">Log Out</span>
                      </a>
                    </li>
                  </ul>
                </li>
                <!--/ User -->
              </ul>
            </div>
          </nav>

          <!-- / Navbar -->

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="row">
                <div class="col-lg-8 mb-4 order-0">
                  <div class="card">
                    <div class="d-flex align-items-end row">
                      <div class="col-sm-7">
                        <div class="card-body">
                          <h5 class="card-title text-primary">Congratulations John! 🎉</h5>
                          <p class="mb-4">
                            You have done <span class="fw-bold">72%</span> more sales today. Check your new badge in
                            your profile.
                          </p>

                          <a href="javascript:;" class="btn btn-sm btn-outline-primary">View Badges</a>
                        </div>
                      </div>
                      <div class="col-sm-5 text-center text-sm-left">
                        <div class="card-body pb-0 px-0 px-md-4">
                          <img src="resources/assets/img/illustrations/man-with-laptop-light.png" height="140" alt="View Badge User" data-app-dark-img="illustrations/man-with-laptop-dark.png" data-app-light-img="illustrations/man-with-laptop-light.png">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-4 col-md-4 order-1">
                  <div class="row">
                    <div class="col-lg-6 col-md-12 col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="resources/assets/img/icons/unicons/chart-success.png" alt="chart success" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt3" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt3">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span class="fw-semibold d-block mb-1">Profit</span>
                          <h3 class="card-title mb-2">$12,628</h3>
                          <small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +72.80%</small>
                        </div>
                      </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="resources/assets/img/icons/unicons/wallet-info.png" alt="Credit Card" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt6" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt6">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span>Sales</span>
                          <h3 class="card-title text-nowrap mb-1">$4,679</h3>
                          <small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.42%</small>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- Total Revenue -->
                <div class="col-12 col-lg-8 order-2 order-md-3 order-lg-2 mb-4">
                  <div class="card">
                    <div class="row row-bordered g-0">
                      <div class="col-md-8">
                        <h5 class="card-header m-0 me-2 pb-3">Total Revenue</h5>
                        <div id="totalRevenueChart" class="px-2" style="min-height: 315px;"><div id="apexcharts6n1s02b9" class="apexcharts-canvas apexcharts6n1s02b9 apexcharts-theme-light" style="width: 398px; height: 300px;"><svg id="SvgjsSvg2156" width="398" height="300" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><foreignObject x="0" y="0" width="398" height="300"><div class="apexcharts-legend apexcharts-align-left apx-legend-position-top" xmlns="http://www.w3.org/1999/xhtml" style="right: 0px; position: absolute; left: 0px; top: 4px; max-height: 150px;"><div class="apexcharts-legend-series" rel="1" seriesname="2021" data:collapsed="false" style="margin: 2px 10px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="background: rgb(105, 108, 255) !important; color: rgb(105, 108, 255); height: 8px; width: 8px; left: -3px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="2021" data:collapsed="false" style="color: rgb(161, 172, 184); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">2021</span></div><div class="apexcharts-legend-series" rel="2" seriesname="2020" data:collapsed="false" style="margin: 2px 10px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="background: rgb(3, 195, 236) !important; color: rgb(3, 195, 236); height: 8px; width: 8px; left: -3px; top: 0px; border-width: 0px; border-color: rgb(255, 255, 255); border-radius: 12px;"></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="2020" data:collapsed="false" style="color: rgb(161, 172, 184); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">2020</span></div></div><style type="text/css">	
    	
      .apexcharts-legend {	
        display: flex;	
        overflow: auto;	
        padding: 0 10px;	
      }	
      .apexcharts-legend.apx-legend-position-bottom, .apexcharts-legend.apx-legend-position-top {	
        flex-wrap: wrap	
      }	
      .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {	
        flex-direction: column;	
        bottom: 0;	
      }	
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-left, .apexcharts-legend.apx-legend-position-top.apexcharts-align-left, .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {	
        justify-content: flex-start;	
      }	
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-center, .apexcharts-legend.apx-legend-position-top.apexcharts-align-center {	
        justify-content: center;  	
      }	
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-right, .apexcharts-legend.apx-legend-position-top.apexcharts-align-right {	
        justify-content: flex-end;	
      }	
      .apexcharts-legend-series {	
        cursor: pointer;	
        line-height: normal;	
      }	
      .apexcharts-legend.apx-legend-position-bottom .apexcharts-legend-series, .apexcharts-legend.apx-legend-position-top .apexcharts-legend-series{	
        display: flex;	
        align-items: center;	
      }	
      .apexcharts-legend-text {	
        position: relative;	
        font-size: 14px;	
      }	
      .apexcharts-legend-text *, .apexcharts-legend-marker * {	
        pointer-events: none;	
      }	
      .apexcharts-legend-marker {	
        position: relative;	
        display: inline-block;	
        cursor: pointer;	
        margin-right: 3px;	
        border-style: solid;
      }	
      	
      .apexcharts-legend.apexcharts-align-right .apexcharts-legend-series, .apexcharts-legend.apexcharts-align-left .apexcharts-legend-series{	
        display: inline-block;	
      }	
      .apexcharts-legend-series.apexcharts-no-click {	
        cursor: auto;	
      }	
      .apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series {	
        display: none !important;	
      }	
      .apexcharts-inactive-legend {	
        opacity: 0.45;	
      }</style></foreignObject><g id="SvgjsG2158" class="apexcharts-inner apexcharts-graphical" transform="translate(53.796875, 51)"><defs id="SvgjsDefs2157"><linearGradient id="SvgjsLinearGradient2162" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop2163" stop-opacity="0.4" stop-color="rgba(216,227,240,0.4)" offset="0"></stop><stop id="SvgjsStop2164" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop><stop id="SvgjsStop2165" stop-opacity="0.5" stop-color="rgba(190,209,230,0.5)" offset="1"></stop></linearGradient><clipPath id="gridRectMask6n1s02b9"><rect id="SvgjsRect2167" width="334.203125" height="223.73" x="-5" y="-3" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMask6n1s02b9"></clipPath><clipPath id="nonForecastMask6n1s02b9"></clipPath><clipPath id="gridRectMarkerMask6n1s02b9"><rect id="SvgjsRect2168" width="328.203125" height="221.73" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><rect id="SvgjsRect2166" width="22.231071428571433" height="217.73" x="283.68524117606023" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke-dasharray="3" fill="url(#SvgjsLinearGradient2162)" class="apexcharts-xcrosshairs" y2="217.73" filter="none" fill-opacity="0.9" x1="283.68524117606023" x2="283.68524117606023"></rect><g id="SvgjsG2188" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2189" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText2191" font-family="Helvetica, Arial, sans-serif" x="23.157366071428573" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2192">Jan</tspan><title>Jan</title></text><text id="SvgjsText2194" font-family="Helvetica, Arial, sans-serif" x="69.47209821428572" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2195">Feb</tspan><title>Feb</title></text><text id="SvgjsText2197" font-family="Helvetica, Arial, sans-serif" x="115.78683035714288" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2198">Mar</tspan><title>Mar</title></text><text id="SvgjsText2200" font-family="Helvetica, Arial, sans-serif" x="162.1015625" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2201">Apr</tspan><title>Apr</title></text><text id="SvgjsText2203" font-family="Helvetica, Arial, sans-serif" x="208.41629464285714" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2204">May</tspan><title>May</title></text><text id="SvgjsText2206" font-family="Helvetica, Arial, sans-serif" x="254.7310267857143" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2207">Jun</tspan><title>Jun</title></text><text id="SvgjsText2209" font-family="Helvetica, Arial, sans-serif" x="301.0457589285715" y="246.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2210">Jul</tspan><title>Jul</title></text></g></g><g id="SvgjsG2225" class="apexcharts-grid"><g id="SvgjsG2226" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine2228" x1="0" y1="0" x2="324.203125" y2="0" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2229" x1="0" y1="43.546" x2="324.203125" y2="43.546" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2230" x1="0" y1="87.092" x2="324.203125" y2="87.092" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2231" x1="0" y1="130.638" x2="324.203125" y2="130.638" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2232" x1="0" y1="174.184" x2="324.203125" y2="174.184" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2233" x1="0" y1="217.73" x2="324.203125" y2="217.73" stroke="#eceef1" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2227" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine2235" x1="0" y1="217.73" x2="324.203125" y2="217.73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2234" x1="0" y1="1" x2="0" y2="217.73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2169" class="apexcharts-bar-series apexcharts-plot-series"><g id="SvgjsG2170" class="apexcharts-series" seriesName="2021" rel="1" data:realIndex="0"><path id="SvgjsPath2172" d="M 12.041830357142857 120.638L 12.041830357142857 62.255200000000016Q 12.041830357142857 52.255200000000016 22.041830357142857 52.255200000000016L 18.27290178571429 52.255200000000016Q 28.27290178571429 52.255200000000016 28.27290178571429 62.255200000000016L 28.27290178571429 62.255200000000016L 28.27290178571429 120.638Q 28.27290178571429 130.638 18.27290178571429 130.638L 22.041830357142857 130.638Q 12.041830357142857 130.638 12.041830357142857 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 12.041830357142857 120.638L 12.041830357142857 62.255200000000016Q 12.041830357142857 52.255200000000016 22.041830357142857 52.255200000000016L 18.27290178571429 52.255200000000016Q 28.27290178571429 52.255200000000016 28.27290178571429 62.255200000000016L 28.27290178571429 62.255200000000016L 28.27290178571429 120.638Q 28.27290178571429 130.638 18.27290178571429 130.638L 22.041830357142857 130.638Q 12.041830357142857 130.638 12.041830357142857 120.638z" pathFrom="M 12.041830357142857 120.638L 12.041830357142857 120.638L 28.27290178571429 120.638L 28.27290178571429 120.638L 28.27290178571429 120.638L 28.27290178571429 120.638L 28.27290178571429 120.638L 12.041830357142857 120.638" cy="52.255200000000016" cx="55.3565625" j="0" val="18" barHeight="78.38279999999999" barWidth="22.231071428571433"></path><path id="SvgjsPath2173" d="M 58.3565625 120.638L 58.3565625 110.15580000000001Q 58.3565625 100.15580000000001 68.3565625 100.15580000000001L 64.58763392857144 100.15580000000001Q 74.58763392857144 100.15580000000001 74.58763392857144 110.15580000000001L 74.58763392857144 110.15580000000001L 74.58763392857144 120.638Q 74.58763392857144 130.638 64.58763392857144 130.638L 68.3565625 130.638Q 58.3565625 130.638 58.3565625 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 58.3565625 120.638L 58.3565625 110.15580000000001Q 58.3565625 100.15580000000001 68.3565625 100.15580000000001L 64.58763392857144 100.15580000000001Q 74.58763392857144 100.15580000000001 74.58763392857144 110.15580000000001L 74.58763392857144 110.15580000000001L 74.58763392857144 120.638Q 74.58763392857144 130.638 64.58763392857144 130.638L 68.3565625 130.638Q 58.3565625 130.638 58.3565625 120.638z" pathFrom="M 58.3565625 120.638L 58.3565625 120.638L 74.58763392857144 120.638L 74.58763392857144 120.638L 74.58763392857144 120.638L 74.58763392857144 120.638L 74.58763392857144 120.638L 58.3565625 120.638" cy="100.15580000000001" cx="101.67129464285715" j="1" val="7" barHeight="30.482199999999995" barWidth="22.231071428571433"></path><path id="SvgjsPath2174" d="M 104.67129464285715 120.638L 104.67129464285715 75.31900000000002Q 104.67129464285715 65.31900000000002 114.67129464285715 65.31900000000002L 110.90236607142859 65.31900000000002Q 120.90236607142859 65.31900000000002 120.90236607142859 75.31900000000002L 120.90236607142859 75.31900000000002L 120.90236607142859 120.638Q 120.90236607142859 130.638 110.90236607142859 130.638L 114.67129464285715 130.638Q 104.67129464285715 130.638 104.67129464285715 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 104.67129464285715 120.638L 104.67129464285715 75.31900000000002Q 104.67129464285715 65.31900000000002 114.67129464285715 65.31900000000002L 110.90236607142859 65.31900000000002Q 120.90236607142859 65.31900000000002 120.90236607142859 75.31900000000002L 120.90236607142859 75.31900000000002L 120.90236607142859 120.638Q 120.90236607142859 130.638 110.90236607142859 130.638L 114.67129464285715 130.638Q 104.67129464285715 130.638 104.67129464285715 120.638z" pathFrom="M 104.67129464285715 120.638L 104.67129464285715 120.638L 120.90236607142859 120.638L 120.90236607142859 120.638L 120.90236607142859 120.638L 120.90236607142859 120.638L 120.90236607142859 120.638L 104.67129464285715 120.638" cy="65.31900000000002" cx="147.9860267857143" j="2" val="15" barHeight="65.31899999999999" barWidth="22.231071428571433"></path><path id="SvgjsPath2175" d="M 150.9860267857143 120.638L 150.9860267857143 14.35460000000002Q 150.9860267857143 4.354600000000019 160.9860267857143 4.354600000000019L 157.21709821428573 4.354600000000019Q 167.21709821428573 4.354600000000019 167.21709821428573 14.35460000000002L 167.21709821428573 14.35460000000002L 167.21709821428573 120.638Q 167.21709821428573 130.638 157.21709821428573 130.638L 160.9860267857143 130.638Q 150.9860267857143 130.638 150.9860267857143 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 150.9860267857143 120.638L 150.9860267857143 14.35460000000002Q 150.9860267857143 4.354600000000019 160.9860267857143 4.354600000000019L 157.21709821428573 4.354600000000019Q 167.21709821428573 4.354600000000019 167.21709821428573 14.35460000000002L 167.21709821428573 14.35460000000002L 167.21709821428573 120.638Q 167.21709821428573 130.638 157.21709821428573 130.638L 160.9860267857143 130.638Q 150.9860267857143 130.638 150.9860267857143 120.638z" pathFrom="M 150.9860267857143 120.638L 150.9860267857143 120.638L 167.21709821428573 120.638L 167.21709821428573 120.638L 167.21709821428573 120.638L 167.21709821428573 120.638L 167.21709821428573 120.638L 150.9860267857143 120.638" cy="4.354600000000019" cx="194.30075892857144" j="3" val="29" barHeight="126.28339999999999" barWidth="22.231071428571433"></path><path id="SvgjsPath2176" d="M 197.30075892857144 120.638L 197.30075892857144 62.255200000000016Q 197.30075892857144 52.255200000000016 207.30075892857144 52.255200000000016L 203.53183035714287 52.255200000000016Q 213.53183035714287 52.255200000000016 213.53183035714287 62.255200000000016L 213.53183035714287 62.255200000000016L 213.53183035714287 120.638Q 213.53183035714287 130.638 203.53183035714287 130.638L 207.30075892857144 130.638Q 197.30075892857144 130.638 197.30075892857144 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 197.30075892857144 120.638L 197.30075892857144 62.255200000000016Q 197.30075892857144 52.255200000000016 207.30075892857144 52.255200000000016L 203.53183035714287 52.255200000000016Q 213.53183035714287 52.255200000000016 213.53183035714287 62.255200000000016L 213.53183035714287 62.255200000000016L 213.53183035714287 120.638Q 213.53183035714287 130.638 203.53183035714287 130.638L 207.30075892857144 130.638Q 197.30075892857144 130.638 197.30075892857144 120.638z" pathFrom="M 197.30075892857144 120.638L 197.30075892857144 120.638L 213.53183035714287 120.638L 213.53183035714287 120.638L 213.53183035714287 120.638L 213.53183035714287 120.638L 213.53183035714287 120.638L 197.30075892857144 120.638" cy="52.255200000000016" cx="240.61549107142858" j="4" val="18" barHeight="78.38279999999999" barWidth="22.231071428571433"></path><path id="SvgjsPath2177" d="M 243.61549107142858 120.638L 243.61549107142858 88.3828Q 243.61549107142858 78.3828 253.61549107142858 78.3828L 249.8465625 78.3828Q 259.8465625 78.3828 259.8465625 88.3828L 259.8465625 88.3828L 259.8465625 120.638Q 259.8465625 130.638 249.8465625 130.638L 253.61549107142858 130.638Q 243.61549107142858 130.638 243.61549107142858 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 243.61549107142858 120.638L 243.61549107142858 88.3828Q 243.61549107142858 78.3828 253.61549107142858 78.3828L 249.8465625 78.3828Q 259.8465625 78.3828 259.8465625 88.3828L 259.8465625 88.3828L 259.8465625 120.638Q 259.8465625 130.638 249.8465625 130.638L 253.61549107142858 130.638Q 243.61549107142858 130.638 243.61549107142858 120.638z" pathFrom="M 243.61549107142858 120.638L 243.61549107142858 120.638L 259.8465625 120.638L 259.8465625 120.638L 259.8465625 120.638L 259.8465625 120.638L 259.8465625 120.638L 243.61549107142858 120.638" cy="78.3828" cx="286.9302232142857" j="5" val="12" barHeight="52.255199999999995" barWidth="22.231071428571433"></path><path id="SvgjsPath2178" d="M 289.9302232142857 120.638L 289.9302232142857 101.44660000000002Q 289.9302232142857 91.44660000000002 299.9302232142857 91.44660000000002L 296.1612946428572 91.44660000000002Q 306.1612946428572 91.44660000000002 306.1612946428572 101.44660000000002L 306.1612946428572 101.44660000000002L 306.1612946428572 120.638Q 306.1612946428572 130.638 296.1612946428572 130.638L 299.9302232142857 130.638Q 289.9302232142857 130.638 289.9302232142857 120.638z" fill="rgba(105,108,255,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="0" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 289.9302232142857 120.638L 289.9302232142857 101.44660000000002Q 289.9302232142857 91.44660000000002 299.9302232142857 91.44660000000002L 296.1612946428572 91.44660000000002Q 306.1612946428572 91.44660000000002 306.1612946428572 101.44660000000002L 306.1612946428572 101.44660000000002L 306.1612946428572 120.638Q 306.1612946428572 130.638 296.1612946428572 130.638L 299.9302232142857 130.638Q 289.9302232142857 130.638 289.9302232142857 120.638z" pathFrom="M 289.9302232142857 120.638L 289.9302232142857 120.638L 306.1612946428572 120.638L 306.1612946428572 120.638L 306.1612946428572 120.638L 306.1612946428572 120.638L 306.1612946428572 120.638L 289.9302232142857 120.638" cy="91.44660000000002" cx="333.2449553571429" j="6" val="9" barHeight="39.191399999999994" barWidth="22.231071428571433"></path></g><g id="SvgjsG2179" class="apexcharts-series" seriesName="2020" rel="2" data:realIndex="1"><path id="SvgjsPath2181" d="M 12.041830357142857 150.638L 12.041830357142857 187.24779999999998Q 12.041830357142857 197.24779999999998 22.041830357142857 197.24779999999998L 18.27290178571429 197.24779999999998Q 28.27290178571429 197.24779999999998 28.27290178571429 187.24779999999998L 28.27290178571429 187.24779999999998L 28.27290178571429 150.638Q 28.27290178571429 140.638 18.27290178571429 140.638L 22.041830357142857 140.638Q 12.041830357142857 140.638 12.041830357142857 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 12.041830357142857 150.638L 12.041830357142857 187.24779999999998Q 12.041830357142857 197.24779999999998 22.041830357142857 197.24779999999998L 18.27290178571429 197.24779999999998Q 28.27290178571429 197.24779999999998 28.27290178571429 187.24779999999998L 28.27290178571429 187.24779999999998L 28.27290178571429 150.638Q 28.27290178571429 140.638 18.27290178571429 140.638L 22.041830357142857 140.638Q 12.041830357142857 140.638 12.041830357142857 150.638z" pathFrom="M 12.041830357142857 150.638L 12.041830357142857 150.638L 28.27290178571429 150.638L 28.27290178571429 150.638L 28.27290178571429 150.638L 28.27290178571429 150.638L 28.27290178571429 150.638L 12.041830357142857 150.638" cy="177.24779999999998" cx="55.3565625" j="0" val="-13" barHeight="-56.60979999999999" barWidth="22.231071428571433"></path><path id="SvgjsPath2182" d="M 58.3565625 150.638L 58.3565625 209.0208Q 58.3565625 219.0208 68.3565625 219.0208L 64.58763392857144 219.0208Q 74.58763392857144 219.0208 74.58763392857144 209.0208L 74.58763392857144 209.0208L 74.58763392857144 150.638Q 74.58763392857144 140.638 64.58763392857144 140.638L 68.3565625 140.638Q 58.3565625 140.638 58.3565625 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 58.3565625 150.638L 58.3565625 209.0208Q 58.3565625 219.0208 68.3565625 219.0208L 64.58763392857144 219.0208Q 74.58763392857144 219.0208 74.58763392857144 209.0208L 74.58763392857144 209.0208L 74.58763392857144 150.638Q 74.58763392857144 140.638 64.58763392857144 140.638L 68.3565625 140.638Q 58.3565625 140.638 58.3565625 150.638z" pathFrom="M 58.3565625 150.638L 58.3565625 150.638L 74.58763392857144 150.638L 74.58763392857144 150.638L 74.58763392857144 150.638L 74.58763392857144 150.638L 74.58763392857144 150.638L 58.3565625 150.638" cy="199.0208" cx="101.67129464285715" j="1" val="-18" barHeight="-78.38279999999999" barWidth="22.231071428571433"></path><path id="SvgjsPath2183" d="M 104.67129464285715 150.638L 104.67129464285715 169.8294Q 104.67129464285715 179.8294 114.67129464285715 179.8294L 110.90236607142859 179.8294Q 120.90236607142859 179.8294 120.90236607142859 169.8294L 120.90236607142859 169.8294L 120.90236607142859 150.638Q 120.90236607142859 140.638 110.90236607142859 140.638L 114.67129464285715 140.638Q 104.67129464285715 140.638 104.67129464285715 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 104.67129464285715 150.638L 104.67129464285715 169.8294Q 104.67129464285715 179.8294 114.67129464285715 179.8294L 110.90236607142859 179.8294Q 120.90236607142859 179.8294 120.90236607142859 169.8294L 120.90236607142859 169.8294L 120.90236607142859 150.638Q 120.90236607142859 140.638 110.90236607142859 140.638L 114.67129464285715 140.638Q 104.67129464285715 140.638 104.67129464285715 150.638z" pathFrom="M 104.67129464285715 150.638L 104.67129464285715 150.638L 120.90236607142859 150.638L 120.90236607142859 150.638L 120.90236607142859 150.638L 120.90236607142859 150.638L 120.90236607142859 150.638L 104.67129464285715 150.638" cy="159.8294" cx="147.9860267857143" j="2" val="-9" barHeight="-39.191399999999994" barWidth="22.231071428571433"></path><path id="SvgjsPath2184" d="M 150.9860267857143 150.638L 150.9860267857143 191.6024Q 150.9860267857143 201.6024 160.9860267857143 201.6024L 157.21709821428573 201.6024Q 167.21709821428573 201.6024 167.21709821428573 191.6024L 167.21709821428573 191.6024L 167.21709821428573 150.638Q 167.21709821428573 140.638 157.21709821428573 140.638L 160.9860267857143 140.638Q 150.9860267857143 140.638 150.9860267857143 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 150.9860267857143 150.638L 150.9860267857143 191.6024Q 150.9860267857143 201.6024 160.9860267857143 201.6024L 157.21709821428573 201.6024Q 167.21709821428573 201.6024 167.21709821428573 191.6024L 167.21709821428573 191.6024L 167.21709821428573 150.638Q 167.21709821428573 140.638 157.21709821428573 140.638L 160.9860267857143 140.638Q 150.9860267857143 140.638 150.9860267857143 150.638z" pathFrom="M 150.9860267857143 150.638L 150.9860267857143 150.638L 167.21709821428573 150.638L 167.21709821428573 150.638L 167.21709821428573 150.638L 167.21709821428573 150.638L 167.21709821428573 150.638L 150.9860267857143 150.638" cy="181.6024" cx="194.30075892857144" j="3" val="-14" barHeight="-60.96439999999999" barWidth="22.231071428571433"></path><path id="SvgjsPath2185" d="M 197.30075892857144 150.638L 197.30075892857144 152.411Q 197.30075892857144 162.411 207.30075892857144 162.411L 203.53183035714287 162.411Q 213.53183035714287 162.411 213.53183035714287 152.411L 213.53183035714287 152.411L 213.53183035714287 150.638Q 213.53183035714287 140.638 203.53183035714287 140.638L 207.30075892857144 140.638Q 197.30075892857144 140.638 197.30075892857144 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 197.30075892857144 150.638L 197.30075892857144 152.411Q 197.30075892857144 162.411 207.30075892857144 162.411L 203.53183035714287 162.411Q 213.53183035714287 162.411 213.53183035714287 152.411L 213.53183035714287 152.411L 213.53183035714287 150.638Q 213.53183035714287 140.638 203.53183035714287 140.638L 207.30075892857144 140.638Q 197.30075892857144 140.638 197.30075892857144 150.638z" pathFrom="M 197.30075892857144 150.638L 197.30075892857144 150.638L 213.53183035714287 150.638L 213.53183035714287 150.638L 213.53183035714287 150.638L 213.53183035714287 150.638L 213.53183035714287 150.638L 197.30075892857144 150.638" cy="142.411" cx="240.61549107142858" j="4" val="-5" barHeight="-21.772999999999996" barWidth="22.231071428571433"></path><path id="SvgjsPath2186" d="M 243.61549107142858 150.638L 243.61549107142858 204.6662Q 243.61549107142858 214.6662 253.61549107142858 214.6662L 249.8465625 214.6662Q 259.8465625 214.6662 259.8465625 204.6662L 259.8465625 204.6662L 259.8465625 150.638Q 259.8465625 140.638 249.8465625 140.638L 253.61549107142858 140.638Q 243.61549107142858 140.638 243.61549107142858 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 243.61549107142858 150.638L 243.61549107142858 204.6662Q 243.61549107142858 214.6662 253.61549107142858 214.6662L 249.8465625 214.6662Q 259.8465625 214.6662 259.8465625 204.6662L 259.8465625 204.6662L 259.8465625 150.638Q 259.8465625 140.638 249.8465625 140.638L 253.61549107142858 140.638Q 243.61549107142858 140.638 243.61549107142858 150.638z" pathFrom="M 243.61549107142858 150.638L 243.61549107142858 150.638L 259.8465625 150.638L 259.8465625 150.638L 259.8465625 150.638L 259.8465625 150.638L 259.8465625 150.638L 243.61549107142858 150.638" cy="194.6662" cx="286.9302232142857" j="5" val="-17" barHeight="-74.0282" barWidth="22.231071428571433"></path><path id="SvgjsPath2187" d="M 289.9302232142857 150.638L 289.9302232142857 195.957Q 289.9302232142857 205.957 299.9302232142857 205.957L 296.1612946428572 205.957Q 306.1612946428572 205.957 306.1612946428572 195.957L 306.1612946428572 195.957L 306.1612946428572 150.638Q 306.1612946428572 140.638 296.1612946428572 140.638L 299.9302232142857 140.638Q 289.9302232142857 140.638 289.9302232142857 150.638z" fill="rgba(3,195,236,0.85)" fill-opacity="1" stroke="#ffffff" stroke-opacity="1" stroke-linecap="round" stroke-width="6" stroke-dasharray="0" class="apexcharts-bar-area" index="1" clip-path="url(#gridRectMask6n1s02b9)" pathTo="M 289.9302232142857 150.638L 289.9302232142857 195.957Q 289.9302232142857 205.957 299.9302232142857 205.957L 296.1612946428572 205.957Q 306.1612946428572 205.957 306.1612946428572 195.957L 306.1612946428572 195.957L 306.1612946428572 150.638Q 306.1612946428572 140.638 296.1612946428572 140.638L 299.9302232142857 140.638Q 289.9302232142857 140.638 289.9302232142857 150.638z" pathFrom="M 289.9302232142857 150.638L 289.9302232142857 150.638L 306.1612946428572 150.638L 306.1612946428572 150.638L 306.1612946428572 150.638L 306.1612946428572 150.638L 306.1612946428572 150.638L 289.9302232142857 150.638" cy="185.957" cx="333.2449553571429" j="6" val="-15" barHeight="-65.31899999999999" barWidth="22.231071428571433"></path></g><g id="SvgjsG2171" class="apexcharts-datalabels" data:realIndex="0"></g><g id="SvgjsG2180" class="apexcharts-datalabels" data:realIndex="1"></g></g><line id="SvgjsLine2236" x1="0" y1="0" x2="324.203125" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2237" x1="0" y1="0" x2="324.203125" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2238" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2239" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2240" class="apexcharts-point-annotations"></g></g><g id="SvgjsG2211" class="apexcharts-yaxis" rel="0" transform="translate(15.796875, 0)"><g id="SvgjsG2212" class="apexcharts-yaxis-texts-g"><text id="SvgjsText2213" font-family="Helvetica, Arial, sans-serif" x="20" y="52.5" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2214">30</tspan><title>30</title></text><text id="SvgjsText2215" font-family="Helvetica, Arial, sans-serif" x="20" y="96.04599999999999" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2216">20</tspan><title>20</title></text><text id="SvgjsText2217" font-family="Helvetica, Arial, sans-serif" x="20" y="139.59199999999998" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2218">10</tspan><title>10</title></text><text id="SvgjsText2219" font-family="Helvetica, Arial, sans-serif" x="20" y="183.13799999999998" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2220">0</tspan><title>0</title></text><text id="SvgjsText2221" font-family="Helvetica, Arial, sans-serif" x="20" y="226.68399999999997" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2222">-10</tspan><title>-10</title></text><text id="SvgjsText2223" font-family="Helvetica, Arial, sans-serif" x="20" y="270.22999999999996" text-anchor="end" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2224">-20</tspan><title>-20</title></text></g></g><g id="SvgjsG2159" class="apexcharts-annotations"></g></svg><div class="apexcharts-tooltip apexcharts-theme-light" style="left: 259.801px; top: 106.641px;"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">Jul</div><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: rgba(105, 108, 255, 0.85);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">2021: </span><span class="apexcharts-tooltip-text-y-value">9</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2; display: none;"><span class="apexcharts-tooltip-marker" style="background-color: rgba(105, 108, 255, 0.85);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">2021: </span><span class="apexcharts-tooltip-text-y-value">9</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                      <div class="resize-triggers"><div class="expand-trigger"><div style="width: 415px; height: 377px;"></div></div><div class="contract-trigger"></div></div></div>
                      <div class="col-md-4">
                        <div class="card-body">
                          <div class="text-center">
                            <div class="dropdown">
                              <button class="btn btn-sm btn-outline-primary dropdown-toggle" type="button" id="growthReportId" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                2022
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="growthReportId">
                                <a class="dropdown-item" href="javascript:void(0);">2021</a>
                                <a class="dropdown-item" href="javascript:void(0);">2020</a>
                                <a class="dropdown-item" href="javascript:void(0);">2019</a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div id="growthChart" style="min-height: 154.875px;"><div id="apexchartsfkhx4323" class="apexcharts-canvas apexchartsfkhx4323 apexcharts-theme-light" style="width: 207px; height: 154.875px;"><svg id="SvgjsSvg2241" width="207" height="154.875" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2243" class="apexcharts-inner apexcharts-graphical" transform="translate(-3.5, -25)"><defs id="SvgjsDefs2242"><clipPath id="gridRectMaskfkhx4323"><rect id="SvgjsRect2245" width="222" height="285" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskfkhx4323"></clipPath><clipPath id="nonForecastMaskfkhx4323"></clipPath><clipPath id="gridRectMarkerMaskfkhx4323"><rect id="SvgjsRect2246" width="220" height="287" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient2251" x1="1" y1="0" x2="0" y2="1"><stop id="SvgjsStop2252" stop-opacity="1" stop-color="rgba(105,108,255,1)" offset="0.3"></stop><stop id="SvgjsStop2253" stop-opacity="0.6" stop-color="rgba(255,255,255,0.6)" offset="0.7"></stop><stop id="SvgjsStop2254" stop-opacity="0.6" stop-color="rgba(255,255,255,0.6)" offset="1"></stop></linearGradient><linearGradient id="SvgjsLinearGradient2262" x1="1" y1="0" x2="0" y2="1"><stop id="SvgjsStop2263" stop-opacity="1" stop-color="rgba(105,108,255,1)" offset="0.3"></stop><stop id="SvgjsStop2264" stop-opacity="0.6" stop-color="rgba(105,108,255,0.6)" offset="0.7"></stop><stop id="SvgjsStop2265" stop-opacity="0.6" stop-color="rgba(105,108,255,0.6)" offset="1"></stop></linearGradient></defs><g id="SvgjsG2247" class="apexcharts-radialbar"><g id="SvgjsG2248"><g id="SvgjsG2249" class="apexcharts-tracks"><g id="SvgjsG2250" class="apexcharts-radialbar-track apexcharts-track" rel="1"><path id="apexcharts-radialbarTrack-0" d="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 142.16493902439026 167.17541022773656" fill="none" fill-opacity="1" stroke="rgba(255,255,255,0.85)" stroke-opacity="1" stroke-linecap="butt" stroke-width="17.357317073170734" stroke-dasharray="0" class="apexcharts-radialbar-area" data:pathOrig="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 142.16493902439026 167.17541022773656"></path></g></g><g id="SvgjsG2256"><g id="SvgjsG2261" class="apexcharts-series apexcharts-radial-series" seriesName="Growth" rel="1" data:realIndex="0"><path id="SvgjsPath2266" d="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 175.95555982735613 100.85758285229481" fill="none" fill-opacity="0.85" stroke="url(#SvgjsLinearGradient2262)" stroke-opacity="1" stroke-linecap="butt" stroke-width="17.357317073170734" stroke-dasharray="5" class="apexcharts-radialbar-area apexcharts-radialbar-slice-0" data:angle="234" data:value="78" index="0" j="0" data:pathOrig="M 73.83506097560974 167.17541022773656 A 68.32987804878049 68.32987804878049 0 1 1 175.95555982735613 100.85758285229481"></path></g><circle id="SvgjsCircle2257" r="54.65121951219512" cx="108" cy="108" class="apexcharts-radialbar-hollow" fill="transparent"></circle><g id="SvgjsG2258" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)" style="opacity: 1;"><text id="SvgjsText2259" font-family="Public Sans" x="108" y="123" text-anchor="middle" dominant-baseline="auto" font-size="15px" font-weight="500" fill="#566a7f" class="apexcharts-text apexcharts-datalabel-label" style="font-family: &quot;Public Sans&quot;;">Growth</text><text id="SvgjsText2260" font-family="Public Sans" x="108" y="99" text-anchor="middle" dominant-baseline="auto" font-size="22px" font-weight="500" fill="#566a7f" class="apexcharts-text apexcharts-datalabel-value" style="font-family: &quot;Public Sans&quot;;">78%</text></g></g></g></g><line id="SvgjsLine2267" x1="0" y1="0" x2="216" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2268" x1="0" y1="0" x2="216" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line></g><g id="SvgjsG2244" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div></div></div>
                        <div class="text-center fw-semibold pt-3 mb-2">62% Company Growth</div>

                        <div class="d-flex px-xxl-4 px-lg-2 p-4 gap-xxl-3 gap-lg-1 gap-3 justify-content-between">
                          <div class="d-flex">
                            <div class="me-2">
                              <span class="badge bg-label-primary p-2"><i class="bx bx-dollar text-primary"></i></span>
                            </div>
                            <div class="d-flex flex-column">
                              <small>2022</small>
                              <h6 class="mb-0">$32.5k</h6>
                            </div>
                          </div>
                          <div class="d-flex">
                            <div class="me-2">
                              <span class="badge bg-label-info p-2"><i class="bx bx-wallet text-info"></i></span>
                            </div>
                            <div class="d-flex flex-column">
                              <small>2021</small>
                              <h6 class="mb-0">$41.2k</h6>
                            </div>
                          </div>
                        </div>
                      <div class="resize-triggers"><div class="expand-trigger"><div style="width: 208px; height: 377px;"></div></div><div class="contract-trigger"></div></div></div>
                    </div>
                  </div>
                </div>
                <!--/ Total Revenue -->
                <div class="col-12 col-md-8 col-lg-4 order-3 order-md-2">
                  <div class="row">
                    <div class="col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="resources/assets/img/icons/unicons/paypal.png" alt="Credit Card" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt4" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu dropdown-menu-end" aria-labelledby="cardOpt4">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span class="d-block mb-1">Payments</span>
                          <h3 class="card-title text-nowrap mb-2">$2,456</h3>
                          <small class="text-danger fw-semibold"><i class="bx bx-down-arrow-alt"></i> -14.82%</small>
                        </div>
                      </div>
                    </div>
                    <div class="col-6 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="card-title d-flex align-items-start justify-content-between">
                            <div class="avatar flex-shrink-0">
                              <img src="resources/assets/img/icons/unicons/cc-primary.png" alt="Credit Card" class="rounded">
                            </div>
                            <div class="dropdown">
                              <button class="btn p-0" type="button" id="cardOpt1" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="bx bx-dots-vertical-rounded"></i>
                              </button>
                              <div class="dropdown-menu" aria-labelledby="cardOpt1">
                                <a class="dropdown-item" href="javascript:void(0);">View More</a>
                                <a class="dropdown-item" href="javascript:void(0);">Delete</a>
                              </div>
                            </div>
                          </div>
                          <span class="fw-semibold d-block mb-1">Transactions</span>
                          <h3 class="card-title mb-2">$14,857</h3>
                          <small class="text-success fw-semibold"><i class="bx bx-up-arrow-alt"></i> +28.14%</small>
                        </div>
                      </div>
                    </div>
                    <!-- </div>
    <div class="row"> -->
                    <div class="col-12 mb-4">
                      <div class="card">
                        <div class="card-body">
                          <div class="d-flex justify-content-between flex-sm-row flex-column gap-3" style="position: relative;">
                            <div class="d-flex flex-sm-column flex-row align-items-start justify-content-between">
                              <div class="card-title">
                                <h5 class="text-nowrap mb-2">Profile Report</h5>
                                <span class="badge bg-label-warning rounded-pill">Year 2021</span>
                              </div>
                              <div class="mt-sm-auto">
                                <small class="text-success text-nowrap fw-semibold"><i class="bx bx-chevron-up"></i> 68.2%</small>
                                <h3 class="mb-0">$84,686k</h3>
                              </div>
                            </div>
                            <div id="profileReportChart" style="min-height: 80px;"><div id="apexchartswtmhb13w" class="apexcharts-canvas apexchartswtmhb13w apexcharts-theme-light" style="width: 112px; height: 80px;"><svg id="SvgjsSvg2270" width="112" height="80" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2272" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 0)"><defs id="SvgjsDefs2271"><clipPath id="gridRectMaskwtmhb13w"><rect id="SvgjsRect2277" width="113" height="85" x="-4.5" y="-2.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskwtmhb13w"></clipPath><clipPath id="nonForecastMaskwtmhb13w"></clipPath><clipPath id="gridRectMarkerMaskwtmhb13w"><rect id="SvgjsRect2278" width="108" height="84" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><filter id="SvgjsFilter2284" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood2285" flood-color="#ffab00" flood-opacity="0.15" result="SvgjsFeFlood2285Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite2286" in="SvgjsFeFlood2285Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite2286Out"></feComposite><feOffset id="SvgjsFeOffset2287" dx="5" dy="10" result="SvgjsFeOffset2287Out" in="SvgjsFeComposite2286Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur2288" stdDeviation="3 " result="SvgjsFeGaussianBlur2288Out" in="SvgjsFeOffset2287Out"></feGaussianBlur><feMerge id="SvgjsFeMerge2289" result="SvgjsFeMerge2289Out" in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode2290" in="SvgjsFeGaussianBlur2288Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode2291" in="[object Arguments]"></feMergeNode></feMerge><feBlend id="SvgjsFeBlend2292" in="SourceGraphic" in2="SvgjsFeMerge2289Out" mode="normal" result="SvgjsFeBlend2292Out"></feBlend></filter></defs><line id="SvgjsLine2276" x1="61.9" y1="0" x2="61.9" y2="80" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="61.9" y="0" width="1" height="80" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG2293" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2294" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"></g></g><g id="SvgjsG2302" class="apexcharts-grid"><g id="SvgjsG2303" class="apexcharts-gridlines-horizontal" style="display: none;"><line id="SvgjsLine2305" x1="0" y1="0" x2="104" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2306" x1="0" y1="20" x2="104" y2="20" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2307" x1="0" y1="40" x2="104" y2="40" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2308" x1="0" y1="60" x2="104" y2="60" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2309" x1="0" y1="80" x2="104" y2="80" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2304" class="apexcharts-gridlines-vertical" style="display: none;"></g><line id="SvgjsLine2311" x1="0" y1="80" x2="104" y2="80" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2310" x1="0" y1="1" x2="0" y2="80" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2279" class="apexcharts-line-series apexcharts-plot-series"><g id="SvgjsG2280" class="apexcharts-series" seriesName="seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2283" d="M 0 76C 7.2799999999999985 76 13.52 12 20.799999999999997 12C 28.079999999999995 12 34.31999999999999 62 41.599999999999994 62C 48.879999999999995 62 55.12 22 62.4 22C 69.67999999999999 22 75.91999999999999 38 83.19999999999999 38C 90.47999999999999 38 96.72 6 104 6" fill="none" fill-opacity="1" stroke="rgba(255,171,0,0.85)" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-line" index="0" clip-path="url(#gridRectMaskwtmhb13w)" filter="url(#SvgjsFilter2284)" pathTo="M 0 76C 7.2799999999999985 76 13.52 12 20.799999999999997 12C 28.079999999999995 12 34.31999999999999 62 41.599999999999994 62C 48.879999999999995 62 55.12 22 62.4 22C 69.67999999999999 22 75.91999999999999 38 83.19999999999999 38C 90.47999999999999 38 96.72 6 104 6" pathFrom="M -1 120L -1 120L 20.799999999999997 120L 41.599999999999994 120L 62.4 120L 83.19999999999999 120L 104 120"></path><g id="SvgjsG2281" class="apexcharts-series-markers-wrap" data:realIndex="0"><g class="apexcharts-series-markers"><circle id="SvgjsCircle2317" r="0" cx="62.4" cy="22" class="apexcharts-marker w9939tj3gg no-pointer-events" stroke="#ffffff" fill="#ffab00" fill-opacity="1" stroke-width="2" stroke-opacity="0.9" default-marker-size="0"></circle></g></g></g><g id="SvgjsG2282" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine2312" x1="0" y1="0" x2="104" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2313" x1="0" y1="0" x2="104" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2314" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2315" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2316" class="apexcharts-point-annotations"></g></g><rect id="SvgjsRect2275" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG2301" class="apexcharts-yaxis" rel="0" transform="translate(-18, 0)"></g><g id="SvgjsG2273" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 40px;"></div><div class="apexcharts-tooltip apexcharts-theme-light" style="left: -20px; top: 25px;"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">4</div><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(255, 171, 0);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">series-1: </span><span class="apexcharts-tooltip-text-y-value">245</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                          <div class="resize-triggers"><div class="expand-trigger"><div style="width: 250px; height: 117px;"></div></div><div class="contract-trigger"></div></div></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <!-- Order Statistics -->
                <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">Order Statistics</h5>
                        <small class="text-muted">42.82k Total Sales</small>
                      </div>
                      <div class="dropdown">
                        <button class="btn p-0" type="button" id="orederStatistics" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="javascript:void(0);">Select All</a>
                          <a class="dropdown-item" href="javascript:void(0);">Refresh</a>
                          <a class="dropdown-item" href="javascript:void(0);">Share</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="d-flex justify-content-between align-items-center mb-3" style="position: relative;">
                        <div class="d-flex flex-column align-items-center gap-1">
                          <h2 class="mb-2">8,258</h2>
                          <span>Total Orders</span>
                        </div>
                        <div id="orderStatisticsChart" style="min-height: 137.55px;"><div id="apexchartsm8g10q7d" class="apexcharts-canvas apexchartsm8g10q7d apexcharts-theme-light" style="width: 130px; height: 137.55px;"><svg id="SvgjsSvg2318" width="130" height="137.55" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2320" class="apexcharts-inner apexcharts-graphical" transform="translate(-7, 0)"><defs id="SvgjsDefs2319"><clipPath id="gridRectMaskm8g10q7d"><rect id="SvgjsRect2322" width="150" height="173" x="-4.5" y="-2.5" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskm8g10q7d"></clipPath><clipPath id="nonForecastMaskm8g10q7d"></clipPath><clipPath id="gridRectMarkerMaskm8g10q7d"><rect id="SvgjsRect2323" width="145" height="172" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><g id="SvgjsG2324" class="apexcharts-pie"><g id="SvgjsG2325" transform="translate(0, 0) scale(1)"><circle id="SvgjsCircle2326" r="44.835365853658544" cx="70.5" cy="70.5" fill="transparent"></circle><g id="SvgjsG2327" class="apexcharts-slices"><g id="SvgjsG2328" class="apexcharts-series apexcharts-pie-series" seriesName="Electronic" rel="1" data:realIndex="0"><path id="SvgjsPath2329" d="M 70.5 10.71951219512195 A 59.78048780487805 59.78048780487805 0 0 1 97.63977353321047 123.7648046533095 L 90.85483014990785 110.44860348998213 A 44.835365853658544 44.835365853658544 0 0 0 70.5 25.664634146341456 L 70.5 10.71951219512195 z" fill="rgba(105,108,255,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-0" index="0" j="0" data:angle="153" data:startAngle="0" data:strokeWidth="5" data:value="85" data:pathOrig="M 70.5 10.71951219512195 A 59.78048780487805 59.78048780487805 0 0 1 97.63977353321047 123.7648046533095 L 90.85483014990785 110.44860348998213 A 44.835365853658544 44.835365853658544 0 0 0 70.5 25.664634146341456 L 70.5 10.71951219512195 z" stroke="#ffffff"></path></g><g id="SvgjsG2330" class="apexcharts-series apexcharts-pie-series" seriesName="Sports" rel="2" data:realIndex="1"><path id="SvgjsPath2331" d="M 97.63977353321047 123.7648046533095 A 59.78048780487805 59.78048780487805 0 0 1 70.5 130.28048780487805 L 70.5 115.33536585365854 A 44.835365853658544 44.835365853658544 0 0 0 90.85483014990785 110.44860348998213 L 97.63977353321047 123.7648046533095 z" fill="rgba(133,146,163,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-1" index="0" j="1" data:angle="27" data:startAngle="153" data:strokeWidth="5" data:value="15" data:pathOrig="M 97.63977353321047 123.7648046533095 A 59.78048780487805 59.78048780487805 0 0 1 70.5 130.28048780487805 L 70.5 115.33536585365854 A 44.835365853658544 44.835365853658544 0 0 0 90.85483014990785 110.44860348998213 L 97.63977353321047 123.7648046533095 z" stroke="#ffffff"></path></g><g id="SvgjsG2332" class="apexcharts-series apexcharts-pie-series" seriesName="Decor" rel="3" data:realIndex="2"><path id="SvgjsPath2333" d="M 70.5 130.28048780487805 A 59.78048780487805 59.78048780487805 0 0 1 10.71951219512195 70.50000000000001 L 25.664634146341456 70.5 A 44.835365853658544 44.835365853658544 0 0 0 70.5 115.33536585365854 L 70.5 130.28048780487805 z" fill="rgba(3,195,236,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-2" index="0" j="2" data:angle="90" data:startAngle="180" data:strokeWidth="5" data:value="50" data:pathOrig="M 70.5 130.28048780487805 A 59.78048780487805 59.78048780487805 0 0 1 10.71951219512195 70.50000000000001 L 25.664634146341456 70.5 A 44.835365853658544 44.835365853658544 0 0 0 70.5 115.33536585365854 L 70.5 130.28048780487805 z" stroke="#ffffff"></path></g><g id="SvgjsG2334" class="apexcharts-series apexcharts-pie-series" seriesName="Fashion" rel="4" data:realIndex="3"><path id="SvgjsPath2335" d="M 10.71951219512195 70.50000000000001 A 59.78048780487805 59.78048780487805 0 0 1 70.48956633664653 10.719513105630845 L 70.4921747524849 25.664634829223125 A 44.835365853658544 44.835365853658544 0 0 0 25.664634146341456 70.5 L 10.71951219512195 70.50000000000001 z" fill="rgba(113,221,55,1)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="5" stroke-dasharray="0" class="apexcharts-pie-area apexcharts-donut-slice-3" index="0" j="3" data:angle="90" data:startAngle="270" data:strokeWidth="5" data:value="50" data:pathOrig="M 10.71951219512195 70.50000000000001 A 59.78048780487805 59.78048780487805 0 0 1 70.48956633664653 10.719513105630845 L 70.4921747524849 25.664634829223125 A 44.835365853658544 44.835365853658544 0 0 0 25.664634146341456 70.5 L 10.71951219512195 70.50000000000001 z" stroke="#ffffff"></path></g></g></g><g id="SvgjsG2336" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"><text id="SvgjsText2337" font-family="Helvetica, Arial, sans-serif" x="70.5" y="90.5" text-anchor="middle" dominant-baseline="auto" font-size="0.8125rem" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-datalabel-label" style="font-family: Helvetica, Arial, sans-serif;">Weekly</text><text id="SvgjsText2338" font-family="Public Sans" x="70.5" y="71.5" text-anchor="middle" dominant-baseline="auto" font-size="1.5rem" font-weight="400" fill="#566a7f" class="apexcharts-text apexcharts-datalabel-value" style="font-family: &quot;Public Sans&quot;;">38%</text></g></g><line id="SvgjsLine2339" x1="0" y1="0" x2="141" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2340" x1="0" y1="0" x2="141" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line></g><g id="SvgjsG2321" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div><div class="apexcharts-tooltip apexcharts-theme-dark"><div class="apexcharts-tooltip-series-group" style="order: 1;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(105, 108, 255);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 2;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(133, 146, 163);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 3;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(3, 195, 236);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group" style="order: 4;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(113, 221, 55);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label"></span><span class="apexcharts-tooltip-text-y-value"></span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div></div></div>
                      <div class="resize-triggers"><div class="expand-trigger"><div style="width: 250px; height: 139px;"></div></div><div class="contract-trigger"></div></div></div>
                      <ul class="p-0 m-0">
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <span class="avatar-initial rounded bg-label-primary"><i class="bx bx-mobile-alt"></i></span>
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <h6 class="mb-0">Electronic</h6>
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
                              <h6 class="mb-0">Fashion</h6>
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
                              <h6 class="mb-0">Decor</h6>
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
                              <h6 class="mb-0">Sports</h6>
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
                <div class="col-md-6 col-lg-4 order-1 mb-4">
                  <div class="card h-100">
                    <div class="card-header">
                      <ul class="nav nav-pills" role="tablist">
                        <li class="nav-item">
                          <button type="button" class="nav-link active" role="tab" data-bs-toggle="tab" data-bs-target="#navs-tabs-line-card-income" aria-controls="navs-tabs-line-card-income" aria-selected="true">
                            Income
                          </button>
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
                              <img src="resources/assets/img/icons/unicons/wallet.png" alt="User">
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
                          <div id="incomeChart" style="min-height: 215px;"><div id="apexcharts7317nxqo" class="apexcharts-canvas apexcharts7317nxqo apexcharts-theme-light" style="width: 297px; height: 215px;"><svg id="SvgjsSvg2341" width="297" height="215" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg apexcharts-zoomable hovering-zoom" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2343" class="apexcharts-inner apexcharts-graphical" transform="translate(0, 10)"><defs id="SvgjsDefs2342"><clipPath id="gridRectMask7317nxqo"><rect id="SvgjsRect2348" width="285.635009765625" height="175.73" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMask7317nxqo"></clipPath><clipPath id="nonForecastMask7317nxqo"></clipPath><clipPath id="gridRectMarkerMask7317nxqo"><rect id="SvgjsRect2349" width="307.635009765625" height="201.73" x="-14" y="-14" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient2369" x1="0" y1="0" x2="0" y2="1"><stop id="SvgjsStop2370" stop-opacity="0.5" stop-color="rgba(105,108,255,0.5)" offset="0"></stop><stop id="SvgjsStop2371" stop-opacity="0.25" stop-color="rgba(195,196,255,0.25)" offset="0.95"></stop><stop id="SvgjsStop2372" stop-opacity="0.25" stop-color="rgba(195,196,255,0.25)" offset="1"></stop></linearGradient></defs><line id="SvgjsLine2347" x1="279.135009765625" y1="0" x2="279.135009765625" y2="173.73" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="279.135009765625" y="0" width="1" height="173.73" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><g id="SvgjsG2375" class="apexcharts-xaxis" transform="translate(0, 0)"><g id="SvgjsG2376" class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text id="SvgjsText2378" font-family="Helvetica, Arial, sans-serif" x="0" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2379"></tspan><title></title></text><text id="SvgjsText2381" font-family="Helvetica, Arial, sans-serif" x="39.94785853794643" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2382">Jan</tspan><title>Jan</title></text><text id="SvgjsText2384" font-family="Helvetica, Arial, sans-serif" x="79.89571707589286" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2385">Feb</tspan><title>Feb</title></text><text id="SvgjsText2387" font-family="Helvetica, Arial, sans-serif" x="119.84357561383928" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2388">Mar</tspan><title>Mar</title></text><text id="SvgjsText2390" font-family="Helvetica, Arial, sans-serif" x="159.79143415178572" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2391">Apr</tspan><title>Apr</title></text><text id="SvgjsText2393" font-family="Helvetica, Arial, sans-serif" x="199.73929268973217" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2394">May</tspan><title>May</title></text><text id="SvgjsText2396" font-family="Helvetica, Arial, sans-serif" x="239.6871512276786" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2397">Jun</tspan><title>Jun</title></text><text id="SvgjsText2399" font-family="Helvetica, Arial, sans-serif" x="279.63500976562506" y="202.73" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#a1acb8" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan id="SvgjsTspan2400">Jul</tspan><title>Jul</title></text></g></g><g id="SvgjsG2403" class="apexcharts-grid"><g id="SvgjsG2404" class="apexcharts-gridlines-horizontal"><line id="SvgjsLine2406" x1="0" y1="0" x2="279.635009765625" y2="0" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2407" x1="0" y1="43.4325" x2="279.635009765625" y2="43.4325" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2408" x1="0" y1="86.865" x2="279.635009765625" y2="86.865" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2409" x1="0" y1="130.29749999999999" x2="279.635009765625" y2="130.29749999999999" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line><line id="SvgjsLine2410" x1="0" y1="173.73" x2="279.635009765625" y2="173.73" stroke="#eceef1" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g id="SvgjsG2405" class="apexcharts-gridlines-vertical"></g><line id="SvgjsLine2412" x1="0" y1="173.73" x2="279.635009765625" y2="173.73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line id="SvgjsLine2411" x1="0" y1="1" x2="0" y2="173.73" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g id="SvgjsG2350" class="apexcharts-area-series apexcharts-plot-series"><g id="SvgjsG2351" class="apexcharts-series" seriesName="seriesx1" data:longestSeries="true" rel="1" data:realIndex="0"><path id="SvgjsPath2373" d="M 0 173.73L 0 112.92450000000001C 13.981750488281248 112.92450000000001 25.966108049665173 125.95425 39.94785853794642 125.95425C 53.92960902622767 125.95425 65.9139665876116 86.86500000000001 79.89571707589285 86.86500000000001C 93.8774675641741 86.86500000000001 105.86182512555803 121.611 119.84357561383928 121.611C 133.82532610212053 121.611 145.80968366350444 34.74600000000001 159.7914341517857 34.74600000000001C 173.77318464006694 34.74600000000001 185.7575422014509 104.238 199.73929268973214 104.238C 213.7210431780134 104.238 225.7054007393973 65.14875 239.68715122767856 65.14875C 253.6689017159598 65.14875 265.65325927734375 91.20825 279.635009765625 91.20825C 279.635009765625 91.20825 279.635009765625 91.20825 279.635009765625 173.73M 279.635009765625 91.20825z" fill="url(#SvgjsLinearGradient2369)" fill-opacity="1" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask7317nxqo)" pathTo="M 0 173.73L 0 112.92450000000001C 13.981750488281248 112.92450000000001 25.966108049665173 125.95425 39.94785853794642 125.95425C 53.92960902622767 125.95425 65.9139665876116 86.86500000000001 79.89571707589285 86.86500000000001C 93.8774675641741 86.86500000000001 105.86182512555803 121.611 119.84357561383928 121.611C 133.82532610212053 121.611 145.80968366350444 34.74600000000001 159.7914341517857 34.74600000000001C 173.77318464006694 34.74600000000001 185.7575422014509 104.238 199.73929268973214 104.238C 213.7210431780134 104.238 225.7054007393973 65.14875 239.68715122767856 65.14875C 253.6689017159598 65.14875 265.65325927734375 91.20825 279.635009765625 91.20825C 279.635009765625 91.20825 279.635009765625 91.20825 279.635009765625 173.73M 279.635009765625 91.20825z" pathFrom="M -1 217.1625L -1 217.1625L 39.94785853794642 217.1625L 79.89571707589285 217.1625L 119.84357561383928 217.1625L 159.7914341517857 217.1625L 199.73929268973214 217.1625L 239.68715122767856 217.1625L 279.635009765625 217.1625"></path><path id="SvgjsPath2374" d="M 0 112.92450000000001C 13.981750488281248 112.92450000000001 25.966108049665173 125.95425 39.94785853794642 125.95425C 53.92960902622767 125.95425 65.9139665876116 86.86500000000001 79.89571707589285 86.86500000000001C 93.8774675641741 86.86500000000001 105.86182512555803 121.611 119.84357561383928 121.611C 133.82532610212053 121.611 145.80968366350444 34.74600000000001 159.7914341517857 34.74600000000001C 173.77318464006694 34.74600000000001 185.7575422014509 104.238 199.73929268973214 104.238C 213.7210431780134 104.238 225.7054007393973 65.14875 239.68715122767856 65.14875C 253.6689017159598 65.14875 265.65325927734375 91.20825 279.635009765625 91.20825" fill="none" fill-opacity="1" stroke="#696cff" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMask7317nxqo)" pathTo="M 0 112.92450000000001C 13.981750488281248 112.92450000000001 25.966108049665173 125.95425 39.94785853794642 125.95425C 53.92960902622767 125.95425 65.9139665876116 86.86500000000001 79.89571707589285 86.86500000000001C 93.8774675641741 86.86500000000001 105.86182512555803 121.611 119.84357561383928 121.611C 133.82532610212053 121.611 145.80968366350444 34.74600000000001 159.7914341517857 34.74600000000001C 173.77318464006694 34.74600000000001 185.7575422014509 104.238 199.73929268973214 104.238C 213.7210431780134 104.238 225.7054007393973 65.14875 239.68715122767856 65.14875C 253.6689017159598 65.14875 265.65325927734375 91.20825 279.635009765625 91.20825" pathFrom="M -1 217.1625L -1 217.1625L 39.94785853794642 217.1625L 79.89571707589285 217.1625L 119.84357561383928 217.1625L 159.7914341517857 217.1625L 199.73929268973214 217.1625L 239.68715122767856 217.1625L 279.635009765625 217.1625"></path><g id="SvgjsG2352" class="apexcharts-series-markers-wrap" data:realIndex="0"><g id="SvgjsG2354" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask7317nxqo)"><circle id="SvgjsCircle2355" r="6" cx="0" cy="112.92450000000001" class="apexcharts-marker no-pointer-events w8ud3x1e5" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="0" j="0" index="0" default-marker-size="6"></circle><circle id="SvgjsCircle2356" r="6" cx="39.94785853794642" cy="125.95425" class="apexcharts-marker no-pointer-events wtz0slm5k" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="1" j="1" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2357" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask7317nxqo)"><circle id="SvgjsCircle2358" r="6" cx="79.89571707589285" cy="86.86500000000001" class="apexcharts-marker no-pointer-events w9dvkoy5j" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="2" j="2" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2359" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask7317nxqo)"><circle id="SvgjsCircle2360" r="6" cx="119.84357561383928" cy="121.611" class="apexcharts-marker no-pointer-events wk89cnuuph" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="3" j="3" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2361" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask7317nxqo)"><circle id="SvgjsCircle2362" r="6" cx="159.7914341517857" cy="34.74600000000001" class="apexcharts-marker no-pointer-events w2txihr0f" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="4" j="4" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2363" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask7317nxqo)"><circle id="SvgjsCircle2364" r="6" cx="199.73929268973214" cy="104.238" class="apexcharts-marker no-pointer-events wmmm64rsl" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="5" j="5" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2365" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask7317nxqo)"><circle id="SvgjsCircle2366" r="6" cx="239.68715122767856" cy="65.14875" class="apexcharts-marker no-pointer-events w7op2qq7v" stroke="transparent" fill="transparent" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="6" j="6" index="0" default-marker-size="6"></circle></g><g id="SvgjsG2367" class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMask7317nxqo)"><circle id="SvgjsCircle2368" r="6" cx="279.635009765625" cy="91.20825" class="apexcharts-marker no-pointer-events ws4nnwn1p" stroke="#696cff" fill="#ffffff" fill-opacity="1" stroke-width="4" stroke-opacity="0.9" rel="7" j="7" index="0" default-marker-size="6"></circle></g></g></g><g id="SvgjsG2353" class="apexcharts-datalabels" data:realIndex="0"></g></g><line id="SvgjsLine2413" x1="0" y1="0" x2="279.635009765625" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2414" x1="0" y1="0" x2="279.635009765625" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g id="SvgjsG2415" class="apexcharts-yaxis-annotations"></g><g id="SvgjsG2416" class="apexcharts-xaxis-annotations"></g><g id="SvgjsG2417" class="apexcharts-point-annotations"></g><rect id="SvgjsRect2418" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect id="SvgjsRect2419" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></g><rect id="SvgjsRect2346" width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g id="SvgjsG2401" class="apexcharts-yaxis" rel="0" transform="translate(-8, 0)"><g id="SvgjsG2402" class="apexcharts-yaxis-texts-g"></g></g><g id="SvgjsG2344" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend" style="max-height: 107.5px;"></div><div class="apexcharts-tooltip apexcharts-theme-light" style="left: 157.635px; top: 94.7083px;"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">Jul</div><div class="apexcharts-tooltip-series-group apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" style="background-color: rgb(105, 108, 255);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">series-1: </span><span class="apexcharts-tooltip-text-y-value">29</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light" style="left: 260.463px; top: 185.73px;"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px; min-width: 19.1875px;">Jul</div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>
                          <div class="d-flex justify-content-center pt-4 gap-2">
                            <div class="flex-shrink-0" style="position: relative;">
                              <div id="expensesOfWeek" style="min-height: 57.7px;"><div id="apexchartsxrb3ojr6" class="apexcharts-canvas apexchartsxrb3ojr6 apexcharts-theme-light" style="width: 60px; height: 57.7px;"><svg id="SvgjsSvg2137" width="60" height="57.7" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" style="background: transparent;"><g id="SvgjsG2139" class="apexcharts-inner apexcharts-graphical" transform="translate(-10, -10)"><defs id="SvgjsDefs2138"><clipPath id="gridRectMaskxrb3ojr6"><rect id="SvgjsRect2141" width="86" height="87" x="-3" y="-1" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskxrb3ojr6"></clipPath><clipPath id="nonForecastMaskxrb3ojr6"></clipPath><clipPath id="gridRectMarkerMaskxrb3ojr6"><rect id="SvgjsRect2142" width="84" height="89" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath></defs><g id="SvgjsG2143" class="apexcharts-radialbar"><g id="SvgjsG2144"><g id="SvgjsG2145" class="apexcharts-tracks"><g id="SvgjsG2146" class="apexcharts-radialbar-track apexcharts-track" rel="1"><path id="apexcharts-radialbarTrack-0" d="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 39.99617740968999 18.098171065291247" fill="none" fill-opacity="1" stroke="rgba(236,238,241,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="2.0408536585365864" stroke-dasharray="0" class="apexcharts-radialbar-area" data:pathOrig="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 39.99617740968999 18.098171065291247"></path></g></g><g id="SvgjsG2148"><g id="SvgjsG2152" class="apexcharts-series apexcharts-radial-series" seriesName="seriesx1" rel="1" data:realIndex="0"><path id="SvgjsPath2153" d="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 22.2810479140526 52.873572242130095" fill="none" fill-opacity="0.85" stroke="rgba(105,108,255,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="4.081707317073173" stroke-dasharray="0" class="apexcharts-radialbar-area apexcharts-radialbar-slice-0" data:angle="234" data:value="65" index="0" j="0" data:pathOrig="M 40 18.098170731707313 A 21.901829268292687 21.901829268292687 0 1 1 22.2810479140526 52.873572242130095"></path></g><circle id="SvgjsCircle2149" r="18.881402439024395" cx="40" cy="40" class="apexcharts-radialbar-hollow" fill="transparent"></circle><g id="SvgjsG2150" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)" style="opacity: 1;"><text id="SvgjsText2151" font-family="Helvetica, Arial, sans-serif" x="40" y="45" text-anchor="middle" dominant-baseline="auto" font-size="13px" font-weight="400" fill="#697a8d" class="apexcharts-text apexcharts-datalabel-value" style="font-family: Helvetica, Arial, sans-serif;">$65</text></g></g></g></g><line id="SvgjsLine2154" x1="0" y1="0" x2="80" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line id="SvgjsLine2155" x1="0" y1="0" x2="80" y2="0" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line></g><g id="SvgjsG2140" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div></div></div>
                            <div class="resize-triggers"><div class="expand-trigger"><div style="width: 61px; height: 59px;"></div></div><div class="contract-trigger"></div></div></div>
                            <div>
                              <p class="mb-n1 mt-1">Expenses This Week</p>
                              <small class="text-muted">$39 less than last week</small>
                            </div>
                          </div>
                        <div class="resize-triggers"><div class="expand-trigger"><div style="width: 298px; height: 377px;"></div></div><div class="contract-trigger"></div></div></div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--/ Expense Overview -->

                <!-- Transactions -->
                <div class="col-md-6 col-lg-4 order-2 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between">
                      <h5 class="card-title m-0 me-2">Transactions</h5>
                      <div class="dropdown">
                        <button class="btn p-0" type="button" id="transactionID" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="transactionID">
                          <a class="dropdown-item" href="javascript:void(0);">Last 28 Days</a>
                          <a class="dropdown-item" href="javascript:void(0);">Last Month</a>
                          <a class="dropdown-item" href="javascript:void(0);">Last Year</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <ul class="p-0 m-0">
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="resources/assets/img/icons/unicons/paypal.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Paypal</small>
                              <h6 class="mb-0">Send money</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">+82.6</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="resources/assets/img/icons/unicons/wallet.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Wallet</small>
                              <h6 class="mb-0">Mac'D</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">+270.69</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="resources/assets/img/icons/unicons/chart.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Transfer</small>
                              <h6 class="mb-0">Refund</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">+637.91</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="resources/assets/img/icons/unicons/cc-success.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Credit Card</small>
                              <h6 class="mb-0">Ordered Food</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">-838.71</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex mb-4 pb-1">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="resources/assets/img/icons/unicons/wallet.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Wallet</small>
                              <h6 class="mb-0">Starbucks</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">+203.33</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                        <li class="d-flex">
                          <div class="avatar flex-shrink-0 me-3">
                            <img src="resources/assets/img/icons/unicons/cc-warning.png" alt="User" class="rounded">
                          </div>
                          <div class="d-flex w-100 flex-wrap align-items-center justify-content-between gap-2">
                            <div class="me-2">
                              <small class="text-muted d-block mb-1">Mastercard</small>
                              <h6 class="mb-0">Ordered Food</h6>
                            </div>
                            <div class="user-progress d-flex align-items-center gap-1">
                              <h6 class="mb-0">-92.45</h6>
                              <span class="text-muted">USD</span>
                            </div>
                          </div>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
                <!--/ Transactions -->
              </div>
            </div>
            <!-- / Content -->

            <!-- Footer -->
            <footer class="content-footer footer bg-footer-theme">
              <div class="container-xxl d-flex flex-wrap justify-content-between py-2 flex-md-row flex-column">
                <div class="mb-2 mb-md-0">
                  ©
                  <script>
                    document.write(new Date().getFullYear());
                  </script>2023
                  , made with ❤️ by
                  <a href="https://themeselection.com" target="_blank" class="footer-link fw-bolder">ThemeSelection</a>
                </div>
                <div>
                  <a href="https://themeselection.com/license/" class="footer-link me-4" target="_blank">License</a>
                  <a href="https://themeselection.com/" target="_blank" class="footer-link me-4">More Themes</a>

                  <a href="https://themeselection.com/demo/sneat-bootstrap-html-admin-template/documentation/" target="_blank" class="footer-link me-4">Documentation</a>

                  <a href="https://github.com/themeselection/sneat-html-admin-template-free/issues" target="_blank" class="footer-link me-4">Support</a>
                </div>
              </div>
            </footer>
            <!-- / Footer -->

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->
      </div>

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    </div>
    <!-- / Layout wrapper -->

    <div class="buy-now">
      <a href="https://themeselection.com/products/sneat-bootstrap-html-admin-template/" target="_blank" class="btn btn-danger btn-buy-now">Upgrade to Pro</a>
    </div>

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="resources/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="resources/assets/vendor/libs/popper/popper.js"></script>
    <script src="resources/assets/vendor/js/bootstrap.js"></script>
    <script src="resources/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="resources/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->
    <script src="resources/assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="resources/assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="resources/assets/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async="" defer="" src="https://buttons.github.io/buttons.js"></script>
  

<svg id="SvgjsSvg1283" width="2" height="0" xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" style="overflow: hidden; top: -100%; left: -100%; position: absolute; opacity: 0;"><defs id="SvgjsDefs1284"></defs><polyline id="SvgjsPolyline1285" points="0,0"></polyline><path id="SvgjsPath1286" d="M-1 217.1625L-1 217.1625C-1 217.1625 38.662144252232146 217.1625 38.662144252232146 217.1625C38.662144252232146 217.1625 77.32428850446429 217.1625 77.32428850446429 217.1625C77.32428850446429 217.1625 115.98643275669643 217.1625 115.98643275669643 217.1625C115.98643275669643 217.1625 154.64857700892858 217.1625 154.64857700892858 217.1625C154.64857700892858 217.1625 193.31072126116072 217.1625 193.31072126116072 217.1625C193.31072126116072 217.1625 231.97286551339286 217.1625 231.97286551339286 217.1625C231.97286551339286 217.1625 270.635009765625 217.1625 270.635009765625 217.1625C270.635009765625 217.1625 270.635009765625 217.1625 270.635009765625 217.1625 "></path></svg></body></html>