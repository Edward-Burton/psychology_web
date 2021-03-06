<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet"
	href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
<style>
body {
	min-height: 100%;
	min-width: 1090px;
	background-color: #fff;
}

* {
	box-sizing: border-box;
}

body, button, code, input, select, textarea {
	font-family: "Microsoft Yahei", "微软雅黑", verdana;
	color: #333;
}

.f-disabledmask, .f-pr, body {
	position: relative;
}

blockquote, body, button, dd, dl, dt, fieldset, figure, form, h1, h2, h3,
	h4, h5, h6, hr, input, legend, li, ol, p, pre, td, textarea, th, ul {
	margin: 0;
	padding: 0;
}

.f-fz12, body {
	font-size: 12px;
}

.m-slide .list, .m-slide .list li, .m-slide .list ul {
	position: relative;
}

a, a:hover {
	text-decoration: none;
}

a {
	color: #333;
}

.m-detail .detailHd:after, .m-detail .detailHd:before, .m-detail:after,
	.m-detail:before {
	content: " ";
	display: table;
	clear: both;
}

.f-cb:after, .f-clearfix:after, .g-row:after, .m-address .line .label:after,
	.m-address .line:after, .m-cate>.bd .itemList:after, .m-cate>.hd .subCateList:after,
	.m-cate>.hd:after, .m-couponList:after, .m-donationList .m-donation:after,
	.m-feedbackForm .formGroup-captcha:after, .m-focusList:after,
	.m-followUs:after, .m-ft1 .item:after, .m-funcTab .card-list:after,
	.m-funcTab .m-mini-cart:after, .m-hdAppDownload .trigger:after, .m-hrz:after,
	.m-itemList:after, .m-orderAddress:after, .m-pager-con, .m-payMethods .bankList .bank:after,
	.m-payMethods:after, .m-picList:after, .m-pop-addCart .m-addCartDialog .addCartTitle:after,
	.m-pop-express .m-content .w-expCabinet:after, .m-siteEnsure:after,
	.m-siteInfo .nav:after, .m-tabs:after, .u-formctr:after, .w-button .wrap:after,
	.w-coupon.coupon-l .inner .range:after, .w-coupon.coupon-l .inner .reason:after,
	.w-coupon.coupon-l .inner .value:after, .w-coupon.coupon-l .inner:after,
	.w-tabs:after, .w-textarea .tip:after, .w-tipMsg:after {
	clear: both;
}

.g-bd {
	width: 1090px;
	margin: 0 auto;
}

.g-bd, .g-bd-list {
	z-index: 1;
	position: relative;
}

.m-crumb {
	font-size: 12px;
	color: #333;
	line-height: 1;
	padding-top: 20px;
	padding-bottom: 20px;
}

.m-detail {
	padding: 0 0 80px;
}

.m-slide, .m-slide .view {
	width: 430px;
	float: left;
}

.m-slide .picsWrap {
	height: 430px;
}

.m-slide .view {
	position: relative;
	height: 430px;
	border: 1px solid #e8e8e8;
	margin-right: 16px;
}

.m-slide .view .thumbImg {
	display: block;
	width: 428px;
	height: 428px;
	background-color: #f4f4f4;
}

.f-hr, button, fieldset, img, input, select, textarea {
	border: 0;
}

.m-slide .list {
	overflow: hidden;
	margin-top: 14px;
}

.list li img {
	display: block;
	width: 100%;
	height: 100%;
	background-color: #f4f4f4;
}

ol, ul {
	list-style: none;
}

.m-slide .list li {
	zoom: 1;
	width: 78px;
	height: 78px;
	overflow: hidden;
	margin-left: 10px;
	vertical-align: top;
	float: left;
}

.m-slide .list li:first-child {
	margin-left: 0;
}

.m-slide .list li a:hover, .m-slide .list li.z-active a {
	margin: 0;
	border: 2px solid #b4a078;
}

.m-slide .list li a {
	display: block;
	width: 78px;
	height: 78px;
	border: 1px solid #e8e8e8;
}

.m-detail .detailBd {
	margin-top: 30px;
}

.m-info {
	float: right;
	width: 620px;
	word-break: break-all;
	word-wrap: break-word;
	position: relative;
}

.m-info .intro {
	overflow: hidden;
	margin-bottom: 20px;
}

.m-info .intro .detailTag {
	overflow: hidden;
	margin-bottom: 10px;
}

.m-info .intro .name {
	font-size: 20px;
	font-weight: 700;
	line-height: 20px;
	margin-bottom: 7px;
	position: relative;
}

.m-info .comment {
	display: inline-block;
	position: absolute;
	top: 0;
	right: 0;
	line-height: 1.2;
	text-align: right;
	z-index: 1;
	font-weight: 400;
}

.f-fz20 {
	font-size: 20px;
}

.f-fz13 {
	font-size: 13px;
}

.m-info .intro .desc {
	width: 520px;
	font-size: 14px;
	line-height: 20px;
	color: #999;
}

