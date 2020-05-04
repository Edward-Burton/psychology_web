<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<style>

			body {
			    min-height: 100%;
			    min-width: 1090px;
			    background-color: #fff;
			}
			body, button, code, input, select, textarea {
			    font-family: "Microsoft Yahei","微软雅黑",verdana;
			    color: #333;
			}
			.f-fz12, body {
			    font-size: 12px;
			}
			body, button, input, select, textarea {
			    outline: 0;
			    font: 12px/1.5 "Microsoft Yahei","微软雅黑",verdana;
			}
			
			blockquote, body, button, dd, dl, dt, fieldset, figure, form, h1, h2, h3, h4, h5, h6, hr, input, legend, li, ol, p, pre, td, textarea, th, ul {
			    margin: 0;
			    padding: 0;
			}
			
			a {
			    color: #333;
			}
			a, a:hover {
			    text-decoration: none;
			}
			
			img {
			    vertical-align: top;
			}
			
			.f-disabledmask, .f-pr, body {
			    position: relative;
			}
			
			.g-row {
			    width: 1090px;
			    margin-right: auto;
			    margin-left: auto;
			    position: relative;
			}
			
			.m-cart {
			    padding-bottom: 40px;
			    margin-top: 10px;
			}
			
			.m-cart .tt:after, .m-cart .tt:before {
			    content: " ";
			    display: table;
			}
			
			.m-cart .cart-total:after, .m-cart .tt:after, .slick-track:after {
			    clear: both;
			}
			
			.m-cart .tt {
			    margin-bottom: 20px;
			    padding: 12px 0;
			    border: 1px solid #ddd;
			    background-color: #f5f5f5;
			}
			
			
			.m-cart .tt .w {
			    float: left;
			    text-align: center;
			    font-size: 13px;
			}
			
			.m-cart .tt .left {
			    text-align: left;
			}
			
			.m-cart .tt .w-chkbox {
			    margin-left: 20px;
			}
			
			.m-cart .w1 {
			    width: 159px;
			}
			
			.m-cart .w2 {
			    width: 300px;
			}
			
			.m-cart .w3 {
			    width: 180px;
			}
			
			.m-cart .w4 {
			    width: 170px;
			}
			
			.m-cart .tt .last, .m-cart .tt .w-2 {
			    padding-right: 30px;
			}
			
			.m-cart .tt .w-2 {
			    text-align: right;
			}
			
			.m-cart .w5 {
			    width: 150px;
			}
			
			.m-cart .tt .w-1 {
			    text-align: left;
			}
			
			.m-cart .cart-group .promotion .close, .m-cart .tt .w-1 {
			    padding-left: 31px;
			}
			.m-cart .w6 {
			    /* width: 129px; */
			}
			
			.m-cart .cart-group {
			    border: 1px solid #ddd;
			    margin-bottom: 10px;
			}
			
			.f-cb:after, .m-hrz:after {
			    content: ".";
			    display: block;
			    height: 0;
			    overflow: hidden;
			    visibility: hidden;
			}
			
			.f-cb::after{
				clear: both;
			}
			
			.m-cart .cart-item-last {
			    border-bottom: none!important;
			}
			.m-cart .cart-item {
			    padding: 20px 0;
			    position: relative;
			    border-bottom: 1px dashed #eaeaea;
			}
			
			.m-cart .cart-item .item {
			    float: left;
			    text-align: center;
			    position: relative;
			    color: #999;
			}
			
			.m-cart .w7 {
			    width: 59px;
			}
			
			.m-cart .cart-item .item .w-chkbox {
			    margin-top: 40px;
			}
			
			.w-chkbox>input:checked, .w-chkbox>input[checked=checked], .widget-checkbox-sel {
			    background-position: 0 -56px;
			    height: 18px;
			    width: 18px;
			}
			
			.m-cart .w8 {
			    width: 400px;
			}
			
			.m-cart .cart-item .item .pic {
			    position: absolute;
			    top: 50%;
			    transform: translate(0,-50%);
			    float: left;
			    height: 100px;
			    width: 100px;
			    border: 1px solid #eaeaea;
			}
			
			
			.m-cart .cart-item .item .pic img {
			    width: 100%;
			    height: 100%;
			    background-color: #f4f4f4;
			}
			
			.m-cart .cart-item .item .nameCon {
			    padding-top: 10px;
			    text-align: left;
			    width: 400px;
			    min-height: 100px;
			    padding-left: 120px;
			    float: left;
			    line-height: 1;
			}
			
			.m-cart .cart-item .item .nameCon a.pname {
			    font-size: 14px;
			    display: block;
			    max-width: 248px;
			}
			
			.f-text-overflow, .m-hrz .w-txticon .txt, .m-product .desc, .w-linkicon .txt {
			    overflow: hidden;
			    white-space: nowrap;
			    text-overflow: ellipsis;
			}
			
			.m-cart .cart-item .item .spec {
			    color: #999;
			    padding-top: 9px;
			    line-height: 16px;
			    text-align: left;
			    font-size: 12px;
			    cursor: pointer;
			}
			
			.m-cart .cart-item .item .spec .specWrap {
			    display: inline-block;
			}
			
			.m-cart .cart-item .item .spec .specWrap .specText {
			    display: inline-block;
			    max-width: 210px;
			}
			
			.m-cart .cart-item .item-1, .m-cart .cart-item .item-2, .m-cart .cart-item .item-3 {
			    padding-top: 10px;
			}
			
			.m-cart .w3 {
			    width: 180px;
			}
			
			.m-cart .cart-item .item p.price {
			    text-align: center;
			    line-height: 1;
			    margin-bottom: 10px;
			    font-size: 14px;
			}
			
			.m-cart .cart-item .item .aprice {
			    color: #333;
			}
			
			.u-selnum {
			    border: 1px solid #ddd;
			    overflow: hidden;
				display: inline-block;
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
			
			.u-selnum-cart .less, .u-selnum-cart .more, .u-selnum-cart input {
			    width: 24px;
			    height: 24px;
			    line-height: 22px;
			}
			.u-selnum .less {
			    border-right: 1px solid #ddd;
			}
			.u-selnum .z-dis {
			    cursor: not-allowed;
			}
			.u-selnum .less, .u-selnum .more, .u-selnum input {
			    position: relative;
			    float: left;
			    width: 36px;
			    height: 30px;
			    line-height: 28px;
			    background: #fff;
			}
			
			.u-selnum .z-dis .hx, .u-selnum .z-dis .sx {
			    background: #d3d3d3;
			}
			.u-selnum-cart .hx {
			    top: 11px;
			    left: 7px;
			    width: 10px;
			}
			.u-selnum .hx {
			    top: 15px;
			    left: 12px;
			    width: 10px;
			}
			.u-selnum .hx, .u-selnum .sx {
			    position: absolute;
			    width: 2px;
			    height: 2px;
			    overflow: hidden;
			    background: #999;
			}
			
			.u-selnum input.dis {
			    color: #ccc;
			}
			.u-selnum-cart input {
			    width: 58px;
			}
			
			.u-selnum-cart .hx {
			    top: 11px;
			    left: 7px;
			    width: 10px;
			}
			
			.u-selnum-cart .sx {
			    top: 7px;
			    left: 11px;
			    height: 10px;
			}
			
			.u-selnum .more {
			    border-left: 1px solid #ddd;
			}
			
			.m-cart .w5 {
			    width: 150px;
			}
			
			.m-cart .cart-item .item p.price {
			    text-align: center;
			    line-height: 1;
			    margin-bottom: 10px;
			    font-size: 14px;
			}
			.m-cart .cart-item .item-3 p.price {
			    text-align: right!important;
			    padding-right: 30px;
			}
			.m-cart .cart-item .item .sprice {
			    color: #d4282d;
			}
			
			.m-cart .cart-item .item-5 {
			    text-align: left;
			    padding-left: 31px;
			}
			
			
			.m-cart .cart-item .item-5 .operate {
			    padding-top: 10px;
			    line-height: 1;
			}
			
			.m-cart .cart-item .item-5 .operate a {
			    color: #666;
			    font-size: 14px;
			}
			
			.m-cart .cart-total:after, .m-cart .cart-total:before {
			    content: " ";
			    display: table;
			}
			
			.m-cart .cart-total-fixed {
			    position: fixed;
			    z-index: 2;
			    bottom: 0;
			    width: 100%;
			    max-width: 1090px;
			}
			.m-cart .cart-total {
			    font-size: 14px;
			    position: relative;
			    background-color: #f5f5f5;
			    border: 1px solid #ddd;
			    height: 70px;
			}
			
			.m-cart .cart-total .w-chkbox {
			    position: absolute;
			    top: 24px;
			    left: 22px;
			}
			
			.m-cart .cart-total .mgl30 {
			    margin-left: 30px;
			}
			
			.f-fr, .m-hrz .m-wrap-right {
			    float: right;
			    display: inline;
			}
			
			.f-button{
				border-radius: 0;
				width: 140px;
				height: 70px;
				margin-top: -1px;
				margin-right: -1px;
			    line-height: 50px;
			    font-size: 18px;
				color: #fff;
				border: 1px solid #b4a078;
				background-color: #b4a078;
				padding: 0;
				letter-spacing: normal;
			}
			
			.m-cart .cart-total .mgr140 {
			    margin-right: 140px;
			}
			
			.f-right {
			    float: right;
			}
			
			.m-cart .cart-total .shouldPayMoney {
			    line-height: 22px;
			    margin-top: 12px;
			}
			
			.f-fz14 {
			    font-size: 14px;
			}
			.f-ib {
			    display: inline-block;
			}
			
			.m-cart .cart-total .shouldPayMoney .moneyInfo {
			    font-size: 22px;
			    font-weight: 700;
			    color: #BE4141;
			}
			
			.m-cart .cart-total .shouldPayMoney .moneyInfo .priceNum {
			    font-size: 22px;
			    line-height: 22px;
			    position: relative;
			    top: 2px;
			    bottom: 2px;
			}
			
			.m-cart .cart-empty {
			    position: relative;
			    border: 1px solid #ddd;
			    height: 696px;
			}
			
			.m-emptyStatus {
			    margin: 150px auto 0;
			}
			.m-emptyStatus, .m-pop-crm, .m-upMobileValidate .upMobileContent {
			    text-align: center;
			}
			
			.m-emptyStatus .emptyText {
			    font-size: 16px;
			    color: #999;
			}
			
			.m-cart .cart-empty .btnLine {
			    margin-top: 20px;
			}
			
			.log-bnt{
				margin-right: 18px;
				height: 40px;
				width: 100px;
				font-size: 16px;
				line-height: 38px;
				color: #fff;
				border: 1px solid #b4a078;
				background-color: #b4a078;
				padding: 0;
				letter-spacing: normal;
				display: inline-block;
			}
			
			.lian-button{
				height: 40px;
				width: 100px;
				font-size: 16px;
				line-height: 38px;
				color: #b4a078;
				border: 1px solid #b4a078;
				background-color: #f5f3ef;
				display: inline-block;
			}
			
		</style>
	</head>
	<body>
		<div class="cart">
			<div class="g-row">
				<div class="m-cart">
					<div style="position: relative;">
						<div>
							<div style="display: block;">
								<div class="tt">
									<div class="w w1 left">
										<div class="w-chkbox">
											<input type="checkbox" checked="">
											<span class="all">全选</span>
										</div>
									</div>
									<div class="w w2 left">商品信息</div>
									<div class="w w3">单价</div>
									<div class="w w4">数量</div>
									<div class="w w-2 w5">小计</div>
									<div class="w w-1 w6">操作</div>
								</div>
							</div>

							<div style="display: block;">
								<div class="cart-group">
									<div class="cart-item f-cb cart-item-last">

										<div class="item w7">
											<div class="ck">
												<div class="w-chkbox">
													<input type="checkbox" class="" title="" checked="">
												</div>
											</div>
										</div>

										<div class="item w8">

											<div class="pic">
												<a href="">
													<img src="https://yanxuan-item.nosdn.127.net/372d7e16ebf49fc67ed984d4d4a870fc.png?type=webp&amp;quality=95&amp;thumbnail=200x200&amp;imageView"
													 alt="">
												</a>
											</div>

											<div class="nameCon">
												<a class="pname f-word-break f-text-overflow" target="_blank" href="">
													XXXXXXXXXX
												</a>
												<div class="spec">
													<div class="specWrap" style="cursor:pointer;">
														<span class="class=" f-text-overflow specText">
															XXXXXXXX
														</span>
													</div>
												</div>
											</div>

										</div>
										<div class="item item-1 w3">
											<p class="price">
												<span class="aprice"><span>¥</span><span>0.00</span></span>
											</p>
										</div>
										<div class="item item-2 w4">
											<div class="u-selnum u-selnum-cart">
												<span class="j-reduce less z-dis"><i class="hx"></i>
												</span>
												<input class="j-input dis" type="text" disabled="disabled">
												<span class="j-add more z-dis"><i class="hx"></i>
													<i class="sx"></i>
												</span>
											</div>
										</div>

										<div class="item item-3 w5">
											<p class="price sprice">¥0.00</p>
										</div>

										<div class="item item-5 w6">
											<div class="operate">
												<a href="javascript:void(0);">移入收藏夹</a>
											</div>
											<div class="operate">
												<a class="del" href="javascript:void(0);">删除</a>
											</div>
										</div>

									</div>
								</div>
							</div>
							
							<!-- <div style="display: block;">
								<div class="cart-empty">
									<div class="m-emptyStatus " style="margin-top:200px;">
										<div class="w-icon-empty icon-empty-cart"></div>
										<div class="emptyText">购物车还是空滴</div>
										<p class="btnLine">
											<span class="log-bnt f-hide" >登录</span>
											<a class="lian-button" href="/">继续逛</a></p>
									</div>
								</div>
							</div> -->

						</div>
					</div>
					
					<div class="cart-total cart-total-fixed" style="display: block;">
						<div class="w-chkbox"><input type="checkbox">
							<span><span>已选（</span><span>4</span>
								<span>）</span></span>
							<a class="mgl30" href="javascript:;">批量删除</a>
							<a class="mgl30" href="javascript:;">清空失效商品</a>
						</div>
						<div class="info f-fr">
							<button type="button" class="f-button">下单</button>
						</div>

						<div class="info mgr140" data-reactid=".2.0.1.1.2">
							<div class="f-right" style="padding:0 30px;height:94px;">
								<div class="shouldPayMoney">
									<span class="f-ib f-fz14" style="margin-right:20px;">应付总额：</span>
									<span class="moneyInfo">
										<span class="priceNum"><span>¥&nbsp;</span><span>1076.00</span></span>
									</span>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</body>
</html>
    