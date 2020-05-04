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
body, html {
	position: relative;
	height: 100%;
}

a {
	color: #000000;
}

a, a:hover {
	text-decoration: none;
}

.main-container-bg {
	position: relative;
	min-height: 100%;
	background-color: #f3f4f5;
	top: 40px;
}

.sale-tab {
	height: 60px;
	font-size: 16px;
	color: #0b8bff;
	line-height: 40px;
	text-align: center;
	background: #e6f6ff;
}

.tab-content {
	width: 1090px;
	margin: 0 auto;
	position: relative;
	height: 100%;
}

.slick-list {
	position: relative;
	z-index: 0;
	display: block;
	overflow: hidden;
	margin: 0;
	padding: 0;
	height: 280px;
}

.slick-track {
	opacity: 1;
	width: 13293px;
}

.wrap {
	height: 420px;
	position: absolute;
	left: 50%;
}

.wrap img {
	position: relative;
	left: -50%;
}

.main-container {
	width: 1180px;
	height: 100%;
	/* margin: 0 30px; */
	margin: 0 auto;
	/* display: flex; */
	padding-top: 20px;
	-webkit-box-align: start;
	align-items: flex-start;
}

.container {
	/* width: 100%; */
	border-radius: 10px;
	padding: 30px;
	margin-bottom: 40px;
}

.white-bg {
	background: #fff;
}

.main-title {
	margin-bottom: 30px;
}

.common-a, .common-a:hover {
	text-decoration: none;
}

.main-title .new-sale {
	font-family: PingFangSC-Medium;
	font-size: 24px;
	color: #0b8bff;
	line-height: 28px;
	margin-right: 14px;
}

.main-title .sub-title {
	font-size: 16px;
	color: #999;
	line-height: 18px;
}

.send-content {
	float: right;
	margin-right: 30px;
	line-height: 25px;
	font-size: 14px;
	cursor: pointer;
	margin-right: 0;
}

body, h1, h2, h3, h4, h5, h6, img, li, ol, p, ul {
	margin: 0;
	padding: 0;
}

.content {
	cursor: pointer;
	position: relative;
}

.sale-list {
	background: #f3f4f5;
	margin-bottom: 40px;
	margin-top: 50px;
	cursor: pointer;
	position: relative;
	border: none;
	z-index: 0;
	padding: 0 10px 0;
	display: table;
	clear: both
}

.m-product {
	width: 265px !important;
	margin-right: 10px;
}

.m-product {
	line-height: 1;
	text-align: center;
	font-size: 13px;
	float: left;
	padding-top: 30px;
	height: 380px;
}

.m-product .hd {
	position: relative;
	margin-bottom: 8px;
	overflow: hidden;
	background-color: #f4f4f4;
}

.m-product img {
	width: 265px;
	height: 265px;
	transition: transform 1s;
	background-color: #f4f4f4;
	color: #f4f4f4;
	display: block;
	margin: 0 auto;
}

.m-product .prdtTags {
	height: 20px;
	font-size: 0;
	color: #fff;
	width: 200px;
	margin: 0 auto 3px;
	overflow: hidden;
}

.m-itemTag {
	display: inline-block;
	height: 20px;
	line-height: 20px;
	color: #fff !important;
	padding: 0 5px;
	font-size: 12px;
	background-color: #e36844;
}

.m-product .name {
	width: 166px;
	margin: 0 auto 4px;
	max-height: 40px;
	line-height: 20px;
	overflow: hidden;
}

.m-product .price {
	font-size: 13px;
	line-height: 13px;
	color: #d4282d;
	padding: 1px 0 9px;
	margin: 0;
}

.m-product .price span {
	display: inline-block;
	overflow: hidden;
	height: 20px;
	line-height: 22px;
}

.tab {
	float: left;
}

.tab li {
	display: inline-block;
	padding: 10px 30px 10px;
	cursor: pointer;
}

ul li {
	list-style: none;
}

.search-tab {
	border: 1px;
	/* border-color: blue; */
	border-radius: 20px;
	width: 350px;
	height: 100%;
	line-height: 30px;
	/* margin: 15px 0 0; */
	height: 100%;
	float: right;
}

.search-tab input {
	position: absolute;
	/* float: right; */
	right: 60px;
	top: 0;
	z-index: 1;
	display: block;
	height: 30px;
	line-height: 38px;
	padding-top: 2px;
	padding-bottom: 2px;
	border: 1px solid #0b8bff;
	border-bottom-left-radius: 19px;
	border-top-left-radius: 19px;
	font-size: 14px;
	width: 242px;
	padding-left: 38px;
	outline: 0;
	overflow: hidden;
	margin-top: 10px;
	box-shadow: 0 2px 20px 0 #e6f6ff;
}