.m-info .price {
	background-color: #f5f3ef;
	border-top: 1px dotted #dedede;
	border-bottom: 1px dotted #dedede;
	padding: 0 0 13px;
	line-height: 24px;
	font-size: 13px;
	position: relative;
}

.m-info .price .pBox {
	height: 45px;
	margin-bottom: 5px;
	overflow: hidden;
}

.m-info .field {
	margin-bottom: 3px;
}

.m-info .price .label-1 {
	line-height: 30px;
	margin-top: 16px;
}

.m-info .price .label {
	width: 55px;
	font-size: 13px;
	float: left;
	color: #666;
	margin-left: 10px;
}

.m-info .price .pBox .rp {
	font-size: 18px;
	font-weight: 700;
	margin-right: 1px;
	margin-top: 13px;
	margin-left: 0;
	height: 30px;
}

.m-info .price .pBox .op, .m-info .price .pBox .rp, .m-info .price .pBox .sp
	{
	float: left;
}

.m-info .price .pBox .rp .rmb {
	margin-left: 0;
	line-height: 30px;
	color: #d7282d;
	font-size: 18px;
}

.m-info .price .pBox .rp .num {
	font-size: 28px;
	line-height: 30px;
	margin-left: 2px;
	color: #d7282d;
}

.m-parampicker {
	margin-left: 10px;
}

.m-parampicker .specProp {
	margin-top: 10px;
	position: relative;
	line-height: 1;
}

.m-parampicker .specProp .type-2 {
	line-height: 50px;
}

.m-parampicker .specProp .type {
	float: left;
	font-size: 12px;
	color: #666;
	width: 54px;
}

.m-parampicker .specProp .cont {
	position: relative;
	width: 550px;
	float: left;
}

.m-parampicker .tabs li.tab-con {
	float: left;
	position: relative;
	margin-right: 10px;
	margin-bottom: 15px;
	vertical-align: middle;
	padding: 1px;
}

.m-parampicker .tabs .tab {
	border: 1px solid #ddd;
	float: left;
	cursor: pointer;
	position: relative;
}

/* .m-parampicker .tabs .tab-dis {
			    color: #ccc;
			    border: 1px dashed #e4e4e4;
			} */
.m-parampicker .tabs .tab-pic {
	width: 50px;
	height: 50px;
}

.m-parampicker .tabs .tab-pic.tab-sel {
	margin: 0;
}

.m-parampicker .tabs .tab-txt.tab-dis .dis {
	opacity: .5;
	filter: Alpha(opacity = 50);
	background-color: #fff;
}

.m-parampicker .tabs .tab img {
	width: 100%;
	height: 100%;
	background-color: #f4f4f4;
}

.m-parampicker .tabs .tab-sel {
	line-height: 26px;
	border: 2px solid #b4a078;
	color: #333;
	margin-left: -1px;
	margin-right: -1px;
}

.m-parampicker .tabs .tab-pic:hover .title, .m-parampicker .tabs .tab-sel .sel
	{
	display: block;
}

.m-parampicker .tabs .tab .sel {
	bottom: 0;
	right: 0;
}

.m-parampicker .tabs .tab-dis .dis {
	display: block;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
}

.m-parampicker .tabs .tab .dis, .m-parampicker .tabs .tab .sel {
	display: none;
	position: absolute;
}

.m-parampicker .tabs .tab .title {
	display: none;
	position: absolute;
	background-color: #fff;
	color: #000;
	font-size: 12px;
	padding: 5px;
	border: 1px solid #ddd;
	bottom: 0;
	white-space: nowrap;
	height: 30px;
	line-height: 18px;
	z-index: 10;
	top: 60px;
	left: 15px;
}

.m-parampicker .specProp .type-1 {
	line-height: 30px;
}

.m-parampicker .tabs .tab-txt {
	padding: 0 16px;
	line-height: 28px;
	height: 28px;
	font-size: 12px;
	color: #333;
	overflow: hidden;
}

.m-parampicker .tabs .tab-dis {
	color: #ccc;
	border: 1px dashed #e4e4e4;
}

.m-info .number {
	margin-top: 10px;
	margin-left: 10px;
}

.u-formctr .name-1 {
	line-height: 30px;
}

.u-formctr .name {
	float: left;
	font-size: 12px;
	color: #666;
	width: 54px;
	white-space: normal;
}

.m-info .field {
	margin-bottom: 3px;
}

.u-selnum {
	border: 1px solid #ddd;
	overflow: hidden;
}

.m-crumbs-filter .crumb-url:hover .close8-hover, .u-selnum {
	display: inline-block;
}

.u-selnum .less {
	border-right: 1px solid #ddd;
}

.u-selnum .less, .u-selnum .more, .u-selnum input {
	position: relative;
	float: left;
	width: 36px;
	height: 30px;
	line-height: 28px;
	background: #fff;
	cursor: pointer;
}


.u-selnum .z-dis {
	cursor: not-allowed;
}


.u-selnum .z-dis .hx, .u-selnum .z-dis .sx {
	background: #d3d3d3;
}

