<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="ko" class="show-recent scroll-half-screen">
<head>
<style>
.async-hide {
	opacity: 0 !important
}
</style>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/ec.js"></script>
<script type="text/javascript" async=""
	src="https://static.ads-twitter.com/uwt.js"></script>
<script type="text/javascript" async=""
	src="https://static.wadiz.kr/analytics/client.js"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-RR0JGJWWVS&amp;l=dataLayer&amp;cx=c"></script>
<script async="" charset="utf-8"
	src="//static.dable.io/dist/dablena.min.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-J52ZXRWSBV&amp;l=dataLayer&amp;cx=c"></script>
<script
	src="https://connect.facebook.net/signals/config/1129096333844762?v=2.9.107&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/signals/config/535249203534732?v=2.9.107&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/ko_KR/sdk.js?hash=c5ed6eedd7c19fce19104eabc251b18c"
	async="" crossorigin="anonymous"></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" async=""
	src="https://cdn.channel.io/plugin/ch-plugin-web.js"></script>
<script type="text/javascript" async=""
	src="https://static.ads-twitter.com/uwt.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-7SJRXGV8D7&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-PT3XHNG&amp;l=dataLayer"></script>
<script gtm="GTM-NDMQ9N4" type="text/javascript" async=""
	src="https://www.google-analytics.com/gtm/optimize.js?id=GTM-NFLN3S4"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-KB8BB2C&amp;l=dataLayer"></script>
<script id="facebook-jssdk" src="//connect.facebook.net/ko_KR/sdk.js"></script>
<script async="" src="//www.google-analytics.com/analytics.js"></script>
<script type="text/javascript"
	src="https://js.appboycdn.com/web-sdk/3.2/appboy.min.js" async=""></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-NDMQ9N4"></script>
<title>아이펀드</title>
<link rel="preconnect" href="https://static.wadiz.kr">
<link rel="preconnect" href="https://public-api.wadiz.kr">
<link rel="preconnect" href="https://analytics.wadiz.kr">
<link rel="preconnect" href="https://cdn.wadiz.kr">
<link rel="dns-prefetch" href="https://cdnjs.cloudflare.com">
<link rel="manifest" href="/resources/static/manifest.json">
<script src="https://www.googleoptimize.com/optimize.js?id=OPT-PH33MCR"></script>


<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/wui.c6d769d8.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/css/vendor.5f64dbd5.chunk.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/common.4df0e3de.css">
<link rel="stylesheet"
	href="https://static.wadiz.kr/static/web/layout.b4379730.css">
<script type="text/javascript"
	src="https://static.wadiz.kr/static/web/polyfill.10b5cf52.js"></script>
<script type="text/javascript"
	src="https://static.wadiz.kr/static/web/wui.86acda2a.js"></script>
<!-- <script type="text/javascript" src="https://static.wadiz.kr/static/web/vendor.de8f12c7.js"></script>
 -->
<script type="text/javascript"
	src="https://static.wadiz.kr/static/web/sentry.ccd2b43f.js"></script>
<script type="text/javascript"
	src="https://static.wadiz.kr/static/web/common.68c0bc1a.js"></script>
<!-- <script type="text/javascript" src="https://static.wadiz.kr/static/web/layout.e08e52a2.js"></script>
 -->




<link rel="stylesheet"
	href="https://static.wadiz.kr/main/main.8d1e089b.css">


<link rel="stylesheet" type="text/css"
	href="https://cdn.wadiz.kr/resources/static/editor/4.0.15/froala_editor.pkgd.min.css?20230613">
<link rel="stylesheet" type="text/css"
	href="https://cdn.wadiz.kr/resources/static/editor/4.0.15/froala_custom.css?v=20221122">
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/0.9e265a0e.chunk.css">
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/0.bb2b0517.chunk.js"></script>
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/1.3af1c9c5.chunk.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/2.63d05947.chunk.css">
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/2.422dca70.chunk.js"></script>
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/big-unique-brand~big-unique-brand-collection~comingsoon-main~earlybird-app~planned-app~preorder-main~c63eb3df.8fdfb634.chunk.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/reward-main.53f8380d.chunk.css">
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/reward-main.e8df66b4.chunk.js"></script>
<meta http-equiv="origin-trial"
	content="AymqwRC7u88Y4JPvfIF2F37QKylC04248hLCdJAsh8xgOfe/dVJPV3XS3wLFca1ZMVOtnBfVjaCMTVudWM//5g4AAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjk1MTY3OTk5LCJpc1RoaXJkUGFydHkiOnRydWV9">
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/747260496/?random=1686826681033&amp;cv=11&amp;fst=1686826681033&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45He36c0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.wadiz.kr%2Fweb%2Fwreward%2Fmain&amp;ref=https%3A%2F%2Fwww.wadiz.kr%2Fweb%2Fwpurchase%2Freward%2Fstep10%2F203794%3FrewardId%3D440143&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EC%99%80%EB%94%94%EC%A6%88%20%ED%8E%80%EB%94%A9&amp;auid=494248169.1686823686&amp;rfmt=3&amp;fmt=4"></script>
<script attributionsrc="" type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/664811357/?random=1686826681037&amp;cv=11&amp;fst=1686826681037&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45He36c0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.wadiz.kr%2Fweb%2Fwreward%2Fmain&amp;ref=https%3A%2F%2Fwww.wadiz.kr%2Fweb%2Fwpurchase%2Freward%2Fstep10%2F203794%3FrewardId%3D440143&amp;label=G-KrCNKChMUBEN3ugL0C&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EC%99%80%EB%94%94%EC%A6%88%20%ED%8E%80%EB%94%A9&amp;value=0&amp;bttype=purchase&amp;gclaw=EAIaIQobChMIp4TV_YnF_wIVo8NMAh0RcgycEAAYASAAEgIt-vD_BwE&amp;gac=UA-41051680-1%3AEAIaIQobChMIp4TV_YnF_wIVo8NMAh0RcgycEAAYASAAEgIt-vD_BwE%3BUA-41051680-26%3AEAIaIQobChMIp4TV_YnF_wIVo8NMAh0RcgycEAAYASAAEgIt-vD_BwE%3BUA-64397972-38%3AEAIaIQobChMIp4TV_YnF_wIVo8NMAh0RcgycEAAYASAAEgIt-vD_BwE%3BUA-41051680-12%3AEAIaIQobChMI8uLb84PF_wIVsNdMAh1hGQ6YEAAYASAAEgIjO_D_BwE&amp;auid=494248169.1686823686&amp;rfmt=3&amp;fmt=4"></script>
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/4.faecabf0.chunk.js"></script>
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/vendors~main-page.50fdd196.chunk.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/main-page.99c52467.chunk.css">
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/main-page.c8c3d419.chunk.js"></script>
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/6.0bf47ada.chunk.js"></script>
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/vendors~big-unique-brand~big-unique-brand-collection~equity-main~feed~registration-project~startup-m~9eba3138.807e91ca.chunk.js"></script>
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/vendors~feed~store.8bd638b7.chunk.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/feed.d69c7ee6.chunk.css">
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/feed.37963352.chunk.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/wishes.63fcd4b6.chunk.css">
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/wishes.00f9a7e9.chunk.js"></script>
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/3.53be2506.chunk.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://static.wadiz.kr/main/css/my-wadiz.6cef61db.chunk.css">
<script charset="utf-8"
	src="https://static.wadiz.kr/main/js/my-wadiz.50e32187.chunk.js"></script>
<script src="//rum.beusable.net/script/b180227e095823u236/8038910d93"
	async="" type="text/javascript"></script>
<script src="//ba.beusable.net/script/ba/4ca8f82369" async=""
	type="text/javascript"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/7f85a56ba4.css">