.search-bnt {
	float: right;
	margin-top: 10px;
	width: 60px;
	border: 1px solid #0b8bff;
	height: 34px;
	border-top-right-radius: 10px;
	border-bottom-right-radius: 10px;
	cursor: pointer;
	box-shadow: 0 2px 20px 0 #e6f6ff;
}

.el-carousel__item h3 {
	color: #475669;
	font-size: 18px;
	opacity: 0.75;
	line-height: 300px;
	margin: 0;
}

.el-carousel__item:nth-child(2n) {
	background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n+1) {
	background-color: #d3dce6;
}
</style>
</head>
<body>
	<div class="main-container-bg">
		<div class="sale-tab  white-bg">
			<div class="tab-content">
				<ul class="tab">
					<li v-for="(type,index) in typeList" :key="index"><el-dropdown
							@command="handleCommand"> <span
							class="el-dropdown-link"> {{type.sale_type_name}} </span> <el-dropdown-menu
							slot="dropdown"> <el-dropdown-item
							v-for="(sub,index) in type.sub_type_list"
							:command="sub.sale_type_id">{{sub.sale_type_name}}</el-dropdown-item>
						</el-dropdown-menu> </el-dropdown></li>
				</ul>
				<div class="search-tab">
					<input type="text" v-model="inputValue"/> <span class="search-bnt" @click="search()">搜索</span>
				</div>
			</div>
		</div>

		<%-- <div class="slick-list">
			<div class="slick-track">
				<div class="slick-slide" v-for="(slide,index) in saleTheme"
					:key="item">
					<img :src="'${APP_PATH}/'+slide.sale_theme_pic" />
				</div>
			</div>

		</div> --%>
		<el-carousel :interval="5000" arrow="always"
			style="
    margin-top: 1px;"> <el-carousel-item
			v-for="(slide,index) in saleTheme" :key="index"> <img
			:src="'${APP_PATH}/'+slide.sale_theme_pic" /> <!-- <h3>{{ item }}</h3> -->
		</el-carousel-item> </el-carousel>

		<div class="main-container">
			<div class="container white-bg">
				<div class="main-title">
					<a target="_blank" class="common-a"
						href="https://m.xinli001.com/lesson/ttt?source=pc-home"> <span
						class="new-sale">新品首发</span>
					</a> <span class="sub-title">减压治愈好物</span>
					<p class="send-content">
						<a target="_blank" class="common-a"
							href="https://m.xinli001.com/lesson/userCenter"> <span
							class="margin-icon">更多</span>
						</a>
					</p>
				</div>

				<div class="content">
					<div class="sale-list">
						<div class="m-product" v-for="(product,index) in newSaleList">
							<div class="hd">
								<a class="imgWrap"
									:href="'${APP_PATH }/good/good.htm?id='+product.good_id">
									<div style="width: 100%; height: 100%;">
										<img class="img" v-for="(pic,index) in product.goodPicList"
											:src="'${APP_PATH }'+pic.sale_pic_addr" v-if="index==1" />
									</div>
								</a>
							</div>

							<div class="bd">
								<div class="prdtTags">
									<span class="m-itemTag">新人特价包邮</span>
								</div>

								<h4 class="name">
									<a :href="'${APP_PATH }/good/good.htm?id='+product.good_id">
										<span>{{product.good_name}}</span>
									</a>
								</h4>

								<p class="price">
									<span class="retailPrice">¥{{product.good_price}}</span>
								</p>
							</div>

						</div>


					</div>
				</div>
			</div>

			<div class="container white-bg">
				<div class="main-title">
					<a target="_blank" class="common-a"
						href="https://m.xinli001.com/lesson/ttt?source=pc-home"> <span
						class="new-sale">人气推荐</span>
					</a> <span class="sub-title">减压治愈好物</span>
					<p class="send-content">
						<a target="_blank" class="common-a"
							href="https://m.xinli001.com/lesson/userCenter"> <span
							class="margin-icon">更多</span>
						</a>
					</p>
				</div>

				<div class="content">
					<div class="sale-list">
						<div class="m-product" v-for="(product,index) in recommendList">
							<div class="hd">
								<a class="imgWrap"
									:href="'${APP_PATH }/good/good.htm?id='+product.good_id">
									<div style="width: 100%; height: 100%;">
										<img class="img" v-for="(pic,index) in product.goodPicList"
											:src="'${APP_PATH }'+pic.sale_pic_addr" v-if="index==1" />
									</div>
								</a>
							</div>

							<div class="bd">
								<div class="prdtTags">
									<span class="m-itemTag">新人特价包邮</span>
								</div>

								<h4 class="name">
									<a :href="'${APP_PATH }/good/good.htm?id='+product.good_id">
										<span>{{product.good_name}}</span>
									</a>
								</h4>
								<p class="price">
									<span class="retailPrice">¥{{product.good_price}}</span>
								</p>
							</div>

						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="${APP_PATH }/js/vue.js"></script>
	<script src="${APP_PATH }/js/axios.js"></script>
	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<!-- <script src="https://unpkg.com/vue/dist/vue.js"></script> -->
	<script src="https://unpkg.com/element-ui/lib/index.js"></script>
	<script type="text/javascript">
	var index = new Vue({
		  el: '.main-container-bg',
		  data () {
		    return {
		    	inputValue:"",
		    	typeList:[],
		    	saleTheme:[],
		    	newSaleList:[],
		    	recommendList:[]
		    }
		  },
		  created() {
			  this.getTypeList();
			  this.getSaleTheme();
			  this.getNewSaleList();
			  this.getRecommendList()
		  },
		  methods: {
			  
			  search(){
				  if(this.inputValue.trim()==""){
					  alert("请输入内容");
				  }else{
					  window.location.href="${APP_PATH}/good/toSearch.htm?inputValue="+encodeURI(encodeURI(this.inputValue.trim()));
				  }
			  },
		  
		  	handleCommand(command) {
        		this.$message('click on item ' + command);
        		window.location.href="${APP_PATH}/good/toType.htm?level=1&typeid="+encodeURI(encodeURI(command));
				 
      		},
			  
			 /*  getTypeList(){
				  axios({
					  url: "${APP_PATH}/good/doTypeList.do",
				      method: "GET",
				    }).then(res=>
						{ if(res.data.success){ this.typeList=res.data.data; }else{
						alert(res.data.message); } }); }, 
				getSaleTheme(){ axios({ url:
						"${APP_PATH}/good/dosaleTheme.do", method: "GET", }).then(res => {
						if(res.data.success){ this.saleTheme=res.data.data; }else{
						alert(res.data.message); } }); }, getNewSaleList(){ axios({ url:
						"${APP_PATH}/good/doSaleList.do", method: "GET", params:{
						sale_theme_typeid:1, pageno:1, pagesize:8 } }).then(res => {
						if(res.data.success){ this.newSaleList=res.data.page.data; }else{
						alert(res.data.message); } }); }, getRecommendList(){ axios({ url:
						"${APP_PATH}/good/doSaleList.do", method: "GET", params:{
						sale_theme_typeid:2, pageno:1, pagesize:8 } }).then(res => {
						if(res.data.success){ this.recommendList=res.data.page.data;
						}else{ alert(res.data.message); } }); } } })  */
						
			getTypeList() {
				axios({
					url: "${APP_PATH}/good/doTypeList.do",
					method: "GET",
				}).then(res => {
					if (res.data.success) {
						this.typeList = res.data.data;
					} else {
						alert(res.data.message);
					}
				});
			},
			getSaleTheme() {
				axios({
					url: "${APP_PATH}/good/dosaleTheme.do",
					method: "GET",
				}).then(res => {
					if (res.data.success) {
						this.saleTheme = res.data.data;
					} else {
						alert(res.data.message);
					}
				});
			}, 
			getNewSaleList() {
				axios({
					url: "${APP_PATH}/good/doSaleList.do",
					method: "GET",
					params: {
						sale_theme_typeid: 1,
						pageno: 1,
						pagesize: 8
					}
				}).then(res => {
					if (res.data.success) {
						this.newSaleList = res.data.page.data;
					} else {
						alert(res.data.message);
					}
				});
			}, 
			getRecommendList() {
				axios({
					url: "${APP_PATH}/good/doSaleList.do",
					method: "GET",
					params: {
						sale_theme_typeid: 2,
						pageno: 1,
						pagesize: 8
					}
				}).then(res => {
					if (res.data.success) {
						this.recommendList = res.data.page.data;
					} else {
						alert(res.data.message);
					}
				});
			}
		}
	})
	
	
	</script>
</body>
</html>