.u-selnum input {
	box-sizing: border-box;
	border-radius: 0;
	border: 0;
	width: 60px;
	margin: 0;
	font-size: 12px;
	text-align: center;
	color: #333;
}

.u-selnum .more {
	border-left: 1px solid #ddd;
}

.u-selnum .hx, .u-selnum .sx {
	position: absolute;
	width: 2px;
	height: 2px;
	overflow: hidden;
	background: #999;
}

.u-selnum .hx {
	top: 15px;
	left: 12px;
	width: 10px;
}

.u-selnum .sx {
	top: 11px;
	left: 16px;
	height: 10px;
}

.m-info .btns {
	margin-left: 12px;
	margin-top: 30px;
	font-size: 0;
}

.m-info .btns .btn {
	margin-right: 10px;
	display: inline-block;
	overflow: hidden;
	vertical-align: middle;
}

.w-button {
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 2px;
	width: 96px;
	height: 28px;
	padding: 0;
	letter-spacing: normal;
	line-height: 26px;
	font-size: 12px;
	text-align: center;
	color: #333;
	border: 1px solid #ccc;
	background-color: #f5f5f5;
}

.w-button, .w-linkicon:hover .txt {
	cursor: pointer;
}

.w-button-ghost {
	color: #b4a078;
	border: 1px solid #b4a078;
	background-color: #f5f3ef;
}

.w-button-xl {
	width: 168px;
	height: 50px;
	line-height: 50px;
	font-size: 18px;
}

.w-button-primary {
	color: #fff;
	border: 1px solid #b4a078;
	background-color: #b4a078;
}


.m-info .btns .collected{
	background-color: #00aaff;
}

.m-info .btns .w-collectZone {
	position: relative;
	display: inline-block;
	height: 49px;
	width: 50px;
	border: 1px solid #CCC;
	overflow: hidden;
	vertical-align: middle;
	text-align: center;
	cursor: pointer;
}

.m-info .btns .w-collectZone .top {
	position: relative;
	overflow: hidden;
	height: 24px;
}


.m-info .btns .w-collectZone .w-icon-normal {
	margin-top: 6px;
}

.icon-normal-collectEpt {
	background-position: 0 -696px;
	height: 15px;
	width: 16px;
}

.m-info .btns .w-collectZone .bottom {
	height: 23px;
	font-size: 13px;
	line-height: 23px;
	color: #999;
}

.m-detail .detailBd {
	margin-top: 30px;
}

.m-detail .detailBd .left {
	float: left;
	width: 750px;
	margin-right: 40px;
}

.m-detailNavTab {
	border-top: 1px solid #e8e8e8;
	border-bottom: 1px solid #e8e8e8;
}

.m-detailNavTab .theme1 {
	overflow: initial;
	height: 43px;
}

.innerWrap.theme1 {
	background-color: #f5f5f5;
	border-right: 1px solid #e8e8e8;
	border-left: 1px solid #e8e8e8;
}

.m-detailNavTab .theme1 .item.active {
	height: 44px;
}

.m-detailNavTab .theme1 .item:first-child {
	width: 124px;
}

.innerWrap.theme1 .item.active {
	border-top: 3px solid #b4a078;
	background-color: #fff;
	border-bottom: 1px solid #fff;
	color: #b4a078;
}

.m-detailNavTab .theme1 .item {
	width: 125px;
	height: 42px;
	border-top: none;
	border-bottom: none;
}

.innerWrap.theme1 .item {
	width: 170px;
	border: 1px solid #e8e8e8;
	border-left: none;
	background-color: #f5f5f5;
	height: 42px;
	line-height: 40px;
	font-size: 14px;
}

.innerWrap .item {
	position: relative;
	z-index: 2;
	float: left;
	text-align: center;
	cursor: pointer;
}

.m-detailHtml:after, .m-detailHtml:before {
	content: " ";
	display: table;
}

.m-detailHtml:after, .m-detailHtml:before {
	content: " ";
	display: table;
}

.m-detailHtml .m-attrList {
	margin-bottom: 17px;
}

.m-detailHtml .m-attrList .item {
	padding: 8px 30px;
	float: left;
	min-width: 50%;
	line-height: 24px;
	font-size: 14px;
	border-bottom: 1px dashed #e8e8e8;
}

body.tabFixed .tabContent {
	transition: margin-top 1s;
}

.m-detailComment .m-commentList .m-sortbarComment {
	margin: 10px 23px 0 30px;
	border-bottom: 1px solid #eaeaea;
	overflow: hidden;
}

.m-detailComment .comment-img-add-btn{
	cursor: pointer;
    position: relative;
    display: inline-block;
    width: 70px;
    background: #f3f4f5;
    border-radius: 6px;
    height: 110px;
    padding: 0 9px;
    box-sizing: border-box;
}

.m-detailComment .comment-img-add-btn:after {
    transform: rotate(90deg);
}

.m-detailComment .comment-img-add-btn:after, .m-detailComment .comment-img-add-btn:before {
    content: '';
    position: absolute;
    width: 14px;
    height: 2px;
    top: 50%;
    left: 50%;
    margin-top: -1px;
    margin-left: -7px;
    background: #ccc;
}