</head>
<body style="overflow: auto;" class="show-gnb">
	<div id="page-container">

		<main id="main-app">
			<div class="web-header">
				<div class="web-header-mobile">
					<header class="header-wrapper">
						<div class="header-container" style="display: flex;">
							<ul class="GNBMobile_container__1OTMW">
								<li class="GNBMobile_item__1b4ZL"><a
									class="GNBMobile_link__t1Y9t GNBMobile_active__3WNf8"
									><svg viewBox="0 0 40 40" focusable="false"
											role="presentation"
											class="withIcon_icon__3VTbq GNBMobile_icon__3OOAF GNBMobile_active__3WNf8 GNBIcon_home__cszmO"
											aria-hidden="true" style="width: 28px; height: 28px;">
											<span class="label">ifund</span></svg><span
										class="GNBMobile_text__2-voS">홈</span></a></li>
								<li class="GNBMobile_item__1b4ZL"><a
									class="GNBMobile_link__t1Y9t" ><svg
											viewBox="0 0 24 24" fill="none" focusable="false"
											role="presentation"
											class="withIcon_icon__3VTbq GNBMobile_icon__3OOAF GNBIcon_feed__1AjUB"
											aria-hidden="true" style="width: 21px; height: 21px;">
											<path fill-rule="evenodd" clip-rule="evenodd"
												d="M23.1 2.4H.9v19.2h22.2V2.4zm-21 18V3.6h19.8v16.8H2.1zM6 10a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3zm-1.5 3.6h15v-1.2h-15v1.2zm8 3h-8v-1.2h8v1.2z"></path></svg><span
										class="GNBMobile_text__2-voS">피드</span></a></li>
								<li class="GNBMobile_item__1b4ZL"><div
										class="GNBMobile_link__t1Y9t">
										<img
											src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iNDAiIGhlaWdodD0iNDAiIHZpZXdCb3g9IjAgMCA0MCA0MCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0icjRzeW8za3R4YSIgZD0iTTAgMGg0MHY0MEgweiIvPgogICAgPC9kZWZzPgogICAgPGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj4KICAgICAgICA8Zz4KICAgICAgICAgICAgPG1hc2sgaWQ9Im1kajRrdnh3amIiIGZpbGw9IiNmZmYiPgogICAgICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjcjRzeW8za3R4YSIvPgogICAgICAgICAgICA8L21hc2s+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0yMCAwQzguOTU0IDAgMCA4Ljk1NSAwIDIwYzAgMTEuMDQ2IDguOTU0IDIwIDIwIDIwczIwLTguOTU0IDIwLTIwQzQwIDguOTU1IDMxLjA0NiAwIDIwIDBtMCAxYzEwLjQ3NyAwIDE5IDguNTIzIDE5IDE5cy04LjUyMyAxOS0xOSAxOVMxIDMwLjQ3NyAxIDIwIDkuNTIzIDEgMjAgMSIgZmlsbD0iIzg2OEU5NiIgbWFzaz0idXJsKCNtZGo0a3Z4d2piKSIvPgogICAgICAgIDwvZz4KICAgICAgICA8cGF0aCBzdHJva2U9IiM4NjhFOTYiIGQ9Ik0yMCAxMXYxOE0yOSAyMEgxMSIvPgogICAgPC9nPgo8L3N2Zz4K"
											alt="">
									</div></li>
								<li class="GNBMobile_item__1b4ZL"><a
									class="GNBMobile_link__t1Y9t"><svg
											viewBox="0 0 32 32" focusable="false" role="presentation"
											class="withIcon_icon__3VTbq GNBMobile_icon__3OOAF"
											aria-hidden="true" style="width: 24px; height: 24px;">
											<path
												d="M22.16 4h-.007a8.142 8.142 0 0 0-6.145 2.79A8.198 8.198 0 0 0 9.76 3.998a7.36 7.36 0 0 0-7.359 7.446c0 5.116 4.64 9.276 11.6 15.596l2 1.76 2-1.76c6.96-6.32 11.6-10.48 11.6-15.6v-.08A7.36 7.36 0 0 0 22.241 4h-.085zm-5.28 21.84l-.88.8-.88-.8h-.08C8.4 19.76 4 15.84 4 11.44l-.001-.082A5.76 5.76 0 0 1 9.928 5.6a6.542 6.542 0 0 1 4.865 2.232l.486.567h1.52l.48-.56a6.548 6.548 0 0 1 4.877-2.24l.084-.001a5.76 5.76 0 0 1 5.76 5.76l-.001.085c0 4.396-4.4 8.316-11.12 14.396z"></path></svg><span
										class="GNBMobile_text__2-voS">찜하기</span></a></li>
								<li class="GNBMobile_item__1b4ZL"><a
									class="GNBMobile_link__t1Y9t"><svg
											viewBox="0 0 40 40" focusable="false" role="presentation"
											class="withIcon_icon__3VTbq GNBMobile_icon__3OOAF"
											aria-hidden="true" style="width: 24px; height: 24px;">
											<path
												d="M20.27 22.3a9.43 9.43 0 1 0-9.42-9.42 9.43 9.43 0 0 0 9.42 9.42zm0-16.76a7.34 7.34 0 1 1-7.34 7.34 7.34 7.34 0 0 1 7.34-7.34zm0 20.05c-6.52 0-15.19 1.09-15.19 10.57h2.08c0-5.95 3.92-8.49 13.11-8.49s13.11 2.54 13.11 8.49h2.08c0-9.48-8.67-10.57-15.19-10.57z"></path>
											<path fill="none" d="M0 0h40v40H0z"></path></svg><span
										class="GNBMobile_text__2-voS">마이와디즈</span></a></li>
							</ul>
							<button class="SearchField_container__2Wc6p" type="button">
								<p>새로운 일상이 필요하신가요?</p>
								<svg viewBox="0 0 40 40" focusable="false" role="presentation"
									class="withIcon_icon__3VTbq SearchField_icon__3MGIS"
									aria-hidden="true" style="width: 24px; height: 24px;">
									<path fill="none" d="M0 0h40v40H0z"></path>
									<path
										d="M29.2 27.91a14.38 14.38 0 1 0-1.42 1.4l7.16 7.15.07.08 1.41-1.41zM18.45 6a12.36 12.36 0 0 1 8.35 3.23 12.24 12.24 0 0 1 4 8.59A12.39 12.39 0 1 1 17.88 6z"></path></svg>
							</button>
							<div class="NotificationButton_container__2nhhV">
								<button class="NotificationButton_btnNotification__2fRCj"
									aria-label="알림">
									<svg viewBox="0 0 40 40" focusable="false" role="presentation"
										class="withIcon_icon__3VTbq withIcon_inline__1lwwX"
										aria-hidden="true">
										<path fill="none" d="M0 0h40v40H0z"></path>
										<path
											d="M36.78 32l-.89-1.56a16.92 16.92 0 0 1-2.18-8.68v-7.12A12.78 12.78 0 0 0 30 5.54a13.86 13.86 0 0 0-9.91-4 14.05 14.05 0 0 0-9.95 4 12.74 12.74 0 0 0-3.76 9.1v7.14a16.92 16.92 0 0 1-2.18 8.68L3.22 32h10.91a5.58 5.58 0 0 0 .2 2.8 5.75 5.75 0 0 0 4.44 3.86 5.52 5.52 0 0 0 1 .09 5.79 5.79 0 0 0 3.71-1.36 5.7 5.7 0 0 0 2-4.38 4.88 4.88 0 0 0-.11-1zM8.37 21.78v-7.14A10.66 10.66 0 0 1 11.52 7 11.81 11.81 0 0 1 20 3.66 11.92 11.92 0 0 1 28.48 7a10.65 10.65 0 0 1 3.14 7.62v7.14a19.52 19.52 0 0 0 1.67 8.16H6.71a19.52 19.52 0 0 0 1.66-8.14zM23.42 33a3.64 3.64 0 0 1-7.11 1.13 3.41 3.41 0 0 1 0-2.14h7a3.18 3.18 0 0 1 .11 1.01z"></path></svg>
								</button>
							</div>
							<div class="PreviewOverlay_container__W6b-E">
								<svg viewBox="0 0 40 40" focusable="false" role="presentation"
									class="withIcon_icon__3VTbq" aria-hidden="true"
									style="width: 24px; height: 24px;">
									<path fill="none" d="M0 0h40v40H0z"></path>
									<path
										d="M38 6.06H2V31h11.8v3.88h12.4V31H38zm-2.12 22.85H4.12V8.14h31.76z"></path></svg>
								<p class="PreviewOverlay_title__1p_pc">미리보기 모드</p>
								<p class="PreviewOverlay_description__3Cqx5">저장한 내용을 미리 볼 수
									있어요.</p>
							</div>
						</div>
					</header>
				</div>
			</div>
			<div class="MainWrapper_content__GZkTa">
				<div
					class="MainPopBanner_container__2S4Yd MainPopBanner_isClose__2zb_H">
					<img src="" class="MainPopBanner_banner__UHeyX" alt="팝 배너">
				</div>
				<div class="RecommendationMobile_container__EBkg9">
					<div class="RecommendationMobile_contentsWrapper__3kInx">
						<div class="QuickMenu_container__8i-2E">
							<div class="QuickMenu_content__Phc2M"
								style="width: 1700px; transform: translateX(0px);">
								<div class="QuickMenu_menuChunk__1flJD"
									style="width: 834.531px;">
									<a data-ga-category="홈_퀵메뉴" data-ga-action="펀딩+"
										data-ga-label="" class="QuickMenu_menu__3ZQBl" href = "funding"
										style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509100846785.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">펀딩+</p></a><a
										data-ga-category="홈_퀵메뉴" data-ga-action="오픈예정"
										data-ga-label="" class="QuickMenu_menu__3ZQBl"
										style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509100919647.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">오픈예정</p></a><a
										data-ga-category="홈_퀵메뉴" data-ga-action="예약구매"
										data-ga-label="" class="QuickMenu_menu__3ZQBl"
										style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509100943499.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">예약구매</p></a><a
										data-ga-category="홈_퀵메뉴" data-ga-action="바로구매"
										data-ga-label="" class="QuickMenu_menu__3ZQBl"
										style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101132429.png&quot;);">
											<div>
												<div style="width: 40px;">
													<svg xmlns="http://www.w3.org/2000/svg"
														xmlns:xlink="http://www.w3.org/1999/xlink"
														viewBox="0 0 160 160" width="160" height="160"
														preserveAspectRatio="xMidYMid meet"
														style="width: 100%; height: 100%; transform: translate3d(0px, 0px, 0px); content-visibility: visible;">
														<defs>
														<clipPath id="__lottie_element_2">
														<rect width="160" height="160" x="0" y="0"></rect></clipPath>
														<clipPath id="__lottie_element_4">
														<path d="M0,0 L750,0 L750,1624 L0,1624z"></path></clipPath>
														<clipPath id="__lottie_element_8">
														<path d="M0,0 L750,0 L750,1624 L0,1624z"></path></clipPath>
														<clipPath id="__lottie_element_12">
														<path fill="#ffffff" clip-rule="nonzero"
															d=" M40.13600158691406,-12.008999824523926 C40.13600158691406,-12.008999824523926 40.13600158691406,-0.004000000189989805 40.13600158691406,-0.004000000189989805 C40.13600158691406,-0.004000000189989805 67.87799835205078,0 67.87799835205078,0 C67.87799835205078,0 67.87799835205078,-12.003999710083008 67.87799835205078,-12.003999710083008 C67.87799835205078,-12.003999710083008 40.13600158691406,-12.008999824523926 40.13600158691406,-12.008999824523926"
															fill-opacity="1"></path></clipPath>
														<clipPath id="__lottie_element_15">
														<path fill="#ffffff" clip-rule="nonzero"
															d=" M-3.071000099182129,-10.590999603271484 C-3.071000099182129,-10.590999603271484 -3.071000099182129,1.4129999876022339 -3.071000099182129,1.4129999876022339 C-3.071000099182129,1.4129999876022339 32.672000885009766,1.4129999876022339 32.672000885009766,1.4129999876022339 C32.672000885009766,1.4129999876022339 32.672000885009766,-10.590999603271484 32.672000885009766,-10.590999603271484 C32.672000885009766,-10.590999603271484 -3.071000099182129,-10.590999603271484 -3.071000099182129,-10.590999603271484"
															fill-opacity="1"></path></clipPath>
														<clipPath id="__lottie_element_21">
														<path d="M0,0 L750,0 L750,1624 L0,1624z"></path></clipPath>
														<clipPath id="__lottie_element_25">
														<path fill="#ffffff" clip-rule="nonzero"
															d=" M40.13600158691406,-12.008999824523926 C40.13600158691406,-12.008999824523926 40.13600158691406,-0.004000000189989805 40.13600158691406,-0.004000000189989805 C40.13600158691406,-0.004000000189989805 67.87799835205078,0 67.87799835205078,0 C67.87799835205078,0 67.87799835205078,-12.003999710083008 67.87799835205078,-12.003999710083008 C67.87799835205078,-12.003999710083008 40.13600158691406,-12.008999824523926 40.13600158691406,-12.008999824523926"
															fill-opacity="1"></path></clipPath>
														<clipPath id="__lottie_element_28">
														<path fill="#ffffff" clip-rule="nonzero"
															d=" M-3.071000099182129,-10.590999603271484 C-3.071000099182129,-10.590999603271484 -3.071000099182129,1.4129999876022339 -3.071000099182129,1.4129999876022339 C-3.071000099182129,1.4129999876022339 32.672000885009766,1.4129999876022339 32.672000885009766,1.4129999876022339 C32.672000885009766,1.4129999876022339 32.672000885009766,-10.590999603271484 32.672000885009766,-10.590999603271484 C32.672000885009766,-10.590999603271484 -3.071000099182129,-10.590999603271484 -3.071000099182129,-10.590999603271484"
															fill-opacity="1"></path></clipPath>
														<clipPath id="__lottie_element_34">
														<path d="M0,0 L750,0 L750,1624 L0,1624z"></path></clipPath>
														<clipPath id="__lottie_element_38">
														<path fill="#ffffff" clip-rule="nonzero"
															d=" M40.13600158691406,-12.008999824523926 C40.13600158691406,-12.008999824523926 40.13600158691406,-0.004000000189989805 40.13600158691406,-0.004000000189989805 C40.13600158691406,-0.004000000189989805 67.87799835205078,0 67.87799835205078,0 C67.87799835205078,0 67.87799835205078,-12.003999710083008 67.87799835205078,-12.003999710083008 C67.87799835205078,-12.003999710083008 40.13600158691406,-12.008999824523926 40.13600158691406,-12.008999824523926"
															fill-opacity="1"></path></clipPath>
														<clipPath id="__lottie_element_41">
														<path fill="#ffffff" clip-rule="nonzero"
															d=" M-3.071000099182129,-10.590999603271484 C-3.071000099182129,-10.590999603271484 -3.071000099182129,1.4129999876022339 -3.071000099182129,1.4129999876022339 C-3.071000099182129,1.4129999876022339 32.672000885009766,1.4129999876022339 32.672000885009766,1.4129999876022339 C32.672000885009766,1.4129999876022339 32.672000885009766,-10.590999603271484 32.672000885009766,-10.590999603271484 C32.672000885009766,-10.590999603271484 -3.071000099182129,-10.590999603271484 -3.071000099182129,-10.590999603271484"
															fill-opacity="1"></path></clipPath></defs>
														<g clip-path="url(#__lottie_element_2)">
														<g clip-path="url(#__lottie_element_4)"
															transform="matrix(2,0,0,2,-976.75,-425)" opacity="1"
															style="display: block;">
														<g clip-path="url(#__lottie_element_34)"
															transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: none;">
														<g
															transform="matrix(1,0,0,0.9913399815559387,647.375,701.125)"
															opacity="1" style="display: block;">
														<g opacity="1"
															transform="matrix(0.9068099856376648,0,0,1.1215699911117554,-102.56700134277344,-476.9739990234375)">
														<path fill="rgb(255,102,102)" fill-opacity="1"
															d=" M23.993000030517578,-8.486499786376953 C23.993000030517578,-8.486499786376953 23.993000030517578,8.486499786376953 23.993000030517578,8.486499786376953 C23.993000030517578,10.694099426269531 22.200599670410156,12.486499786376953 19.993000030517578,12.486499786376953 C19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 C-22.200599670410156,12.486499786376953 -23.993000030517578,10.694099426269531 -23.993000030517578,8.486499786376953 C-23.993000030517578,8.486499786376953 -23.993000030517578,-8.486499786376953 -23.993000030517578,-8.486499786376953 C-23.993000030517578,-10.694099426269531 -22.200599670410156,-12.486499786376953 -19.993000030517578,-12.486499786376953 C-19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 C22.200599670410156,-12.486499786376953 23.993000030517578,-10.694099426269531 23.993000030517578,-8.486499786376953z"></path>
														<path stroke-linecap="butt" stroke-linejoin="miter"
															fill-opacity="0" stroke-miterlimit="4"
															stroke="rgb(255,255,255)" stroke-opacity="1"
															stroke-width="2"
															d=" M23.993000030517578,-8.486499786376953 C23.993000030517578,-8.486499786376953 23.993000030517578,8.486499786376953 23.993000030517578,8.486499786376953 C23.993000030517578,10.694099426269531 22.200599670410156,12.486499786376953 19.993000030517578,12.486499786376953 C19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 C-22.200599670410156,12.486499786376953 -23.993000030517578,10.694099426269531 -23.993000030517578,8.486499786376953 C-23.993000030517578,8.486499786376953 -23.993000030517578,-8.486499786376953 -23.993000030517578,-8.486499786376953 C-23.993000030517578,-10.694099426269531 -22.200599670410156,-12.486499786376953 -19.993000030517578,-12.486499786376953 C-19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 C22.200599670410156,-12.486499786376953 23.993000030517578,-10.694099426269531 23.993000030517578,-8.486499786376953z"></path></g></g>
														<g clip-path="url(#__lottie_element_41)"
															fill="rgb(255,255,255)" font-size="13"
															font-family="Pretendard" font-style="normal"
															font-weight="normal" aria-label="HOT"
															style="display: block;"
															transform="matrix(1.149999976158142,0,0,1.149999976158142,529.0187377929688,233.06875610351562)"
															opacity="0.9865300000000001">
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" style="display: inherit;"
															transform="matrix(1,0,0,1,0,0)" opacity="1">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.7,0 C0.7,0 2.86,0 2.86,0 C2.86,0 2.86,-3.72 2.86,-3.72 C2.86,-3.72 6.55,-3.72 6.55,-3.72 C6.55,-3.72 6.55,0 6.55,0 C6.55,0 8.71,0 8.71,0 C8.71,0 8.71,-9.19 8.71,-9.19 C8.71,-9.19 6.55,-9.19 6.55,-9.19 C6.55,-9.19 6.55,-5.48 6.55,-5.48 C6.55,-5.48 2.86,-5.48 2.86,-5.48 C2.86,-5.48 2.86,-9.19 2.86,-9.19 C2.86,-9.19 0.7,-9.19 0.7,-9.19 C0.7,-9.19 0.7,0 0.7,0z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" style="display: inherit;"
															transform="matrix(1,0,0,1,9.406800270080566,0)"
															opacity="1">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M2.79,-4.6 C2.79,-6.42 3.61,-7.42 4.95,-7.41 C6.3,-7.42 7.12,-6.42 7.11,-4.6 C7.12,-2.77 6.3,-1.78 4.95,-1.78 C3.61,-1.78 2.79,-2.77 2.79,-4.6z M9.32,-4.6 C9.32,-7.63 7.41,-9.32 4.95,-9.32 C2.48,-9.32 0.58,-7.63 0.58,-4.6 C0.58,-1.58 2.48,0.13 4.95,0.13 C7.41,0.13 9.32,-1.57 9.32,-4.6z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" style="display: inherit;"
															transform="matrix(1,0,0,1,19.308900833129883,0)"
															opacity="1">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.38,-7.43 C0.38,-7.43 3.17,-7.43 3.17,-7.43 C3.17,-7.43 3.17,0 3.17,0 C3.17,0 5.32,0 5.32,0 C5.32,0 5.32,-7.43 5.32,-7.43 C5.32,-7.43 8.11,-7.43 8.11,-7.43 C8.11,-7.43 8.11,-9.19 8.11,-9.19 C8.11,-9.19 0.38,-9.19 0.38,-9.19 C0.38,-9.19 0.38,-7.43 0.38,-7.43z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g></g>
														<g clip-path="url(#__lottie_element_38)"
															fill="rgb(255,255,255)" font-size="13"
															font-family="Pretendard" font-style="normal"
															font-weight="normal" aria-label="HOT"
															transform="matrix(1.149999976158142,0,0,1.149999976158142,529.0187377929688,233.06875610351562)"
															opacity="0.9865300000000001" style="display: none;">
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" transform="matrix(1,0,0,1,0,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.7,0 C0.7,0 2.86,0 2.86,0 C2.86,0 2.86,-3.72 2.86,-3.72 C2.86,-3.72 6.55,-3.72 6.55,-3.72 C6.55,-3.72 6.55,0 6.55,0 C6.55,0 8.71,0 8.71,0 C8.71,0 8.71,-9.19 8.71,-9.19 C8.71,-9.19 6.55,-9.19 6.55,-9.19 C6.55,-9.19 6.55,-5.48 6.55,-5.48 C6.55,-5.48 2.86,-5.48 2.86,-5.48 C2.86,-5.48 2.86,-9.19 2.86,-9.19 C2.86,-9.19 0.7,-9.19 0.7,-9.19 C0.7,-9.19 0.7,0 0.7,0z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,9.406800270080566,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M2.79,-4.6 C2.79,-6.42 3.61,-7.42 4.95,-7.41 C6.3,-7.42 7.12,-6.42 7.11,-4.6 C7.12,-2.77 6.3,-1.78 4.95,-1.78 C3.61,-1.78 2.79,-2.77 2.79,-4.6z M9.32,-4.6 C9.32,-7.63 7.41,-9.32 4.95,-9.32 C2.48,-9.32 0.58,-7.63 0.58,-4.6 C0.58,-1.58 2.48,0.13 4.95,0.13 C7.41,0.13 9.32,-1.57 9.32,-4.6z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,19.308900833129883,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.38,-7.43 C0.38,-7.43 3.17,-7.43 3.17,-7.43 C3.17,-7.43 3.17,0 3.17,0 C3.17,0 5.32,0 5.32,0 C5.32,0 5.32,-7.43 5.32,-7.43 C5.32,-7.43 8.11,-7.43 8.11,-7.43 C8.11,-7.43 8.11,-9.19 8.11,-9.19 C8.11,-9.19 0.38,-9.19 0.38,-9.19 C0.38,-9.19 0.38,-7.43 0.38,-7.43z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g></g></g>
														<g clip-path="url(#__lottie_element_21)"
															style="display: none;" transform="matrix(1,0,0,1,0,0)"
															opacity="1">
														<g style="display: block;"
															transform="matrix(1,0,0,0.9913399815559387,647.375,701.125)"
															opacity="1">
														<g opacity="1"
															transform="matrix(0.9068099856376648,0,0,1.1215699911117554,-102.56700134277344,-476.9739990234375)">
														<path fill="rgb(255,102,102)" fill-opacity="1"
															d=" M23.993000030517578,-8.486499786376953 C23.993000030517578,-8.486499786376953 23.993000030517578,8.486499786376953 23.993000030517578,8.486499786376953 C23.993000030517578,10.694099426269531 22.200599670410156,12.486499786376953 19.993000030517578,12.486499786376953 C19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 C-22.200599670410156,12.486499786376953 -23.993000030517578,10.694099426269531 -23.993000030517578,8.486499786376953 C-23.993000030517578,8.486499786376953 -23.993000030517578,-8.486499786376953 -23.993000030517578,-8.486499786376953 C-23.993000030517578,-10.694099426269531 -22.200599670410156,-12.486499786376953 -19.993000030517578,-12.486499786376953 C-19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 C22.200599670410156,-12.486499786376953 23.993000030517578,-10.694099426269531 23.993000030517578,-8.486499786376953z"></path>
														<path stroke-linecap="butt" stroke-linejoin="miter"
															fill-opacity="0" stroke-miterlimit="4"
															stroke="rgb(255,255,255)" stroke-opacity="1"
															stroke-width="2"
															d=" M23.993000030517578,-8.486499786376953 C23.993000030517578,-8.486499786376953 23.993000030517578,8.486499786376953 23.993000030517578,8.486499786376953 C23.993000030517578,10.694099426269531 22.200599670410156,12.486499786376953 19.993000030517578,12.486499786376953 C19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 C-22.200599670410156,12.486499786376953 -23.993000030517578,10.694099426269531 -23.993000030517578,8.486499786376953 C-23.993000030517578,8.486499786376953 -23.993000030517578,-8.486499786376953 -23.993000030517578,-8.486499786376953 C-23.993000030517578,-10.694099426269531 -22.200599670410156,-12.486499786376953 -19.993000030517578,-12.486499786376953 C-19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 C22.200599670410156,-12.486499786376953 23.993000030517578,-10.694099426269531 23.993000030517578,-8.486499786376953z"></path></g></g>
														<g clip-path="url(#__lottie_element_28)"
															style="display: block;" fill="rgb(255,255,255)"
															font-size="13" font-family="Pretendard"
															font-style="normal" font-weight="normal" aria-label="HOT"
															transform="matrix(1.149999976158142,0,0,1.149999976158142,529.0187377929688,233.06875610351562)"
															opacity="0.9865300000000001">
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" style="display: inherit;"
															transform="matrix(1,0,0,1,0,0)" opacity="1">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.7,0 C0.7,0 2.86,0 2.86,0 C2.86,0 2.86,-3.72 2.86,-3.72 C2.86,-3.72 6.55,-3.72 6.55,-3.72 C6.55,-3.72 6.55,0 6.55,0 C6.55,0 8.71,0 8.71,0 C8.71,0 8.71,-9.19 8.71,-9.19 C8.71,-9.19 6.55,-9.19 6.55,-9.19 C6.55,-9.19 6.55,-5.48 6.55,-5.48 C6.55,-5.48 2.86,-5.48 2.86,-5.48 C2.86,-5.48 2.86,-9.19 2.86,-9.19 C2.86,-9.19 0.7,-9.19 0.7,-9.19 C0.7,-9.19 0.7,0 0.7,0z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" style="display: inherit;"
															transform="matrix(1,0,0,1,9.406800270080566,0)"
															opacity="1">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M2.79,-4.6 C2.79,-6.42 3.61,-7.42 4.95,-7.41 C6.3,-7.42 7.12,-6.42 7.11,-4.6 C7.12,-2.77 6.3,-1.78 4.95,-1.78 C3.61,-1.78 2.79,-2.77 2.79,-4.6z M9.32,-4.6 C9.32,-7.63 7.41,-9.32 4.95,-9.32 C2.48,-9.32 0.58,-7.63 0.58,-4.6 C0.58,-1.58 2.48,0.13 4.95,0.13 C7.41,0.13 9.32,-1.57 9.32,-4.6z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" style="display: inherit;"
															transform="matrix(1,0,0,1,19.308900833129883,0)"
															opacity="1">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.38,-7.43 C0.38,-7.43 3.17,-7.43 3.17,-7.43 C3.17,-7.43 3.17,0 3.17,0 C3.17,0 5.32,0 5.32,0 C5.32,0 5.32,-7.43 5.32,-7.43 C5.32,-7.43 8.11,-7.43 8.11,-7.43 C8.11,-7.43 8.11,-9.19 8.11,-9.19 C8.11,-9.19 0.38,-9.19 0.38,-9.19 C0.38,-9.19 0.38,-7.43 0.38,-7.43z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g></g>
														<g clip-path="url(#__lottie_element_25)"
															style="display: none;" fill="rgb(255,255,255)"
															font-size="13" font-family="Pretendard"
															font-style="normal" font-weight="normal" aria-label="HOT"
															transform="matrix(1.149999976158142,0,0,1.149999976158142,529.0187377929688,233.06875610351562)"
															opacity="0.9865300000000001">
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" transform="matrix(1,0,0,1,0,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.7,0 C0.7,0 2.86,0 2.86,0 C2.86,0 2.86,-3.72 2.86,-3.72 C2.86,-3.72 6.55,-3.72 6.55,-3.72 C6.55,-3.72 6.55,0 6.55,0 C6.55,0 8.71,0 8.71,0 C8.71,0 8.71,-9.19 8.71,-9.19 C8.71,-9.19 6.55,-9.19 6.55,-9.19 C6.55,-9.19 6.55,-5.48 6.55,-5.48 C6.55,-5.48 2.86,-5.48 2.86,-5.48 C2.86,-5.48 2.86,-9.19 2.86,-9.19 C2.86,-9.19 0.7,-9.19 0.7,-9.19 C0.7,-9.19 0.7,0 0.7,0z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,9.406800270080566,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M2.79,-4.6 C2.79,-6.42 3.61,-7.42 4.95,-7.41 C6.3,-7.42 7.12,-6.42 7.11,-4.6 C7.12,-2.77 6.3,-1.78 4.95,-1.78 C3.61,-1.78 2.79,-2.77 2.79,-4.6z M9.32,-4.6 C9.32,-7.63 7.41,-9.32 4.95,-9.32 C2.48,-9.32 0.58,-7.63 0.58,-4.6 C0.58,-1.58 2.48,0.13 4.95,0.13 C7.41,0.13 9.32,-1.57 9.32,-4.6z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,19.308900833129883,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.38,-7.43 C0.38,-7.43 3.17,-7.43 3.17,-7.43 C3.17,-7.43 3.17,0 3.17,0 C3.17,0 5.32,0 5.32,0 C5.32,0 5.32,-7.43 5.32,-7.43 C5.32,-7.43 8.11,-7.43 8.11,-7.43 C8.11,-7.43 8.11,-9.19 8.11,-9.19 C8.11,-9.19 0.38,-9.19 0.38,-9.19 C0.38,-9.19 0.38,-7.43 0.38,-7.43z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g></g></g>
														<g clip-path="url(#__lottie_element_8)"
															style="display: block;" transform="matrix(1,0,0,1,0,0)"
															opacity="1">
														<g style="display: block;"
															transform="matrix(1,0,0,0.9913399815559387,647.375,701.125)"
															opacity="1">
														<g opacity="1"
															transform="matrix(0.9068099856376648,0,0,1.1215699911117554,-102.56700134277344,-476.9739990234375)">
														<path fill="rgb(255,102,102)" fill-opacity="1"
															d=" M23.993000030517578,-8.486499786376953 C23.993000030517578,-8.486499786376953 23.993000030517578,8.486499786376953 23.993000030517578,8.486499786376953 C23.993000030517578,10.694099426269531 22.200599670410156,12.486499786376953 19.993000030517578,12.486499786376953 C19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 C-22.200599670410156,12.486499786376953 -23.993000030517578,10.694099426269531 -23.993000030517578,8.486499786376953 C-23.993000030517578,8.486499786376953 -23.993000030517578,-8.486499786376953 -23.993000030517578,-8.486499786376953 C-23.993000030517578,-10.694099426269531 -22.200599670410156,-12.486499786376953 -19.993000030517578,-12.486499786376953 C-19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 C22.200599670410156,-12.486499786376953 23.993000030517578,-10.694099426269531 23.993000030517578,-8.486499786376953z"></path>
														<path stroke-linecap="butt" stroke-linejoin="miter"
															fill-opacity="0" stroke-miterlimit="4"
															stroke="rgb(255,255,255)" stroke-opacity="1"
															stroke-width="2"
															d=" M23.993000030517578,-8.486499786376953 C23.993000030517578,-8.486499786376953 23.993000030517578,8.486499786376953 23.993000030517578,8.486499786376953 C23.993000030517578,10.694099426269531 22.200599670410156,12.486499786376953 19.993000030517578,12.486499786376953 C19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 -19.993000030517578,12.486499786376953 C-22.200599670410156,12.486499786376953 -23.993000030517578,10.694099426269531 -23.993000030517578,8.486499786376953 C-23.993000030517578,8.486499786376953 -23.993000030517578,-8.486499786376953 -23.993000030517578,-8.486499786376953 C-23.993000030517578,-10.694099426269531 -22.200599670410156,-12.486499786376953 -19.993000030517578,-12.486499786376953 C-19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 19.993000030517578,-12.486499786376953 C22.200599670410156,-12.486499786376953 23.993000030517578,-10.694099426269531 23.993000030517578,-8.486499786376953z"></path></g></g>
														<g clip-path="url(#__lottie_element_15)"
															style="display: block;" fill="rgb(255,255,255)"
															font-size="13" font-family="Pretendard"
															font-style="normal" font-weight="normal" aria-label="HOT"
															transform="matrix(1.149999976158142,0,0,1.149999976158142,529.0187377929688,233.06875610351562)"
															opacity="0.9865300000000001">
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" style="display: inherit;"
															transform="matrix(1,0,0,1,0,0)" opacity="1">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.7,0 C0.7,0 2.86,0 2.86,0 C2.86,0 2.86,-3.72 2.86,-3.72 C2.86,-3.72 6.55,-3.72 6.55,-3.72 C6.55,-3.72 6.55,0 6.55,0 C6.55,0 8.71,0 8.71,0 C8.71,0 8.71,-9.19 8.71,-9.19 C8.71,-9.19 6.55,-9.19 6.55,-9.19 C6.55,-9.19 6.55,-5.48 6.55,-5.48 C6.55,-5.48 2.86,-5.48 2.86,-5.48 C2.86,-5.48 2.86,-9.19 2.86,-9.19 C2.86,-9.19 0.7,-9.19 0.7,-9.19 C0.7,-9.19 0.7,0 0.7,0z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" style="display: inherit;"
															transform="matrix(1,0,0,1,9.406800270080566,0)"
															opacity="1">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M2.79,-4.6 C2.79,-6.42 3.61,-7.42 4.95,-7.41 C6.3,-7.42 7.12,-6.42 7.11,-4.6 C7.12,-2.77 6.3,-1.78 4.95,-1.78 C3.61,-1.78 2.79,-2.77 2.79,-4.6z M9.32,-4.6 C9.32,-7.63 7.41,-9.32 4.95,-9.32 C2.48,-9.32 0.58,-7.63 0.58,-4.6 C0.58,-1.58 2.48,0.13 4.95,0.13 C7.41,0.13 9.32,-1.57 9.32,-4.6z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" style="display: inherit;"
															transform="matrix(1,0,0,1,19.308900833129883,0)"
															opacity="1">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.38,-7.43 C0.38,-7.43 3.17,-7.43 3.17,-7.43 C3.17,-7.43 3.17,0 3.17,0 C3.17,0 5.32,0 5.32,0 C5.32,0 5.32,-7.43 5.32,-7.43 C5.32,-7.43 8.11,-7.43 8.11,-7.43 C8.11,-7.43 8.11,-9.19 8.11,-9.19 C8.11,-9.19 0.38,-9.19 0.38,-9.19 C0.38,-9.19 0.38,-7.43 0.38,-7.43z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g></g>
														<g clip-path="url(#__lottie_element_12)"
															style="display: none;" fill="rgb(255,255,255)"
															font-size="13" font-family="Pretendard"
															font-style="normal" font-weight="normal" aria-label="HOT"
															transform="matrix(1.149999976158142,0,0,1.149999976158142,529.0187377929688,233.06875610351562)"
															opacity="0.9865300000000001">
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" transform="matrix(1,0,0,1,0,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.7,0 C0.7,0 2.86,0 2.86,0 C2.86,0 2.86,-3.72 2.86,-3.72 C2.86,-3.72 6.55,-3.72 6.55,-3.72 C6.55,-3.72 6.55,0 6.55,0 C6.55,0 8.71,0 8.71,0 C8.71,0 8.71,-9.19 8.71,-9.19 C8.71,-9.19 6.55,-9.19 6.55,-9.19 C6.55,-9.19 6.55,-5.48 6.55,-5.48 C6.55,-5.48 2.86,-5.48 2.86,-5.48 C2.86,-5.48 2.86,-9.19 2.86,-9.19 C2.86,-9.19 0.7,-9.19 0.7,-9.19 C0.7,-9.19 0.7,0 0.7,0z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,9.406800270080566,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M2.79,-4.6 C2.79,-6.42 3.61,-7.42 4.95,-7.41 C6.3,-7.42 7.12,-6.42 7.11,-4.6 C7.12,-2.77 6.3,-1.78 4.95,-1.78 C3.61,-1.78 2.79,-2.77 2.79,-4.6z M9.32,-4.6 C9.32,-7.63 7.41,-9.32 4.95,-9.32 C2.48,-9.32 0.58,-7.63 0.58,-4.6 C0.58,-1.58 2.48,0.13 4.95,0.13 C7.41,0.13 9.32,-1.57 9.32,-4.6z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,19.308900833129883,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M0.38,-7.43 C0.38,-7.43 3.17,-7.43 3.17,-7.43 C3.17,-7.43 3.17,0 3.17,0 C3.17,0 5.32,0 5.32,0 C5.32,0 5.32,-7.43 5.32,-7.43 C5.32,-7.43 8.11,-7.43 8.11,-7.43 C8.11,-7.43 8.11,-9.19 8.11,-9.19 C8.11,-9.19 0.38,-9.19 0.38,-9.19 C0.38,-9.19 0.38,-7.43 0.38,-7.43z"></path>
														<g opacity="1"
															transform="matrix(0.12999999523162842,0,0,0.12999999523162842,0,0)"></g></g></g></g></g></g></g></g></svg>
												</div>
											</div>
										</div>
										<p class="QuickMenu_title__nudHS">바로구매</p></a><a
										class="QuickMenu_menu__3ZQBl"
										data-ga-category="홈_퀵메뉴" data-ga-action="메종드와"
										data-ga-label="" style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101202079.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">메종드와</p></a><a
										data-ga-category="홈_퀵메뉴" data-ga-action="얼리버드"
										data-ga-label="" class="QuickMenu_menu__3ZQBl"
										style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101219719.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">얼리버드</p></a><a
										data-ga-category="홈_퀵메뉴" data-ga-action="1분펀딩"
										data-ga-label="" class="QuickMenu_menu__3ZQBl"
										style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101233579.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">1분펀딩</p></a><a
										class="QuickMenu_menu__3ZQBl"
										data-ga-category="홈_퀵메뉴" data-ga-action="워라밸의발견"
										data-ga-label="" style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:06:12:20230612104917978.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">워라밸의발견</p></a><a
										data-ga-category="홈_퀵메뉴" data-ga-action="쿠폰존" data-ga-label=""
										class="QuickMenu_menu__3ZQBl" 
										style="width: 10%;"><div class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101308419.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">쿠폰존</p></a><a
										class="QuickMenu_menu__3ZQBl"
										 data-ga-category="홈_퀵메뉴"
										data-ga-action="메이커센터" data-ga-label="" style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101323577.png&quot;);">
											<div>
												<div style="width: 40px;">
													<svg xmlns="http://www.w3.org/2000/svg"
														xmlns:xlink="http://www.w3.org/1999/xlink"
														viewBox="0 0 160 160" width="160" height="160"
														preserveAspectRatio="xMidYMid meet"
														style="width: 100%; height: 100%; transform: translate3d(0px, 0px, 0px); content-visibility: visible;">
														<defs>
														<clipPath id="__lottie_element_65">
														<rect width="160" height="160" x="0" y="0"></rect></clipPath>
														<clipPath id="__lottie_element_67">
														<path d="M0,0 L750,0 L750,1624 L0,1624z"></path></clipPath></defs>
														<g clip-path="url(#__lottie_element_65)">
														<g clip-path="url(#__lottie_element_67)"
															transform="matrix(2,0,0,2,-1067.25,-425.5)" opacity="1"
															style="display: block;">
														<g transform="matrix(1,0,0,1,370.75,811.5)" opacity="1"
															style="display: block;">
														<g opacity="1"
															transform="matrix(1,0,0,1,219.1280059814453,-583.5479736328125)">
														<path fill="rgb(33,37,41)" fill-opacity="1"
															d=" M21.878000259399414,-9.32699966430664 C21.878000259399414,-9.32699966430664 21.878000259399414,9.32699966430664 21.878000259399414,9.32699966430664 C21.878000259399414,11.534599304199219 20.085599899291992,13.32699966430664 17.878000259399414,13.32699966430664 C17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 C-20.085599899291992,13.32699966430664 -21.878000259399414,11.534599304199219 -21.878000259399414,9.32699966430664 C-21.878000259399414,9.32699966430664 -21.878000259399414,-9.32699966430664 -21.878000259399414,-9.32699966430664 C-21.878000259399414,-11.534599304199219 -20.085599899291992,-13.32699966430664 -17.878000259399414,-13.32699966430664 C-17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 C20.085599899291992,-13.32699966430664 21.878000259399414,-11.534599304199219 21.878000259399414,-9.32699966430664z"></path>
														<path stroke-linecap="butt" stroke-linejoin="miter"
															fill-opacity="0" stroke-miterlimit="4"
															stroke="rgb(255,255,255)" stroke-opacity="1"
															stroke-width="2"
															d=" M21.878000259399414,-9.32699966430664 C21.878000259399414,-9.32699966430664 21.878000259399414,9.32699966430664 21.878000259399414,9.32699966430664 C21.878000259399414,11.534599304199219 20.085599899291992,13.32699966430664 17.878000259399414,13.32699966430664 C17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 C-20.085599899291992,13.32699966430664 -21.878000259399414,11.534599304199219 -21.878000259399414,9.32699966430664 C-21.878000259399414,9.32699966430664 -21.878000259399414,-9.32699966430664 -21.878000259399414,-9.32699966430664 C-21.878000259399414,-11.534599304199219 -20.085599899291992,-13.32699966430664 -17.878000259399414,-13.32699966430664 C-17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 C20.085599899291992,-13.32699966430664 21.878000259399414,-11.534599304199219 21.878000259399414,-9.32699966430664z"></path></g></g>
														<g fill="rgb(255,255,255)" font-size="13.5"
															font-family="Pretendard" font-style="normal"
															font-weight="700" aria-label="메이커"
															transform="matrix(1,0,0,1,572.625,232.5)" opacity="1"
															style="display: block;">
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" transform="matrix(1,0,0,1,0,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M9.15,1.21 C9.15,1.21 10.76,1.21 10.76,1.21 C10.76,1.21 10.76,-10.78 10.76,-10.78 C10.76,-10.78 9.15,-10.78 9.15,-10.78 C9.15,-10.78 9.15,1.21 9.15,1.21z M2.27,-3.12 C2.27,-3.12 2.27,-8.21 2.27,-8.21 C2.27,-8.21 3.9,-8.21 3.9,-8.21 C3.9,-8.21 3.9,-3.12 3.9,-3.12 C3.9,-3.12 2.27,-3.12 2.27,-3.12z M5.47,-9.54 C5.47,-9.54 0.7,-9.54 0.7,-9.54 C0.7,-9.54 0.7,-1.81 0.7,-1.81 C0.7,-1.81 5.47,-1.81 5.47,-1.81 C5.47,-1.81 5.47,-5.08 5.47,-5.08 C5.47,-5.08 6.67,-5.08 6.67,-5.08 C6.67,-5.08 6.67,0.66 6.67,0.66 C6.67,0.66 8.25,0.66 8.25,0.66 C8.25,0.66 8.25,-10.61 8.25,-10.61 C8.25,-10.61 6.67,-10.61 6.67,-10.61 C6.67,-10.61 6.67,-6.42 6.67,-6.42 C6.67,-6.42 5.47,-6.42 5.47,-6.42 C5.47,-6.42 5.47,-9.54 5.47,-9.54z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,11.668049812316895,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M2.33,-5.67 C2.33,-7.45 2.95,-8.42 3.89,-8.42 C4.8,-8.42 5.41,-7.45 5.42,-5.67 C5.41,-3.88 4.8,-2.91 3.89,-2.91 C2.95,-2.91 2.33,-3.88 2.33,-5.67z M0.71,-5.67 C0.71,-3.03 2.04,-1.38 3.89,-1.38 C5.7,-1.38 7.04,-3.03 7.04,-5.67 C7.04,-8.29 5.7,-9.94 3.89,-9.94 C2.04,-9.94 0.71,-8.29 0.71,-5.67z M10.4,-10.78 C10.4,-10.78 8.7,-10.78 8.7,-10.78 C8.7,-10.78 8.7,1.24 8.7,1.24 C8.7,1.24 10.4,1.24 10.4,1.24 C10.4,1.24 10.4,-10.78 10.4,-10.78z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,23.33609962463379,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M6.49,-4.8 C6.49,-4.8 8.79,-4.8 8.79,-4.8 C8.79,-4.8 8.79,1.21 8.79,1.21 C8.79,1.21 10.47,1.21 10.47,1.21 C10.47,1.21 10.47,-10.78 10.47,-10.78 C10.47,-10.78 8.79,-10.78 8.79,-10.78 C8.79,-10.78 8.79,-6.17 8.79,-6.17 C8.79,-6.17 6.49,-6.17 6.49,-6.17 C6.49,-6.17 6.49,-4.8 6.49,-4.8z M6.51,-9.64 C6.51,-9.64 0.98,-9.64 0.98,-9.64 C0.98,-9.64 0.98,-8.29 0.98,-8.29 C0.98,-8.29 4.83,-8.29 4.83,-8.29 C4.79,-7.72 4.7,-7.18 4.56,-6.67 C4.56,-6.67 0.33,-6.42 0.33,-6.42 C0.33,-6.42 0.55,-5 0.55,-5 C0.55,-5 4.04,-5.31 4.04,-5.31 C3.35,-3.98 2.16,-2.87 0.26,-1.87 C0.26,-1.87 1.19,-0.61 1.19,-0.61 C5.51,-2.85 6.51,-5.95 6.51,-9.64z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g></g></g></g></svg>
												</div>
											</div>
										</div>
										<p class="QuickMenu_title__nudHS">메이커센터</p></a>
								</div>
								<div class="QuickMenu_menuChunk__1flJD"
									style="width: 834.531px;">
									<a data-ga-category="홈_퀵메뉴" data-ga-action="서포터클럽"
										data-ga-label="" class="QuickMenu_menu__3ZQBl"
										href="/web/supporter-club/intro" style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101339561.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">서포터클럽</p></a><a
										data-ga-category="홈_퀵메뉴" data-ga-action="후원" data-ga-label=""
										class="QuickMenu_menu__3ZQBl" href="/web/wreward/category/312"
										style="width: 10%;"><div class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101419515.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">후원</p></a><a
										class="QuickMenu_menu__3ZQBl" href="https://blog.wadiz.kr/"
										data-ga-category="홈_퀵메뉴" data-ga-action="블로그" data-ga-label=""
										style="width: 10%;"><div class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509102231575.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">블로그</p></a><a
										class="QuickMenu_menu__3ZQBl" href="https://spacewadiz.com/"
										data-ga-category="홈_퀵메뉴" data-ga-action="공간와디즈"
										data-ga-label="" style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101501433.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">공간와디즈</p></a><a
										class="QuickMenu_menu__3ZQBl"
										href="https://helpcenter.wadiz.kr/hc/ko"
										data-ga-category="홈_퀵메뉴" data-ga-action="이용가이드"
										data-ga-label="" style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101519268.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">이용가이드</p></a><a
										data-ga-category="홈_퀵메뉴" data-ga-action="와디즈스쿨"
										data-ga-label="" class="QuickMenu_menu__3ZQBl"
										href="/web/school/main" style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101530566.png&quot;);">
											<div>
												<div style="width: 40px;">
													<svg xmlns="http://www.w3.org/2000/svg"
														xmlns:xlink="http://www.w3.org/1999/xlink"
														viewBox="0 0 160 160" width="160" height="160"
														preserveAspectRatio="xMidYMid meet"
														style="width: 100%; height: 100%; transform: translate3d(0px, 0px, 0px); content-visibility: visible;">
														<defs>
														<clipPath id="__lottie_element_86">
														<rect width="160" height="160" x="0" y="0"></rect></clipPath>
														<clipPath id="__lottie_element_88">
														<path d="M0,0 L750,0 L750,1624 L0,1624z"></path></clipPath></defs>
														<g clip-path="url(#__lottie_element_86)">
														<g clip-path="url(#__lottie_element_88)"
															transform="matrix(2,0,0,2,-1067.25,-425.5)" opacity="1"
															style="display: block;">
														<g transform="matrix(1,0,0,1,370.75,811.5)" opacity="1"
															style="display: block;">
														<g opacity="1"
															transform="matrix(1,0,0,1,219.1280059814453,-583.5479736328125)">
														<path fill="rgb(33,37,41)" fill-opacity="1"
															d=" M21.878000259399414,-9.32699966430664 C21.878000259399414,-9.32699966430664 21.878000259399414,9.32699966430664 21.878000259399414,9.32699966430664 C21.878000259399414,11.534599304199219 20.085599899291992,13.32699966430664 17.878000259399414,13.32699966430664 C17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 C-20.085599899291992,13.32699966430664 -21.878000259399414,11.534599304199219 -21.878000259399414,9.32699966430664 C-21.878000259399414,9.32699966430664 -21.878000259399414,-9.32699966430664 -21.878000259399414,-9.32699966430664 C-21.878000259399414,-11.534599304199219 -20.085599899291992,-13.32699966430664 -17.878000259399414,-13.32699966430664 C-17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 C20.085599899291992,-13.32699966430664 21.878000259399414,-11.534599304199219 21.878000259399414,-9.32699966430664z"></path>
														<path stroke-linecap="butt" stroke-linejoin="miter"
															fill-opacity="0" stroke-miterlimit="4"
															stroke="rgb(255,255,255)" stroke-opacity="1"
															stroke-width="2"
															d=" M21.878000259399414,-9.32699966430664 C21.878000259399414,-9.32699966430664 21.878000259399414,9.32699966430664 21.878000259399414,9.32699966430664 C21.878000259399414,11.534599304199219 20.085599899291992,13.32699966430664 17.878000259399414,13.32699966430664 C17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 C-20.085599899291992,13.32699966430664 -21.878000259399414,11.534599304199219 -21.878000259399414,9.32699966430664 C-21.878000259399414,9.32699966430664 -21.878000259399414,-9.32699966430664 -21.878000259399414,-9.32699966430664 C-21.878000259399414,-11.534599304199219 -20.085599899291992,-13.32699966430664 -17.878000259399414,-13.32699966430664 C-17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 C20.085599899291992,-13.32699966430664 21.878000259399414,-11.534599304199219 21.878000259399414,-9.32699966430664z"></path></g></g>
														<g fill="rgb(255,255,255)" font-size="13.5"
															font-family="Pretendard" font-style="normal"
															font-weight="700" aria-label="메이커"
															transform="matrix(1,0,0,1,572.625,232.5)" opacity="1"
															style="display: block;">
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" transform="matrix(1,0,0,1,0,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M9.15,1.21 C9.15,1.21 10.76,1.21 10.76,1.21 C10.76,1.21 10.76,-10.78 10.76,-10.78 C10.76,-10.78 9.15,-10.78 9.15,-10.78 C9.15,-10.78 9.15,1.21 9.15,1.21z M2.27,-3.12 C2.27,-3.12 2.27,-8.21 2.27,-8.21 C2.27,-8.21 3.9,-8.21 3.9,-8.21 C3.9,-8.21 3.9,-3.12 3.9,-3.12 C3.9,-3.12 2.27,-3.12 2.27,-3.12z M5.47,-9.54 C5.47,-9.54 0.7,-9.54 0.7,-9.54 C0.7,-9.54 0.7,-1.81 0.7,-1.81 C0.7,-1.81 5.47,-1.81 5.47,-1.81 C5.47,-1.81 5.47,-5.08 5.47,-5.08 C5.47,-5.08 6.67,-5.08 6.67,-5.08 C6.67,-5.08 6.67,0.66 6.67,0.66 C6.67,0.66 8.25,0.66 8.25,0.66 C8.25,0.66 8.25,-10.61 8.25,-10.61 C8.25,-10.61 6.67,-10.61 6.67,-10.61 C6.67,-10.61 6.67,-6.42 6.67,-6.42 C6.67,-6.42 5.47,-6.42 5.47,-6.42 C5.47,-6.42 5.47,-9.54 5.47,-9.54z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,11.668049812316895,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M2.33,-5.67 C2.33,-7.45 2.95,-8.42 3.89,-8.42 C4.8,-8.42 5.41,-7.45 5.42,-5.67 C5.41,-3.88 4.8,-2.91 3.89,-2.91 C2.95,-2.91 2.33,-3.88 2.33,-5.67z M0.71,-5.67 C0.71,-3.03 2.04,-1.38 3.89,-1.38 C5.7,-1.38 7.04,-3.03 7.04,-5.67 C7.04,-8.29 5.7,-9.94 3.89,-9.94 C2.04,-9.94 0.71,-8.29 0.71,-5.67z M10.4,-10.78 C10.4,-10.78 8.7,-10.78 8.7,-10.78 C8.7,-10.78 8.7,1.24 8.7,1.24 C8.7,1.24 10.4,1.24 10.4,1.24 C10.4,1.24 10.4,-10.78 10.4,-10.78z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,23.33609962463379,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M6.49,-4.8 C6.49,-4.8 8.79,-4.8 8.79,-4.8 C8.79,-4.8 8.79,1.21 8.79,1.21 C8.79,1.21 10.47,1.21 10.47,1.21 C10.47,1.21 10.47,-10.78 10.47,-10.78 C10.47,-10.78 8.79,-10.78 8.79,-10.78 C8.79,-10.78 8.79,-6.17 8.79,-6.17 C8.79,-6.17 6.49,-6.17 6.49,-6.17 C6.49,-6.17 6.49,-4.8 6.49,-4.8z M6.51,-9.64 C6.51,-9.64 0.98,-9.64 0.98,-9.64 C0.98,-9.64 0.98,-8.29 0.98,-8.29 C0.98,-8.29 4.83,-8.29 4.83,-8.29 C4.79,-7.72 4.7,-7.18 4.56,-6.67 C4.56,-6.67 0.33,-6.42 0.33,-6.42 C0.33,-6.42 0.55,-5 0.55,-5 C0.55,-5 4.04,-5.31 4.04,-5.31 C3.35,-3.98 2.16,-2.87 0.26,-1.87 C0.26,-1.87 1.19,-0.61 1.19,-0.61 C5.51,-2.85 6.51,-5.95 6.51,-9.64z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g></g></g></g></svg>
												</div>
											</div>
										</div>
										<p class="QuickMenu_title__nudHS">와디즈스쿨</p></a><a
										class="QuickMenu_menu__3ZQBl"
										href="https://www.partnerzone.wadiz.kr/"
										data-ga-category="홈_퀵메뉴" data-ga-action="스토리제작"
										data-ga-label="" style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101546400.png&quot;);">
											<div>
												<div style="width: 40px;">
													<svg xmlns="http://www.w3.org/2000/svg"
														xmlns:xlink="http://www.w3.org/1999/xlink"
														viewBox="0 0 160 160" width="160" height="160"
														preserveAspectRatio="xMidYMid meet"
														style="width: 100%; height: 100%; transform: translate3d(0px, 0px, 0px); content-visibility: visible;">
														<defs>
														<clipPath id="__lottie_element_107">
														<rect width="160" height="160" x="0" y="0"></rect></clipPath>
														<clipPath id="__lottie_element_109">
														<path d="M0,0 L750,0 L750,1624 L0,1624z"></path></clipPath></defs>
														<g clip-path="url(#__lottie_element_107)">
														<g clip-path="url(#__lottie_element_109)"
															transform="matrix(2,0,0,2,-1067.25,-425.5)" opacity="1"
															style="display: block;">
														<g transform="matrix(1,0,0,1,370.75,811.5)" opacity="1"
															style="display: block;">
														<g opacity="1"
															transform="matrix(1,0,0,1,219.1280059814453,-583.5479736328125)">
														<path fill="rgb(33,37,41)" fill-opacity="1"
															d=" M21.878000259399414,-9.32699966430664 C21.878000259399414,-9.32699966430664 21.878000259399414,9.32699966430664 21.878000259399414,9.32699966430664 C21.878000259399414,11.534599304199219 20.085599899291992,13.32699966430664 17.878000259399414,13.32699966430664 C17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 C-20.085599899291992,13.32699966430664 -21.878000259399414,11.534599304199219 -21.878000259399414,9.32699966430664 C-21.878000259399414,9.32699966430664 -21.878000259399414,-9.32699966430664 -21.878000259399414,-9.32699966430664 C-21.878000259399414,-11.534599304199219 -20.085599899291992,-13.32699966430664 -17.878000259399414,-13.32699966430664 C-17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 C20.085599899291992,-13.32699966430664 21.878000259399414,-11.534599304199219 21.878000259399414,-9.32699966430664z"></path>
														<path stroke-linecap="butt" stroke-linejoin="miter"
															fill-opacity="0" stroke-miterlimit="4"
															stroke="rgb(255,255,255)" stroke-opacity="1"
															stroke-width="2"
															d=" M21.878000259399414,-9.32699966430664 C21.878000259399414,-9.32699966430664 21.878000259399414,9.32699966430664 21.878000259399414,9.32699966430664 C21.878000259399414,11.534599304199219 20.085599899291992,13.32699966430664 17.878000259399414,13.32699966430664 C17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 C-20.085599899291992,13.32699966430664 -21.878000259399414,11.534599304199219 -21.878000259399414,9.32699966430664 C-21.878000259399414,9.32699966430664 -21.878000259399414,-9.32699966430664 -21.878000259399414,-9.32699966430664 C-21.878000259399414,-11.534599304199219 -20.085599899291992,-13.32699966430664 -17.878000259399414,-13.32699966430664 C-17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 C20.085599899291992,-13.32699966430664 21.878000259399414,-11.534599304199219 21.878000259399414,-9.32699966430664z"></path></g></g>
														<g fill="rgb(255,255,255)" font-size="13.5"
															font-family="Pretendard" font-style="normal"
															font-weight="700" aria-label="메이커"
															transform="matrix(1,0,0,1,572.625,232.5)" opacity="1"
															style="display: block;">
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" transform="matrix(1,0,0,1,0,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M9.15,1.21 C9.15,1.21 10.76,1.21 10.76,1.21 C10.76,1.21 10.76,-10.78 10.76,-10.78 C10.76,-10.78 9.15,-10.78 9.15,-10.78 C9.15,-10.78 9.15,1.21 9.15,1.21z M2.27,-3.12 C2.27,-3.12 2.27,-8.21 2.27,-8.21 C2.27,-8.21 3.9,-8.21 3.9,-8.21 C3.9,-8.21 3.9,-3.12 3.9,-3.12 C3.9,-3.12 2.27,-3.12 2.27,-3.12z M5.47,-9.54 C5.47,-9.54 0.7,-9.54 0.7,-9.54 C0.7,-9.54 0.7,-1.81 0.7,-1.81 C0.7,-1.81 5.47,-1.81 5.47,-1.81 C5.47,-1.81 5.47,-5.08 5.47,-5.08 C5.47,-5.08 6.67,-5.08 6.67,-5.08 C6.67,-5.08 6.67,0.66 6.67,0.66 C6.67,0.66 8.25,0.66 8.25,0.66 C8.25,0.66 8.25,-10.61 8.25,-10.61 C8.25,-10.61 6.67,-10.61 6.67,-10.61 C6.67,-10.61 6.67,-6.42 6.67,-6.42 C6.67,-6.42 5.47,-6.42 5.47,-6.42 C5.47,-6.42 5.47,-9.54 5.47,-9.54z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,11.668049812316895,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M2.33,-5.67 C2.33,-7.45 2.95,-8.42 3.89,-8.42 C4.8,-8.42 5.41,-7.45 5.42,-5.67 C5.41,-3.88 4.8,-2.91 3.89,-2.91 C2.95,-2.91 2.33,-3.88 2.33,-5.67z M0.71,-5.67 C0.71,-3.03 2.04,-1.38 3.89,-1.38 C5.7,-1.38 7.04,-3.03 7.04,-5.67 C7.04,-8.29 5.7,-9.94 3.89,-9.94 C2.04,-9.94 0.71,-8.29 0.71,-5.67z M10.4,-10.78 C10.4,-10.78 8.7,-10.78 8.7,-10.78 C8.7,-10.78 8.7,1.24 8.7,1.24 C8.7,1.24 10.4,1.24 10.4,1.24 C10.4,1.24 10.4,-10.78 10.4,-10.78z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,23.33609962463379,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M6.49,-4.8 C6.49,-4.8 8.79,-4.8 8.79,-4.8 C8.79,-4.8 8.79,1.21 8.79,1.21 C8.79,1.21 10.47,1.21 10.47,1.21 C10.47,1.21 10.47,-10.78 10.47,-10.78 C10.47,-10.78 8.79,-10.78 8.79,-10.78 C8.79,-10.78 8.79,-6.17 8.79,-6.17 C8.79,-6.17 6.49,-6.17 6.49,-6.17 C6.49,-6.17 6.49,-4.8 6.49,-4.8z M6.51,-9.64 C6.51,-9.64 0.98,-9.64 0.98,-9.64 C0.98,-9.64 0.98,-8.29 0.98,-8.29 C0.98,-8.29 4.83,-8.29 4.83,-8.29 C4.79,-7.72 4.7,-7.18 4.56,-6.67 C4.56,-6.67 0.33,-6.42 0.33,-6.42 C0.33,-6.42 0.55,-5 0.55,-5 C0.55,-5 4.04,-5.31 4.04,-5.31 C3.35,-3.98 2.16,-2.87 0.26,-1.87 C0.26,-1.87 1.19,-0.61 1.19,-0.61 C5.51,-2.85 6.51,-5.95 6.51,-9.64z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g></g></g></g></svg>
												</div>
											</div>
										</div>
										<p class="QuickMenu_title__nudHS">스토리제작</p></a><a
										data-ga-category="홈_퀵메뉴" data-ga-action="넥스트브랜드"
										data-ga-label="" class="QuickMenu_menu__3ZQBl"
										href="/web/wadiznext" style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101613119.png&quot;);">
											<div>
												<div style="width: 40px;">
													<svg xmlns="http://www.w3.org/2000/svg"
														xmlns:xlink="http://www.w3.org/1999/xlink"
														viewBox="0 0 160 160" width="160" height="160"
														preserveAspectRatio="xMidYMid meet"
														style="width: 100%; height: 100%; transform: translate3d(0px, 0px, 0px); content-visibility: visible;">
														<defs>
														<clipPath id="__lottie_element_128">
														<rect width="160" height="160" x="0" y="0"></rect></clipPath>
														<clipPath id="__lottie_element_130">
														<path d="M0,0 L750,0 L750,1624 L0,1624z"></path></clipPath></defs>
														<g clip-path="url(#__lottie_element_128)">
														<g clip-path="url(#__lottie_element_130)"
															transform="matrix(2,0,0,2,-1067.25,-425.5)" opacity="1"
															style="display: block;">
														<g transform="matrix(1,0,0,1,370.75,811.5)" opacity="1"
															style="display: block;">
														<g opacity="1"
															transform="matrix(1,0,0,1,219.1280059814453,-583.5479736328125)">
														<path fill="rgb(33,37,41)" fill-opacity="1"
															d=" M21.878000259399414,-9.32699966430664 C21.878000259399414,-9.32699966430664 21.878000259399414,9.32699966430664 21.878000259399414,9.32699966430664 C21.878000259399414,11.534599304199219 20.085599899291992,13.32699966430664 17.878000259399414,13.32699966430664 C17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 C-20.085599899291992,13.32699966430664 -21.878000259399414,11.534599304199219 -21.878000259399414,9.32699966430664 C-21.878000259399414,9.32699966430664 -21.878000259399414,-9.32699966430664 -21.878000259399414,-9.32699966430664 C-21.878000259399414,-11.534599304199219 -20.085599899291992,-13.32699966430664 -17.878000259399414,-13.32699966430664 C-17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 C20.085599899291992,-13.32699966430664 21.878000259399414,-11.534599304199219 21.878000259399414,-9.32699966430664z"></path>
														<path stroke-linecap="butt" stroke-linejoin="miter"
															fill-opacity="0" stroke-miterlimit="4"
															stroke="rgb(255,255,255)" stroke-opacity="1"
															stroke-width="2"
															d=" M21.878000259399414,-9.32699966430664 C21.878000259399414,-9.32699966430664 21.878000259399414,9.32699966430664 21.878000259399414,9.32699966430664 C21.878000259399414,11.534599304199219 20.085599899291992,13.32699966430664 17.878000259399414,13.32699966430664 C17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 -17.878000259399414,13.32699966430664 C-20.085599899291992,13.32699966430664 -21.878000259399414,11.534599304199219 -21.878000259399414,9.32699966430664 C-21.878000259399414,9.32699966430664 -21.878000259399414,-9.32699966430664 -21.878000259399414,-9.32699966430664 C-21.878000259399414,-11.534599304199219 -20.085599899291992,-13.32699966430664 -17.878000259399414,-13.32699966430664 C-17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 17.878000259399414,-13.32699966430664 C20.085599899291992,-13.32699966430664 21.878000259399414,-11.534599304199219 21.878000259399414,-9.32699966430664z"></path></g></g>
														<g fill="rgb(255,255,255)" font-size="13.5"
															font-family="Pretendard" font-style="normal"
															font-weight="700" aria-label="메이커"
															transform="matrix(1,0,0,1,572.625,232.5)" opacity="1"
															style="display: block;">
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4" transform="matrix(1,0,0,1,0,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M9.15,1.21 C9.15,1.21 10.76,1.21 10.76,1.21 C10.76,1.21 10.76,-10.78 10.76,-10.78 C10.76,-10.78 9.15,-10.78 9.15,-10.78 C9.15,-10.78 9.15,1.21 9.15,1.21z M2.27,-3.12 C2.27,-3.12 2.27,-8.21 2.27,-8.21 C2.27,-8.21 3.9,-8.21 3.9,-8.21 C3.9,-8.21 3.9,-3.12 3.9,-3.12 C3.9,-3.12 2.27,-3.12 2.27,-3.12z M5.47,-9.54 C5.47,-9.54 0.7,-9.54 0.7,-9.54 C0.7,-9.54 0.7,-1.81 0.7,-1.81 C0.7,-1.81 5.47,-1.81 5.47,-1.81 C5.47,-1.81 5.47,-5.08 5.47,-5.08 C5.47,-5.08 6.67,-5.08 6.67,-5.08 C6.67,-5.08 6.67,0.66 6.67,0.66 C6.67,0.66 8.25,0.66 8.25,0.66 C8.25,0.66 8.25,-10.61 8.25,-10.61 C8.25,-10.61 6.67,-10.61 6.67,-10.61 C6.67,-10.61 6.67,-6.42 6.67,-6.42 C6.67,-6.42 5.47,-6.42 5.47,-6.42 C5.47,-6.42 5.47,-9.54 5.47,-9.54z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,11.668049812316895,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M2.33,-5.67 C2.33,-7.45 2.95,-8.42 3.89,-8.42 C4.8,-8.42 5.41,-7.45 5.42,-5.67 C5.41,-3.88 4.8,-2.91 3.89,-2.91 C2.95,-2.91 2.33,-3.88 2.33,-5.67z M0.71,-5.67 C0.71,-3.03 2.04,-1.38 3.89,-1.38 C5.7,-1.38 7.04,-3.03 7.04,-5.67 C7.04,-8.29 5.7,-9.94 3.89,-9.94 C2.04,-9.94 0.71,-8.29 0.71,-5.67z M10.4,-10.78 C10.4,-10.78 8.7,-10.78 8.7,-10.78 C8.7,-10.78 8.7,1.24 8.7,1.24 C8.7,1.24 10.4,1.24 10.4,1.24 C10.4,1.24 10.4,-10.78 10.4,-10.78z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g>
														<g stroke-linecap="butt" stroke-linejoin="round"
															stroke-miterlimit="4"
															transform="matrix(1,0,0,1,23.33609962463379,0)"
															opacity="1" style="display: inherit;">
														<g>
														<g transform="matrix(1,0,0,1,0,0)" opacity="1"
															style="display: block;">
														<path
															d=" M6.49,-4.8 C6.49,-4.8 8.79,-4.8 8.79,-4.8 C8.79,-4.8 8.79,1.21 8.79,1.21 C8.79,1.21 10.47,1.21 10.47,1.21 C10.47,1.21 10.47,-10.78 10.47,-10.78 C10.47,-10.78 8.79,-10.78 8.79,-10.78 C8.79,-10.78 8.79,-6.17 8.79,-6.17 C8.79,-6.17 6.49,-6.17 6.49,-6.17 C6.49,-6.17 6.49,-4.8 6.49,-4.8z M6.51,-9.64 C6.51,-9.64 0.98,-9.64 0.98,-9.64 C0.98,-9.64 0.98,-8.29 0.98,-8.29 C0.98,-8.29 4.83,-8.29 4.83,-8.29 C4.79,-7.72 4.7,-7.18 4.56,-6.67 C4.56,-6.67 0.33,-6.42 0.33,-6.42 C0.33,-6.42 0.55,-5 0.55,-5 C0.55,-5 4.04,-5.31 4.04,-5.31 C3.35,-3.98 2.16,-2.87 0.26,-1.87 C0.26,-1.87 1.19,-0.61 1.19,-0.61 C5.51,-2.85 6.51,-5.95 6.51,-9.64z"></path>
														<g opacity="1"
															transform="matrix(0.13500000536441803,0,0,0.13500000536441803,0,0)"></g></g></g></g></g></g></g></svg>
												</div>
											</div>
										</div>
										<p class="QuickMenu_title__nudHS">넥스트브랜드</p></a><a
										class="QuickMenu_menu__3ZQBl" target="_blank"
										href="https://bear-u.com/event/time/9zgwAxFFSf"
										data-ga-category="홈_퀵메뉴" data-ga-action="클래스수강"
										data-ga-label="" style="width: 10%;"><div
											class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101629053.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">클래스수강</p></a><a
										data-ga-category="홈_퀵메뉴" data-ga-action="더보기" data-ga-label=""
										class="QuickMenu_menu__3ZQBl" href="/web/main/more"
										style="width: 10%;"><div class="QuickMenu_icon__3AoDC"
											style="background-image: url(&quot;https://cdn3.wadiz.kr/main/quickmenu/2023:05:09:20230509101641125.png&quot;);"></div>
										<p class="QuickMenu_title__nudHS">더보기</p></a>
								</div>
							</div>
							<div class="QuickMenu_indicator__149Mg">
								<div class="QuickMenu_dot__IqAyW"
									style="background-color: rgb(173, 181, 189);"></div>
								<div class="QuickMenu_dot__IqAyW"
									style="background-color: rgb(233, 236, 239);"></div>
							</div>
						</div>
						<div class="RecommendationMobile_contents__1yJqH">
							<div class="RecommendationMobile_cardWrapper__2Alml">
							
								<c:forEach items="${attentionList }"  var="attentionList">
									<div class="MainCard_container__21oET">
										<div class="ProjectCard_container__1jpWF"
											style="height: 396.88px;">
											<a class="ProjectCard_card__EvFnb"
												data-ec-id="170339"
												data-ec-name="[오늘종료/11억 우산] 장마 준비하세요, 10년 쓰는 풀카본 장우산"
												data-ec-brand="노멀리스트" data-ec-category="패션·잡화"
												data-ec-list="홈_상품카드_프리오더" data-ec-position="1"
												data-ec-contenttype="PREORDER"
												data-gtm-vis-recent-on-screen-11319722_2073="17686"
												data-gtm-vis-first-on-screen-11319722_2073="17686"
												data-gtm-vis-total-visible-time-11319722_2073="2000"
												data-gtm-vis-first-on-screen-108049270_43="17710"
												data-gtm-vis-first-on-screen-11319722_2115="17710"
												data-gtm-vis-first-on-screen-108049270_54="17711"
												data-gtm-vis-has-fired-11319722_2073="1"><div
													class="ProjectCard_thumbnailBox__3nf2n">
													<div aria-hidden="true"
														class="ProjectCard_projectCardImage__1wSoK CardThumbnail_thumbnail__3bDBJ CardThumbnail_visible__343f4"
														style="background-image: url(${pageContext.request.contextPath }/resources/images/project_thumbnail/${attentionList.project_thumbnail};);"></div>
													<em
														class="ProductTypeBadge_badge__1vQ-m ProjectCard_badge___LsIT">예약구매</em>
												</div>
												<div class="ProjectCard_infoBox__3ILIU">
													<div class="ProjectInfo_container__aMXhM">
													
														<em class="ProjectInfo_state__3kvLA">${fn:substring(attentionList.project_detail_amount/attentionList.project_target*100,0,2) }<span
															class="ProjectInfo_unitPercent__1gnFw">% 달성 중이에요</span></em>
														<div class="ProjectInfo_alignRight__27mRq">
															<span
																class="Badge_container__9G9PS Badge_visible__3LNXv ProjectInfo_badge__1JkM6"><span
																class="Badge_badge__ovUKI Badge_label__2Rft2 Badge_sm__1OBNp Badge_danger__2wYXo Badge_tertiary__3uYKh"></span></span>
														</div>
													</div>
													<strong class="ProjectCard_title__3ZLcD">${attentionList.project_title }</strong>
													<dl class="ProjectCard_subInfo__nidZs">
														<dt class="ProjectCard_fontBlind__2JaYu">카테고리</dt>
														<dd class="ProjectCard_subInfoText__-pKhs">패션·잡화</dd>
														<dt class="ProjectCard_fontBlind__2JaYu">메이커</dt>
														<dd
															class="ProjectCard_subInfoText__-pKhs ProjectCard_ellipsis1__3fNOy">노멀리스트</dd>
													</dl>
												</div>
												<div class="CardSpinner_container__1cKRs">
													<div class="CardSpinner_loader__2-LrZ"
														style="width: 32px; height: 32px;">
														<svg viewBox="25 25 50 50" aria-label="Loading">
															<g class="Loader_circular__2dy3E">
															<circle class="Loader_path__2uhmv" cx="50" cy="50" r="20"
																fill="none" stroke-width="4" stroke-miterlimit="10"></circle></g></svg>
													</div>
												</div></a>
											<button type="button"
												class="WishButton_button__1ZqbG WishButton_interaction__2FCel"
												aria-label="찜하기 버튼" aria-pressed="false"
												data-ga-category="공통_상품카드_프리오더" data-ga-action="찜하기_추가"
												data-ga-label="">
												<svg viewBox="0 0 32 32" focusable="false"
													role="presentation" class="withIcon_icon__3VTbq"
													aria-hidden="true">
													<path
														d="M22.16 4h-.007a8.142 8.142 0 0 0-6.145 2.79A8.198 8.198 0 0 0 9.76 3.998a7.36 7.36 0 0 0-7.359 7.446c0 5.116 4.64 9.276 11.6 15.596l2 1.76 2-1.76c6.96-6.32 11.6-10.48 11.6-15.6v-.08A7.36 7.36 0 0 0 22.241 4h-.085z"></path></svg>
											</button>
										</div>
									</div>
									
								</c:forEach>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>



	</div>


</body>
</html>