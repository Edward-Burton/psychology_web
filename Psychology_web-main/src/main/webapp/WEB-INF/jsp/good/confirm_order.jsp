<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<style>
			blockquote,
			body,
			button,
			dd,
			dl,
			dt,
			fieldset,
			figure,
			form,
			h1,
			h2,
			h3,
			h4,
			h5,
			h6,
			hr,
			input,
			legend,
			li,
			ol,
			p,
			pre,
			td,
			textarea,
			th,
			ul{
				margin: 0;
				padding: 0;
			}

			.main-bg {
				margin-top: 50px;
			}

			.main-container {
				width: 1090px;
				margin-right: auto;
				margin-left: auto;
				position: relative;
			}

			.addr-info {
				background-color: white;
				margin-bottom: 20px;
				border: 1px solid #e8e8e8;
			}

			.hd {
				padding-left: 21px;
				background-color: #f5f5f5;
				border-bottom: 1px solid #e8e8e8;
				line-height: 41px;
				color: #999;
			}

			.bd {
				padding: 30px 0 30px 30px;
				display: flex;
			}

			.left {
				float: left;
				width: 805px;
			}

			.m-addr {
				font-size: 14px;
				display: table;
			}

			.left .line {
				margin-top: 10px;
				margin-bottom: 8px;
				line-height: 24px;
				display: table;
			}

			.left .line:first-child {
				margin: 0;
			}

			.edit {
				width: 60px;
				margin-left: 20px;
				height: 28px;
				padding: 0;
				letter-spacing: normal;
				line-height: 26px;
				font-size: 12px;
				text-align: center;
				color: #b4a078;
				border: 1px solid #b4a078;
				background-color: #f5f3ef;
				vertical-align: middle;
				cursor: pointer;
			}

			.label {
				color: #999;
				width: 70px;
				text-align: center;
				float: left;
				max-width: 720px;
			}

			.text {
				float: left;
				max-width: 720px;
			}

			.bd .right {
				float: right;
				width: 253px;
				height: 58px;
				border-left: 1px solid #e8e8e8;
				text-align: center;
				margin-top: 44px;
			}

			.new-addr {
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
				cursor: pointer;
			}

			.pro-info {
				margin-bottom: 96px;
			}

			.m-table {
				position: relative;
				/* width: 100%; */
				padding: 0 21px;
				background-color: #fff;
				font-size: 14px;
				border: 1px solid #e8e8e8;
			}

			.m-table .theadBg {
				position: absolute;
				height: 42px;
				top: 0;
				left: 0;
				z-index: 0;
				width: 100%;
				background-color: #f5f5f5;
			}

			.m-table>table {
				position: relative;
				z-index: 1;
				text-align: center;
			}

			table {
				border-collapse: collapse;
				border-spacing: 0;
				table-layout: fixed;
			}

			.m-table .hd {
				line-height: 41px;
				height: 42px;
				color: #999;
			}

			.m-table .tbody {
				padding: 20px 0;
			}

			.m-table .tbody .tr:first-child {
				border-top: 0;
			}

			.m-table .tbody .tr {
				line-height: 1;
			}

			.m-tbody td {
				padding: 20px 0;
			}

			.m-itemInfoTd .imgWrap {
				position: relative;
			}

			.m-itemInfoTd .imgWrap img {
				width: 100px;
				height: 100px;
				background-color: #f4f4f4;
			}

			.m-itemInfoTd .infoWrap {
				position: relative;
				margin-left: 100px;
				height: 100px;
				padding: 2px 0 0 10px;
				pointer-events: none;
			}

			.f-left {
				float: left;
			}

			.f-txtleft {
				text-align: left !important;
			}

			.m-itemInfoTd .infoWrap .infoInnerWrap {
				pointer-events: auto;
			}

			.m-itemInfoTd .infoWrap .name {
				line-height: 24px;
				max-width: 210px;
				overflow: hidden;
				white-space: nowrap;
				text-overflow: ellipsis;
			}

			.m-itemInfoTd .infoWrap .line {
				max-width: 248px;
				overflow: hidden;
				line-height: 22px;
				font-size: 12px;
				color: #999;
				white-space: nowrap;
				text-overflow: ellipsis;
			}

			.m-tbody td {
				vertical-align: top;
			}

			.m-tbody td .tdWrap {
				padding-top: 7px;
			}

			.m-tbody .m-itemPriceTd .priceWrap {
				overflow: hidden;
				display: inline-block;
			}

			.m-itemInfoFt {
				background-color: #f5f5f5;
				border-left: 1px solid #E8E8E8;
				border-right: 1px solid #E8E8E8;
				border-bottom: 1px solid #E8E8E8;
			}

			.m-itemInfoFt .row {
				display: flex;
				flex-flow: row nowrap;
				padding: 20px 40px 40px 30px;
				overflow: hidden;
			}

			.m-itemInfoFt .row .right {
				margin-right: 0;
				margin-left: auto;
			}

			.m-payItemsInfo .line {
				margin-bottom: 20px;
				font-size: 14px;
				text-align: right;
				line-height: 1;
			}

			.m-payItemsInfo .line label span {
				margin: 0 6px;
			}

			.m-confirmPayInfo {
				float: right;
				text-align: right;
				position: relative;
			}

			.m-confirmPayInfo .amount {
				width: 160px;
				/* display: inline-block; */
			}

			.line-all {
				margin-bottom: 20px;
				padding-top: 24px;
				border-top: 1px solid #e8e8e8;
				font-size: 14px;
				width: 280px;
				display: inline-block;
				text-align: right;
				line-height: 1;
			}


			.m-payItemsInfo .line-all label {
				padding-right: 20px;
			}

			.m-confirmPayInfo .line-all .amount {
				width: 100px;
			}

			.m-payItemsInfo .line-all .amount {
				font-weight: 700;
				color: #d4282d;
				font-size: 20px;
			}

			.pay-btn .submit {
				float: right;
				vertical-align: middle;
				width: 168px;
				height: 50px;
				line-height: 50px;
				font-size: 18px;
				color: #fff;
				border: 1px solid #b4a078;
				background-color: #b4a078;
				padding: 0;
				letter-spacing: normal;
				text-align: center;
				border-radius: 2px;
				cursor: pointer;
			}

			.pay-btn::before,
			.pay-btn::after {
				content: " ";
				display: table;
			}

			.pay-btn::after {
				clear: both;
			}

			.line-addr {
				text-align: right;
				line-height: 22px;
				margin-top: 15px;
				font-size: 12px;
			}

			.line-addr .name {
				margin-right: 10px;
			}
			
			
			.m-orderAddress {
			    padding: 30px 0 30px 30px;
			}
			
			.m-orderAddress:after, .m-orderAddress:before {
			    content: " ";
			    display: table;
			}
			
			.m-orderAddress:after {
			    clear: both;
			}
			
			.m-addressAdd .m-form-addr {
			    float: left;
			}
			.m-form-addr {
			    font-size: 14px;
			    width: 617px;
			}
			
			.m-form-addr .w-row-addr {
			    margin-top: 20px;
			    line-height: 1;
			    position: relative;
				clear: both;
			}
			
			.m-form-addr .w-col-4 {
			    font-size: 0;
			}
			
			.m-form-addr .w-col-1, .m-form-addr .w-col-2, .m-form-addr .w-col-3, .m-form-addr .w-col-4, .m-form-addr .w-col-5 {
			    float: left;
			    position: relative;
			}
			
			.m-form-addr .w-textarea textarea {
			    height: 55px;
			    background-color: #fff;
			    padding: 9px;
			    width: 490px;
				border: 1px solid #ddd;
				display: block;
				color: #333;
				resize: none;
			}
			
			.m-operateButtons {
			    margin-top: 20px;
			    /* margin-left: 40px; */
			    width: 360px;
			    padding: 57px 0 43px 60px;
			    border-left: 1px dashed #dedede;
				float: left;
			}
			
			.m-operateButtons .w-row-addr-1 {
			    width: auto;
			    margin-top: 0;
			}
			
			.m-operateButtons .w-col-1 {
			    width: auto;
			    margin-left: 0;
			    position: relative;
			}
			
			.m-addressAdd .mgr24 {
			    margin-top: 24px;
			}
			
			.m-operateButtons .w-col-1 {
			    width: auto;
			    margin-left: 0;
			    position: relative;
			}
			
			.j-submit{
			    width: 144px;
			    height: 42px;
			    line-height: 40px;
			    font-size: 16px;
				color: #fff;
				border: 1px solid #b4a078;
				background-color: #b4a078;
				letter-spacing: normal;
				cursor: pointer;
			}
			
			.j-cancel{
				margin-left: 10px;
				width: 144px;
				height: 42px;
				line-height: 40px;
				font-size: 16px;
				color: #b4a078;
			    border: 1px solid #b4a078;
			    background-color: #f5f3ef;
				text-align: center;
			    padding: 0;
			    letter-spacing: normal;
				display: inline-block;
				cursor: pointer;
			}
			
			.w-chkbox>input{
			    border-radius: 0;
			    position: relative;
			    display: inline-block;
			    vertical-align: middle!important;
			    border: 0;
				height: 18px;
				width: 18px;
			}
			
			.m-form-addr .w-label {
			    width: 67px;
			    margin-right: 20px;
			    display: inline-block;
			    font-size: 14px;
			    text-align: right;
			}
			
			.m-form-addr .w-col-4 * {
			    font-size: 14px;
			    line-height: 14px;
			}
			
			.m-form-addr .w-error-warp {
			    display: inline-block;
			    position: relative;
			}
			
			.m-form-addr .w-errorMsg {
			    width: 150px;
			    position: absolute;
			    top: 31px;
			}
			
			.m-form-addr .w-textarea .w-errorMsg {
			    top: 73px;
			}
			
			.m-form-addr .errorTip .w-errorMsg {
			    top: 36px;
			}
			
			.w-errorMsg .text {
			    overflow: hidden;
			    color: #d4282d;
			    line-height: 16px;
			}
			
			.m-form-addr .w-errorMsg .text {
			    font-size: 12px;
			}
						
			.m-form-addr .mgr10 {
			    margin-right: 10px;
			}
			
			.m-form-addr .w-select {
			    width: 160px;
				border: 1px solid #ddd;
				border-radius: 0;
				background-color: #fff;
				height: 28px;
			}
			
			.m-form-addr .m-areaPicker {
			    width: 530px;
			}
			
			.m-form-addr .mgt10 {
			    margin-top: 10px;
			}
			
			.m-form-addr .w-col-2 {
			    width: 287px;
			    font-size: 0;
			}
			.m-form-addr .mgr43 {
			    margin-right: 43px;
			}
			.m-form-addr .w-ipt {
			    width: 170px;
			    height: 34px;
			}
			
			.m-form-addr .w-col-2 * {
			    font-size: 14px;
			}
			
			.w-ipt {
			    width: 140px;
			    line-height: 28px;
			    border: 1px solid #ddd;
			    font-size: 12px;
			    padding-left: 9px;
			}
		</style>
	</head>
	<body>
		<div class="main-bg">
			<div class="main-container">
				<div id="main">

					<div class="addr-info">
						<div class="hd">
							<span>收货信息</span>
						</div>

						<!-- 地址信息 -->
						<div class="bd" v-if="flag==1">
							<div class="left m-addr">
								<p class="line">
									<button class="edit" @click="editAddr">修改</button>
								</p>

								<p class="line">
									<label class="label">
										<span>收货人：</span>
									</label>
									<span class="text">{{curAddr.accept_customer_name}}</span>
								</p>

								<p class="line">
									<label class="label">
										<span>联系方式：</span>
									</label>
									<span class="text">{{curAddr.phone_num}}</span>
								</p>

								<p class="line">
									<label class="label">
										<span>收货地址：</span>
									</label>
									<span class="text">{{curAddr.allAddress}}</span>
								</p>
							</div>
							<div class="right">
								<button class="new-addr" @click="newAddr">
									新建地址
								</button>
							</div>
						</div>

						<!-- 修改地址 -->
						<div class="m-orderAddress" v-if="flag==0">
							<div class="m-addressAdd">
								<form class="m-form-addr">
									<div class="w-row-addr addrFirst">
										<div class="w-col-4">
											<span class="w-label" style="margin-top:6px;vertical-align:top;">
												<span>所在地区</span>
												<span>:</span>
											</span>
											<div style="display:inline-block;">
												<div style="display:inline-block;" class="m-areaPicker">
													<div class="w-error-warp j-error-wrap mgr10 static">
														<select name="provinceId" class="w-select j-provicne" v-model="selectProvince" tabindex="3" @change="chooseProvince($event)">
															<option value="0">请选择</option>
															<option v-for="(province,index) in provinceList" :value="province.code">{{province.name}}</option>
														</select>
														<div class="w-errorMsg j-error" style="display: block;" v-if="selectProvince=='0'">
															<span class="text j-errorTip">省不能为空</span>
														</div>
													</div>
													<div class="w-error-warp j-error-wrap mgr10 static">
														<select name="cityId" class="w-select j-city" v-model="selectCity" tabindex="4" @change="chooseCity($event)">
															<option value="0">请选择</option>
															<option v-for="(city,index) in curCityList" :value="city.code">{{city.name}}</option>
														</select>
														<div class="w-errorMsg j-error" style="display: block;" v-if="selectCity=='0'">
															<span class="text j-errorTip">市不能为空</span>
														</div>
													</div>
													<div class="w-error-warp j-error-wrap static">
														<select name="districtId" class="w-select j-district" v-model="selectDistrict" tabindex="5" @change="chooseDistrict($event)">
															<option value="0">请选择</option>
															<option v-for="(district,index) in curDistrictList" :value="district.code">{{district.name}}</option>
														</select>
														<div class="w-errorMsg j-error" style="display: block;" v-if="selectDistrict=='0'">
															<span class="text j-errorTip">区不能为空</span>
														</div>
													</div>
													<!-- <div class="w-error-warp j-error-wrap mgt10">
														<select name="townId" class="w-select j-town" tabindex="6">
															<option value>请选择</option>
														</select>
													</div> -->
												</div>
											</div>
										</div>
										<div style="clear:both;"></div>
									</div>
									<div class="w-row-addr">
										<div class="w-col-4"><span class="w-label" style="margin-top:6px;vertical-align:top;"><span>详细地址</span>
												<span>:</span></span>
											<div class="w-error-warp j-error-wrap w-textarea">
												<textarea placeholder="详细地址，街道、门牌号等" name="address" v-model="detailAddr" cols="30" rows="10" tabindex="6" class="w-textarea">
												</textarea>
												<div class="w-errorMsg j-error" style="display: block;" v-if="detailAddr==''">
														<span class="text j-errorTip">详细地址不能为空</span>
												</div>
											</div>
										</div>
										<div style="clear:both;"></div>
									</div>

									<div class="w-row-addr">
										<div class="w-col-2 errorTip mgr43">
											<span class="w-label">
												<span>收货人</span><span>:</span></span>
											<div class="w-error-warp j-error-wrap undefined">
												<input type="text" class="w-ipt" name="name" v-model="acceptCustomer" tabindex="1">
												<div class="w-errorMsg j-error" style="display: block;" v-if="acceptCustomer==''">
														<span class="text j-errorTip">收货人不能为空</span>
												</div>
											</div>
										</div>
										<div class="w-col-2 zoneTipsInner errorTip">
											<span class="w-label"><span>手机号码</span><span >:</span></span>
											<div class="w-error-warp j-error-wrap undefined">
												<input type="text" class="w-ipt" name="mobile" v-model="phoneNum" tabindex="2">
												<div class="w-errorMsg j-error" style="display: block;" v-if="phoneNum==''">
														<span class="text j-errorTip">手机号码不能为空</span>
												</div>
											</div>
										</div>
										<div style="clear:both;"></div>
									</div>

								</form>

								<div class="m-operateButtons">
									<div class="w-row-addr w-row-addr-1">
										<div class="w-col-1">
											<div class="w-chkbox">
												<input type="checkbox" name="dft" class="j-checkbox" v-model="isdefaultAddr">
												<span>设为默认</span>
											</div>
											<div class="w-col-1 mgr24">
												<button type="button" class="j-submit" @click="addAddr" v-if="isEdit==0">保存地址</button>
												<button type="button" class="j-submit" @click="confirmEdit" v-if="isEdit==1">确认修改</button>
												<a class="j-cancel" v-if="addrList.length>0" @click="cancel">取消</a>
											</div>

										</div>
									</div>
								</div>

							</div>
						</div>


					</div>

					<div class="pro-info">
						<div class="m-table">
							<div class="theadBg">
							</div>
							<table>
								<thead class="hd">
									<tr>
										<td class="f-txtleft" style="width:360px;">商品信息</td>
										<td class="" style="width:165px;">单价</td>
										<td class="" style="width:171px;">数量</td>
										<td class="" style="width:191px;">小计</td>
										<td class="" style="width:179px;">实付</td>
									</tr>
								</thead>

								<tbody class="m-tbody tbody">
									<tr class="tr" v-for="(item,index) in confirmList">
										<td class="m-itemInfoTd">
											<div class="imgWrap f-left">
												<img :src="'${APP_PATH}'+pic.sale_pic_addr" alt="" v-for="(pic,index) in item.sku.ofGood.goodPicList" v-if="index==0">
											</div>
											<div class="infoWrap f-txtleft">
												<div class="infoInnerWrap">
													<div class="name f-text-overflow">
														<span :title="item.sku.ofGood.good_name">{{item.sku.ofGood.good_name}}</span>
													</div>
													<p class="line line1 f-text-overflow">
														<span class="spec">
															<span v-for="(attr,index) in item.sku.attrList">
																	{{attr.good_attribute_name}}:
																	<span v-for="(fea,index) in item.sku.feaList" v-if="attr.good_attribute_id==fea.good_attr_id">
																	{{fea.good_feature_content}}
																	</span>
															</span>
														</span>
													</p>
												</div>
											</div>
										</td>
										<td class="m-itemPriceTd">
											<div class="tdWrap">
												<div class="priceWrap">
													<p class="retailPrice"><span><span>¥</span><span>{{item.sku.ofGood.good_price}}</span></span></p>
												</div>
											</div>
										</td>
										<td class="m-itemCountTd">
											<div class="tdWrap">
												{{item.cart_good_num}}
											</div>
										</td>
										<td class="m-itemCountTd">
											<div class="tdWrap"><span><span>¥</span><span>{{item.sku.ofGood.good_price*item.cart_good_num}}</span></span></div>
										</td>
										<td>
											<div class="tdWrap"><span>
													<span>¥</span>
													<span>{{item.sku.ofGood.good_price*item.cart_good_num}}</span></span>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>

					<div class="m-itemInfoFt">
						<div class="row">
							<div class="left"></div>
							<div class="right">
								<div class="m-confirmPayInfo">
									<div class="m-payItemsInfo">
										<div class="line">
											<label>
												<span>商品合计</span>
												<span>:</span>
											</label>
											<span class="amount">
												<span>¥{{totalPrice}}</span>
											</span>
										</div>

										<!-- <div class="line">
											<label>
												<span>商品合计</span>
												<span>:</span>
											</label>
											<span class="amount">
												<span>¥176.00</span>
											</span>
										</div>

										<div class="line">
											<label>
												<span>商品合计</span>
												<span>:</span>
											</label>
											<span class="amount">
												<span>¥176.00</span>
											</span>
										</div> -->

										<div class="line-all">
											<label><span>应付总额</span><span>:</span></label>
											<span class="amount"><span>¥{{totalPrice}}</span></span>
										</div>

										<div class="pay-btn">
											<input class="submit" type="submit" value="去付款" @click="createOrder">
										</div>

										<div class="line-addr" v-if="curAddr!=null">
											<p>
												<span class="name">
													{{curAddr.accept_customer_name}}
												</span>
												<span class="number">
													{{curAddr.phone_num}}
												</span>
											</p>
											<p>
												{{curAddr.allAddress}}
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


				</div>

			</div>
		</div>
		<script src="${APP_PATH }/js/axios.js"></script>
		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<script src="${APP_PATH }/js/vue.js"></script>
		<script type="text/javascript">
		let list="${list}"
		var confirmOrder = new Vue({
			  el: '#main',
			  data () {
			    return {
			    	provinceList:[],
			    	curCityList:[],
			    	curDistrictList:[],
			    	selectProvince:"0",
			    	selectCity:"0",
			    	selectDistrict:"0",
			    	confirmList:[],
			    	choseskuList:[],
			    	addrList:[],
			    	curAddr:null,
			    	flag:1,
			    	detailAddr:"",
			    	acceptCustomer:"",
			    	phoneNum:"",
			    	isdefaultAddr:false,
			    	defaultAddr:0,
			    	areaList:[],
			    	isEdit:0,
			    	waitAddr:null,
			    	totalPrice:"0.00"
			    }
			  },
			  beforeMount:function(){//钩子函数，我这是挂载开始之前就被调用的，看你需要什么时候使用
				  /* this.data.is_collect = true;//这是直接修改，但是是非响应式的
				  this.$set(this.data,‘is_collect’,true);//vue可以监听到的，你要的应该是这个 */
				 
			  },
			  created() {
				 this.getArea();
				 this.getAddr();
				 this.getConfirmList();
			  },
			  watch:{
				  isdefaultAddr:function(){
					  if(this.isdefaultAddr){
						  this.defaultAddr=1;
					  }
				  }/* ,
				  selectProvince:function(){
					  this.selectCity="0";
					  this.selectDistrict="0";
				  },
				  selectCity:function(){
					  this.selectDistrict="0";
				  } */
			  },
			  methods: {
				  
				  newAddr(){
					  alert("new!!!");
					  this.flag=0;
					  this.selectProvince="0";
			    	  this.selectCity="0";
			    	  this.selectDistrict="0";
			    	  this.detailAddr="";
				      this.acceptCustomer="";
				      this.phoneNum="";
				      this.isdefaultAddr=false;
				  },
				  
				  cancel(){
					  this.flag=1;
					  this.isEdit=0;
				  },
				  
				  confirmEdit(){
					  if(this.selectProvince!="0"&&this.selectCity!="0"&&this.selectDistrict!="0"&&this.detailAddr!=""&&this.acceptCustomer!=""&&this.phoneNum!=""){
						  if(this.addrList.length==1){
							  this.defaultAddr=1;
						  }else{
							  this.defaultAddr=this.isdefaultAddr?1:0;
						  }
						  axios({
							  url:"${APP_PATH}/good/doEditAddr.do",
							  method:"POST",
							  params:{
								  customer_addr_id:this.curAddr.customer_addr_id,
								  customer_user_id:this.curAddr.customer_user_id,
								  province:parseInt(this.selectProvince),
								  city:parseInt(this.selectCity),
								  district:parseInt(this.selectDistrict),
								  address:encodeURI(this.detailAddr),
								  is_default:this.defaultAddr,
								  accept_customer_name:encodeURI(this.acceptCustomer),
								  phone_num:this.phoneNum
							  }
						  }).then(res=>{
							  if(res.data.success){
								  let customer_addr_id=res.data.data;
								  alert("this.curAddr.customer_addr_id:"+this.curAddr.customer_addr_id);
								  axios({
									  url:"${APP_PATH}/good/doAddr.do",
									  method:"GET"
								  }).then(res=>{
									  if(res.data.success){
										  this.addrList=res.data.data;
										  axios({
											  url:"${APP_PATH}/good/doArea.do",
											  method:"GET",
											  params:{
												  choseList:list
											  }
										  }).then(res=>{
											  if(res.data.success){
												  this.provinceList=res.data.data;
												  this.curAddr=null;
												  this.addrList.forEach(item=>{
													  if(item.customer_addr_id==customer_addr_id){
														  this.curAddr=this.setCurAddr(item);
														  alert(JSON.stringify(this.curAddr));
														  this.flag=1;
														  this.isEdit=0;
													  }
												  })
											  }else{
												  console.log(res.data.message);
											  }
										  })
										  
									  }else{
										  alert(res.data.message);
									  }
								  })
								  
							  }else{
								  alert(res.data.message);
							  }
						  })
					  }
				  },
				  
				  editAddr(){
					  this.flag=0;
					  this.isEdit=1;
					  this.selectProvince=this.curAddr.province;
					  this.selectCity=this.curAddr.city;
					  this.selectDistrict=this.curAddr.district;
					  this.detailAddr=this.curAddr.address;
					  this.acceptCustomer=this.curAddr.accept_customer_name;
					  this.phoneNum=this.curAddr.phone_num;
					  this.isdefaultAddr=this.curAddr.is_default==1?true:false;
					  this.provinceList.forEach(province=>{
						  if(province.code==this.selectProvince){
							  this.curCityList=province.cityList;
							  /* alert("this.curCityList"); */
						  }
					  })
					  this.curCityList.forEach(city=>{
						  if(city.code==this.selectCity){
							  this.curDistrictList=city.areaList;
							  /* alert("this.curDistrictList"); */
						  }
					  })
				  },
				  
				  getArea(){
					  axios({
						  url:"${APP_PATH}/good/doArea.do",
						  method:"GET",
						  params:{
							  choseList:list
						  }
					  }).then(res=>{
						  if(res.data.success){
							  this.provinceList=res.data.data;
							 /*  alert("area--->"+JSON.stringify(this.provinceList)); */
						  }else{
							  /* this.$message(res.data.message); */
							  console.log(res.data.message);
						  }
					  })
				  },
				  
				  getConfirmList(){
					  axios({
						  url:"${APP_PATH}/good/doConfirm.do",
						  method:"GET",
						  params:{
							  choseList:list
						  }
					  }).then(res=>{
						  if(res.data.success){
							  this.confirmList=res.data.data;
							  let total=0;
							  this.confirmList.forEach(item=>{
								  total=item.sku.ofGood.good_price*item.cart_good_num+total;
								  this.$set(this.choseskuList,this.choseskuList.length,item.sku.sku_id)
							  })
							  this.totalPrice=parseFloat(total).toLocaleString();
							  alert("ConfirmList-success!!!");
						  }else{
							  /* this.$message(res.data.message); */
							  console.log(res.data.message);
						  }
					  })
				  },
				  
				  getAddr(){
					  axios({
						  url:"${APP_PATH}/good/doAddr.do",
						  method:"GET"
					  }).then(res=>{
						  if(res.data.success){
							  this.addrList=res.data.data;
							  axios({
								  url:"${APP_PATH}/good/doArea.do",
								  method:"GET",
								  params:{
									  choseList:list
								  }
							  }).then(res=>{
								  if(res.data.success){
									  this.provinceList=res.data.data;
									  alert("getAddr-success!!!"+this.addrList.length);
									  if(this.addrList.length==0){
										  this.flag=0;
									  }else{
										  this.addrList.forEach(item=>{
											  if(item.is_default==1){
												  this.curAddr=this.setCurAddr(item);
											  }
										  })
										  
									  }
								  }else{
									  console.log(res.data.message);
								  }
							  })
							  
						  }else{
							  alert(res.data.message);
						  }
					  })
				  },
				  
				  setCurAddr(addr){
					  /* alert("provinceList:---->"+JSON.stringify(this.provinceList)); */
					  this.areaList=[];
					  this.provinceList.forEach(province=>{
						  if(parseInt(province.code)==addr.province){
							  this.$set(this.areaList,this.areaList.length,province.name);	
							  /* alert(this.areaList); */
							  province.cityList.forEach(city=>{
								  if(parseInt(city.code)==addr.city){
									  this.$set(this.areaList,this.areaList.length,city.name);
									  /* alert(this.areaList); */
									  city.areaList.forEach(district=>{
										  if(eval(district.code)==addr.district){
											  this.$set(this.areaList,this.areaList.length,district.name);
											  alert(this.areaList);
										  }						
									  })
								  }						
							  })
						  }
					  })
					  this.$set(addr,"allAddress","");
					  this.$set(addr,"allAddress",this.areaList.toLocaleString().replace(/,/g,"")+addr.address)
					  return addr;
				  },
				  
				  
				  chooseProvince(e){
					  let province_code=e.target.value;
					  this.provinceList.forEach(province=>{
						  if(province.code==province_code){
							  this.curCityList=province.cityList;
						  }
					  })
				  },
				  
				  chooseCity(e){
					  let city_code=e.target.value;
					  this.curCityList.forEach(city=>{
						  if(city.code==city_code){
							  this.curDistrictList=city.areaList;
						  }
					  })
				  },
				  chooseDistrict(e){
					  
				  },
				  
				  createOrder(){
					  axios({
						  url:"${APP_PATH}/good/doOrder.do",
						  method:"POST",
						  params:{
							  order_addr:this.curAddr.customer_addr_id,
							  choseList:this.choseskuList.toLocaleString(),
							  order_level:1,
							  order_type:2,
							  order_total_amount:parseFloat(this.totalPrice)
						  }
					  }).then(res=>{
						  
					  })
				  },
				  
				  addAddr(){
					  if(this.selectProvince!="0"&&this.selectCity!="0"&&this.selectDistrict!="0"&&this.detailAddr!=""&&this.acceptCustomer!=""&&this.phoneNum!=""){
						  if(this.addrList.length==0){
							  this.defaultAddr=1;
						  }else{
							  this.defaultAddr=this.isdefaultAddr?1:0;
						  }
						  axios({
							  url:"${APP_PATH}/good/doAddAddr.do",
							  method:"POST",
							  params:{
								  province:parseInt(this.selectProvince),
								  city:parseInt(this.selectCity),
								  district:parseInt(this.selectDistrict),
								  address:encodeURI(this.detailAddr),
								  is_default:this.defaultAddr,
								  accept_customer_name:encodeURI(this.acceptCustomer),
								  phone_num:this.phoneNum
							  }
						  }).then(res=>{
							  if(res.data.success){
								  this.getAddr();
								  this.flag=1;
								  if(this.addrList.length>1){
									  this.addrList.forEach(item=>{
										  if(item.customer_addr_id==res.data.data){
											  this.curAddr=this.setCurAddr(item);
											  alert(JSON.stringify(this.curAddr));
										  }
									  })
								  }
								  /* alert("success!!!----"+res.data.data); */
							  }else{
								  alert(res.data.message);
							  }
						  })
					  }
				  }
				  
			  }
		})
		
		</script>
	</body>
</html>