.m-detailComment .m-commentList .m-sortbarComment .sorts:first-child {
	border-top: 1px dashed #dedede;
}

.m-detailComment .m-commentList .m-sortbarComment .sorts {
	position: relative;
	overflow: hidden;
	padding: 20px 0;
	line-height: 1;
	border-top: 1px dashed #dedede;
}

.m-detailComment .m-commentList>.item {
	padding: 27px 0 30px;
	margin-left: 30px;
	margin-right: 23px;
	border-bottom: 1px dashed #e8e8e8;
}

.f-clearfix:after, .f-clearfix:before {
	content: " ";
	display: table;
}

.m-detailComment .m-commentUser .username-withIcon:after,
	.m-detailComment .m-commentUser .username-withIcon:before {
	content: " ";
	display: table;
}

.m-detailComment .m-commentUser {
	float: left;
	min-height: 10px;
	width: 70px;
}

.m-detailComment .m-commentUser {
	float: left;
	min-height: 10px;
	width: 70px;
}

.m-detailComment .m-commentUser .avatarWarp img {
	width: 100%;
	height: 100%;
}

.m-detailComment .m-commentUser .username-withIcon {
	margin-top: 12px;
	width: 100%;
	height: 18px;
	line-height: 18px;
	text-align: center;
}

.m-detailComment .m-commentUser .username-withIcon .username {
	display: inline-block;
	width: 48px;
	margin: 0;
	text-align: left;
}

.m-detailComment .m-commentUser .username {
	margin-top: 12px;
	width: 70px;
	overflow: hidden;
}

.m-detailComment .m-commentItem {
	float: left;
	margin-left: 20px;
	width: 603px;
}

.m-detailComment .m-commentItem .skuInfo {
	color: #999;
	line-height: 1;
	padding-bottom: 10px;
}

.m-detailComment .m-commentItem .content {
	line-height: 20px;
	font-size: 14px;
	color: #333;
	margin-bottom: 10px;
	word-break: break-word;
}

.m-detailComment .m-commentItem .picList, .commentinput .picList{
	margin-bottom: 10px;
}

.commentinput .comment-bnt{
	position: relative;
    height: 50px;
    align-items: center;
    vertical-align: middle;
}

.commentinput .comment{
    display: inline-flex;
    height: 30px;
    width: 50px;
    border-radius: 10px;
    background-color: #0c890994;
    color: white;
    align-items: center;
    justify-content: center;
    margin-top: 10px;
    margin-right: 20px;
}


.commentinput .cancel{
	background-color: #5f6e5f94;
}

.commentinput a{
    float:right;
    cursor: pointer;
}

.m-picList:after, .m-picList:before {
	content: " ";
	display: table;
}

.m-picList .item {
	position: relative;
	float: left;
	width: 60px;
	height: 60px;
	margin-right: 10px;
	list-style-type: none;
}

.m-picList .item .before {
	-moz-box-sizing: border-box;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	content: '';
	position: absolute;
	top: 0;
	left: 0;
	z-index: 1;
	width: 60px;
	height: 60px;
	border: 1px solid #ddd;
}


.m-picList .item, .m-picList .item .before
	{
	width: 140px;
	height: 140px;
}

.m-detailComment .m-commentItem .createTime {
	line-height: 1;
	color: #999;
}

.m-picList .item img {
	position: absolute;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	z-index: 0;
	margin: auto;
	max-height: 100%;
	max-width: 100%;
}

.m-commonIssue {
	padding: 0 50px 20px;
	border: 1px solid #e8e8e8;
	border-top: none;
}

.m-commonIssue .other {
	padding-top: 40px;
	font-size: 14px;
}

.m-commonIssue .other .issue {
	padding-bottom: 32px;
}

.m-commonIssue .other .issue .question {
	line-height: 1;
	padding-bottom: 8px;
}

.m-commonIssue .other .issue .answer {
	line-height: 18px;
	color: #999;
}

.m-detail .detailBd .right {
	float: right;
	width: 300px;
}

.m-hotSell {
	border: 1px solid #e8e8e8;
	margin-bottom: 20px;
}

.m-hotSell .hd {
	line-height: 41px;
	background-color: #f5f5f5;
	font-size: 18px;
	text-align: center;
	font-weight: 700;
}

.m-hotSell .hd, .m-hotSell .item {
	border-bottom: 1px solid #e8e8e8;
}

.m-hotSell .item {
	margin-top: 24px;
	margin-left: 24px;
	margin-right: 24px;
}

.m-hotSell .item .img-wrap {
	position: relative;
	width: 250px;
	height: 250px;
	overflow: hidden;
}

.m-hotSell .item .content {
	position: relative;
	z-index: 1;
	padding: 0 5px 18px;
}

.m-hotSell .item .content .title {
	margin-bottom: 8px;
	text-align: center;
	margin-top: 6px;
}

.m-hotSell .item .content .price {
	font-size: 14px;
	line-height: 1;
	color: #d62525;
	text-align: center;
}

.m-hotSell .item .content .price .counterPrice {
	color: #666;
	text-decoration: line-through;
	margin-left: 5px;
}
</style>
</head>
<body style="overflow: auto; margin-right: 0px;">
	<div>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
	</div>
	<div id="main">
		<div class="g-bd">
			<div class="m-crumb">
				<span> <span class="crumb-name"><a href="${APP_PATH}/good/index.htm">首页</a></span> <i
					class="w-icon-arrow arrow-right-hollow gap" data-reactid=""></i>
				</span>
			</div>

			<div class="m-detail" data-id="${id}">
				<div class="detailHd">
					<div class="m-slide">

						<div class="picsWrap">
							<div class="m-zoom view">
								<div class="smallPic" style="cursor: default;">
									<img class="thumbImg" :src="'${APP_PATH }'+bigPic">
								</div>

								<div class="bigPic"></div>
							</div>
						</div>
						<div class="list">
							<ul v-if="good.goodPicList!=null">
								<li class v-for="(img,index) in good.goodPicList"
									:class="{'z-active':tag==index}"
									@click="showPic(img.sale_pic_addr,index)"><a
									href="javascript:;"> <img
										:src="'${APP_PATH }'+img.sale_pic_addr">
								</a></li>
							</ul>
						</div>

					</div>
					<div class="m-info">
						<div class="intro">
							<div class="name" style="padding-right: 65px;">
								<span>{{good.good_name}}</span> <a href="javascript:;">
									<div class="j-commentEntry comment ">
										<span> 
										<!-- <span class="f-fz20" style="color: #E36844;">99.9%</span><br>
											<span class="f-fz13">好评率 &gt;</span> -->
										</span>
									</div>
								</a>

							</div>

							<div class="desc">{{good.good_description}}</div>
						</div>

						<div class="price u-formctr">
							<div class="f-clearfix">
								<div class="field pBox f-cb f-left">
									<span class="label label-1">价格</span> <span class="rp">
										<span class="rmb">¥</span> <span class="num">{{good.good_price}}</span>
									</span> <span></span>
								</div>
							</div>
						</div>

						<div>
							<div class="m-parampicker" style="margin-top: 20px;">

								<div class="specProp" v-for="(attr,aindex) in good.goodAttrList">
									<span class="type"
										:class="{'type-1':attr.good_attribute_desc_type==1,'type-2':attr.good_attribute_desc_type==2}">
										<span>{{attr.good_attribute_name}}</span>
									</span>
									<div class="cont">
										<ul class="tabs">
											<li class="tab-con" v-for="(feature,findex) in attr.goodFeature">
												<a href="javascript:;" class="tab"
												:class="{'tab-txt':attr.good_attribute_desc_type==1,'tab-pic':attr.good_attribute_desc_type==2,'tab-sel':selected.indexOf(feature.good_feature_id)>=0,'tab-dis':saleoutList.indexOf(feature.good_feature_id)>=0}"
												:data-id="feature.good_feature_id" @click="select($event,attr.good_attribute_id)"> 
												<img v-if="attr.good_attribute_desc_type==2" :src="'${APP_PATH}'+feature.good_feature_img">
												<span v-if="attr.good_attribute_desc_type==1" class="txt" v-text="feature.good_feature_content"></span>
													<div class="dis"></div> 
													<i class="w-icon-normal icon-normal-spec-arrow sel"></i>
													<div v-if="attr.good_attribute_desc_type==2" class="title" v-text="feature.good_feature_content"></div>
											    </a>
											</li>
										</ul>
									</div>
								</div>

							</div>

							<div class="f-clearfix">
								<div class="number u-formctr f-left">
									<div class="name name-1">数量</div>
									<div class="field f-left">
										<div class="u-selnum">
											<span class="less" @click="doLess()" :class="{'z-dis':selectNum==1}"> <i class="hx"></i></span> 
											<input type="text" :value="selectNum" class=""> 
											<span class="more" @click="doMore()"> <i class="hx"></i> <i class="sx"></i>
											</span>
										</div>
									</div>
								</div>

							</div>
						</div>

						<div class="btns">
							<a class="btn w-button w-button-xl w-button-ghost"
								href="javascript:;"> <span>立即购买</span></a> 
							<a class="btn w-button w-button-xl w-button-primary j-button-addCart" @click="addCart()" style="right: 168.5px;"> 
							<span>
							<i class="w-icon-cart cart-detail"></i> 
							<span>加入购物车</span>
							</span></a>
							<div class="w-collectZone" :class="{collected:iscollected==1}" title="点击收藏" @click="docollect()">
								<div class="top">
									<span></span>
								</div>
								<div class="bottom">
									<p>收藏</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="detailBd">
					<div class="left">
						<div id="detailNavTab">
							<div class="m-detailNavTab j-detailNavTab">
								<div class="innerWrap theme1">
									<ul>
										<li class="item item-0" @click="getDetail()" :class="{active:show==0}"><span>详情</span></li>
										<li class="item item-0" @click="getComment()" :class="{active:show==1}"><span>评价</span></li>
										<li class="item item-0" @click="getFQA()" :class="{active:show==2}"><span>常见问题</span></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- 详情 -->
						<div class="m-detailHtml tabContent" v-if="show==0">
								<ul class="m-attrList" style="visibility: visible;">
									<li class="item j-item" style="width: 100%;">
										<span class="name">适用人群</span>
										<span class="value">通用、女士、男士、情侣</span></li>
								</ul>
							</div>

						<!-- 评价 -->
						<div class="m-detailComment tabContent" v-if="show==1">
							<span v-if="" @click="docomment=1">去评论</span>
									<div class="commentinput" v-if="docomment==1">
										<div class="comment-bnt">
											<a class="comment" @click="comment">提交</a>
											<a class="comment cancel" @click="cancel">取消</a>
										</div>
										
										<div>
											<textarea v-model="commentValue" rows="5" placeholder="请输入内容" style="width: 90%;outline: none;resize: none;border: 1px solid rgb(243, 244, 245);box-shadow: rgb(234, 234, 234) 0px 2px 10px 0px;border-radius: 10px;padding: 10px;"></textarea>
											<div class="comment-img-add-btn" @click="upImage">
											</div>
										</div>
										<input ref="filElem" type="file" class="up-comment" style="display: none;" @change="getFile">
										<!-- <input ref="filElem" type="file" id="up-comment"> --> <!--  style="visibility: hidden;" -->
										<ul data-target="${id}" class="j-picList m-picList picList" v-if="commentImgList.length!=0"><li class="item" v-for="(imgPath,index) in commentImgList"><div class="before"></div> <img :src="imgPath"></li></ul>
									</div>
									<ul class="m-commentList ">
										<div class="m-sortbarComment">
											<div class="sorts"> <span class="name">排序：</span>
												<a href="javascript:;" class="sort sort-default j-sortDefault active">默认</a>
												<a href="javascript:;" class="sort sort-time j-sortTime">评价时间
													<i class="w-icon-arrow arrow-down-gray-l"></i>
												</a>
											</div>
										</div>
										<li class="item f-clearfix" v-for="(comment,index) in commentList">
											<div class="m-commentUser">
												<div class="avatarWarp"> <img :src="'${APP_PATH }/'+comment.comment_user.psychouser_head_portrait" :alt="comment.comment_user.psychouser_name">
													<div class="mask w-icon-normal icon-normal-mask"></div>
												</div>
												<div class="username-withIcon"> <a class="w-icon-member member-comment-vip2" href="/membership/index"></a>
													<div class="username f-center">{{comment.comment_user.psychouser_name}}</div>
												</div>
											</div>
											<div class="m-commentItem f-clearfix ">
												<!-- <div class="skuInfo"> <span class="mr20">颜色:大象灰</span> <span class="mr20">尺码:男L（42-43）</span> </div> -->
												<div class="content f-breakall"> {{comment.comment_content}} </div>
												<ul class="j-picList m-picList picList" data-target="${id}">
													<li class="item" v-for="(img,index) in comment.imgList">
														<div class="before"></div> <img :src="'${APP_PATH }'+img">
													</li>
												</ul>
												<div id="1588312184089" class="lightbox" style="display: none;">
													<div class="m-lightbox  m-customLightbox">
														<div class="close "></div>
														<div class="j-slick slick slick-initialized slick-slider">
															<div aria-live="polite" class="slick-list draggable">
																<div class="slick-track" role="listbox" style="opacity: 1; width: 0px; transform: translate(0px, 0px);">
																	<div class="slide slick-slide slick-current slick-active" data-slick-index="0" aria-hidden="false"
																	 tabindex="-1" role="option" aria-describedby="slick-slide1170" style="width: 0px;">
																	 <img src="https://yanxuan.nosdn.127.net/c91864451bb315fd1965b4bea08ff87c.jpg?type=webp&amp;imageView&amp;quality=95&amp;thumbnail=603x438"
																		 style="width: 329px; height: 438px;"></div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="createTime">2020-02-22 19:23</div>
											</div>
										</li>
									</ul>
								</div>
							
							
						<!-- 常见问题 -->
						<div class="m-commonIssue tabContent" v-if="show==2">
							<div class="other">
								<div class="con">
									<ul>
										<li class="issue">
											<div class="question">购买运费如何收取？</div>
											<div class="answer">单笔订单金额（不含运费）满99元免邮费；不满99元，每单收取10元运费。(港澳台地区需满500元免邮费；不满500元，每单收取30元运费)</div>
										</li>

									</ul>
								</div>
							</div>
						</div>

					</div>
					<div class="right">
						<div class="m-hotSell">
							<header class="hd">热销榜</header>
							<div class="bd">
								<ul>
									<li class="item" data-reactid=".2.1.2.1.0.0.1.0.$hotSell_0">
										<div class="img-wrap"
											data-reactid=".2.1.2.1.0.0.1.0.$hotSell_0.0">
											<a
												href="/item/detail?id=3989517&amp;_stat_area=24hot_1&amp;_stat_referer=item&amp;_stat_referer_itemid=3989517"
												target="_blank"> <img width="250" height="250"
												src="https://yanxuan-item.nosdn.127.net/97f5faf14320743662b1396b73f31a77.png?type=webp&amp;imageView&amp;quality=95&amp;thumbnail=250x250">
											</a>
										</div>
										<div class="content">
											<a
												href="/item/detail?id=3989517&amp;_stat_area=24hot_1&amp;_stat_referer=item&amp;_stat_referer_itemid=3989517"
												target="_blank">
												<div class="title">
													<div class="m-itemTagList"
														style="top: -3px; position: relative;"></div>
													<span class="name">无穿戴感般裸感体验，女士无痕可拆杯垫内衣</span>
												</div>
											</a>
											<div class="price">
												<span>¥</span><span>152</span><span class="counterPrice"><span>¥</span><span>179</span></span>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<el-dialog
				  title="提示"
				  :visible.sync="DialogVisible"
				  width="30%"
				  center>
					  <span>去购物车看看？</span>
					  <span slot="footer" class="dialog-footer">
					    <el-button @click="DialogVisible = false">取 消</el-button>
					    <el-button type="primary" @click="goCart()">确 定</el-button>
					  </span>
				</el-dialog>
			</div>
		</div>
	</div>
	
	<script src="${APP_PATH }/js/axios.js"></script>
	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script src="${APP_PATH }/js/vue.js"></script>
	<!-- <script src="https://unpkg.com/vue/dist/vue.js"></script> -->
	<script src="https://unpkg.com/element-ui/lib/index.js"></script>
	<script type="text/javascript">
		
		var goodid=$(".m-detail").attr("data-id");
		
		
		var goodDetail = new Vue({
			  el: '#main',
			  data () {
			    return {
			    	good:null,
			    	bigPic:"",
			    	tag:0,
			    	show:0,
			    	selected:[],
			    	selectNum:1,
			    	selectedList:[],
			    	saleoutList:[],
			    	colorList:[],
			    	sizeList:[],
			    	styleList:[],
			    	iscollected:0,
			    	isselectdone:1,
			    	choosedsku:0,
			    	DialogVisible:false,
			    	commentImgList:[],
			    	commentValue:"",
			    	commentList:[],
			    	docomment:0
			    }
			  },
			  created() {
				  this.getGood();
				  this.iscollect();
			  },
			  methods: {
				  
				  cancel(){
					  alert("cancel");
					  this.commentValue="";
					  axios({
						  url:"${APP_PATH}/file/deletefiles.do",
						  method:"GET",
						  params:{
							  imgList:this.commentImgList.toLocaleString()
						  }
					  }).then(res=>{
						  if(res.data.success){
							  this.commentImgList=[];
						  }else{
							  console.log(res.data.message);
						  }
					  })
				  },
				  
				  comment(){
					  let params={
							  toid:parseInt(goodid),
							  content:encodeURI(this.commentValue.trim())
						}
					  if(this.commentImgList.length>0){
						  params.imgList=this.commentImgList.toLocaleString();
					  }
					  axios({
						  url:"${APP_PATH}/good/doAddComment.do",
						  method:"POST",
						  params:params
					  }).then(res=>{
						  if(res.data.success){
							  alert("addComment success!!");
							  this.getComment();
						  }else{
							  alert(res.data.message);
						  }
					  })
				  },
				  
				  getFile(){
					  	var that = this;
						const inputFile = this.$refs.filElem.files[0]
						var formData = new window.FormData();
						alert(inputFile);
						if(inputFile){
						    if(inputFile.type !== 'image/jpeg' && inputFile.type !== 'image/png' && inputFile.type !== 'image/gif'){
						        alert('不是有效的图片文件！');
						        return;
						    }else{
						    	formData.append('commentImg', inputFile);
						    	formData.append('type', 1);
						    	axios({
						    		headers:{"Content-Type":"multipart/form-data"},
									url:"${APP_PATH}/file/img.do",
									method:"POST",
									params:{},
									data:formData,
							        cache: false,
									contentType: false,
									processData: false
								  }).then(res=>{
									  if(res.data.success){
										  alert(res.data.data.saveDirectory);
										  this.$set(this.commentImgList,this.commentImgList.length,res.data.data.completeSavePath);
									  }else{
										  alert(res.data.message);
									  }
								  })
						    }
						    
						} else {
						    return;
						}
				  },
				  
				  upImage(){
					  this.$refs.filElem.dispatchEvent(new MouseEvent('click')); 
				  },
				  
				  goCart(){
					  window.location.href="${APP_PATH}/good/toCart.htm";
				  },
				  
				  select(e,attrid){
					  if(this.saleoutList.indexOf(parseInt(e.currentTarget.dataset.id))<0){
						  let i=0;
						  this.selectedList.map(product=>{
								if(product.attrid==attrid){
									product.feature_id=e.currentTarget.dataset.id;
								}
								this.$set(this.selected,i,parseInt(product.feature_id));
								i++;
							});
						  axios({
							  url:"${APP_PATH}/good/doSaleOutfeaList.do",
							  method:"POST",
							  params:{
								  goodid:parseInt(goodid),
								  selected:this.selected.toLocaleString()
							  }
						  }).then(res=>{
							  if(res.data.success){
								  this.saleoutList=res.data.data;
								  this.saleoutList.forEach((item) => {
									  if(this.selected.indexOf(item)>=0){
										  this.selected.splice(this.selected.indexOf(item),1);
									  }
									  this.selectedList.map(product=>{
										  if(item==product.feature_id){
											  product.feature_id=0;
										  }
									  })
								  });
								  /* console.log(JSON.stringify(this.selected));
								  console.log(JSON.stringify(this.selectedList));
								  alert(JSON.stringify(this.saleoutList)); */
							  }else{
								  alert(res.data.message);
							  }
						  })
					  }
				  },
				  
				  iscollect(){
					  axios({
						  url:"${APP_PATH}/user/doIsCollect.do",
						  method:"GET",
						  params:{
							  toid:parseInt(goodid),
							  typeid:4
						  }
					  }).then(res=>{
						  if(res.data.success){
							  this.iscollected=res.data.data;
						  }else{
							  /* this.$message(res.data.message); */
							  console.log(res.data.message);
						  }
					  })
				  },
				  
				  docollect(){
					  alert(this.iscollected);
					  axios({
						  url:"${APP_PATH}/user/doCollect.do",
						  method:"POST",
						  params:{
							  toid:parseInt(goodid),
							  typeid:4,
							  iscollect:this.iscollected
						  }
					  }).then(res=>{
						  if(res.data.success){
							  this.iscollected=res.data.data;
							  
						  }else{
							 /*  this.$message(res.data.message); */
							  alert(res.data.message);
						  }
					  })
				  },
				  
				  addCart(){
					  let attrname="";
					  this.selectedList.map(product=>{
						  if(product.feature_id==0){
							  this.isselectdone=0;
							  if(this.good!=null){
								  this.good.goodAttrList.forEach((item) => {
									  if(item.good_attribute_id==product.attrid){
										  attrname=item.good_attribute_name;
									  }
								  })
							  }
						  }
					  })
					  if(attrname!=""){
						  alert("请选择"+attrname);
					  }
					  if(this.isselectdone==1){
						  axios({
							  url:"${APP_PATH}/good/doSkuId.do",
							  method:"POST",
							  params:{
								  goodid:parseInt(goodid),
								  selected:this.selected.toLocaleString()
							  }
						  }).then(res=>{
							  if(res.data.success){
								  this.choosedsku=res.data.data;
								  alert(this.choosedsku);
									  axios({
										  url:"${APP_PATH}/good/doAddCart.do",
										  method:"GET",
										  params:{
											  skuid:this.choosedsku,
										      selectNum:this.selectNum
										  }
									  }).then(res=>{
										  if(res.data.success){
											  this.DialogVisible=true;
											  this.$message(this.DialogVisible);
										  }else{
											  this.$message(res.data.message);
										  }
									  })
							  }else{
								  /* this.$message(res.data.message); */
								  alert(res.data.message);
							  }
						  })
					  }
				  },
				  
				  showPic(e,index){
					  this.tag=index;
					  if(this.good!=null){
						  this.bigPic=e;
					  }
					  
				  },
				  
				  
				  doLess(){
					  if(this.selectNum>1){
						  this.selectNum=this.selectNum-1; 
					  }
				  },
				  
				  doMore(){
					  this.selectNum=this.selectNum+1; 
				  },
				  
				  getGood(){
					  axios({
						  url:"${APP_PATH}/good/doGood.do",
						  method:"GET",
						  params:{
							  id:parseInt(goodid)
						  }
					  }).then(res=>{
						  if(res.data.success){
							  this.good=res.data.data;
							  if(this.good!=null){
								  let _good=this.good;
								  this.bigPic=_good.goodPicList[0].sale_pic_addr;
								 /* _good.feaList.forEach((item) => {
									  this.$set(this.selectedList,this.selectedList.length,{type:item.feature_type,attrid:0})
					              }); */
								 _good.goodAttrList.forEach((item) => {
									  this.$set(this.selectedList,this.selectedList.length,{attrid:item.good_attribute_id,feature_id:0})
					              });
								  
							  }
						  }else{
							  this.$message(res.data.message);
						  }
					  })
				  },
				  
				  getDetail(){
					  this.show=0;
				  },
				  
				  getComment(){
					  this.show=1;
					  axios({
						  url:"${APP_PATH}/good/doComment.do",
						  method:"GET",
						  params:{
							  id:parseInt(goodid)
						  }
					  }).then(res=>{
						  if(res.data.success){
							  this.commentList=res.data.data;
						  }else{
							  alert(res.data.message);
						  }
					  
				  	  })
				  },
				  
				  getFQA(){
					  this.show=2;
				  }
			  }
		})
		
		
		</script>
</body>
</html>
