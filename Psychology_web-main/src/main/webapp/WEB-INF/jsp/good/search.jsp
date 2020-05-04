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

			body,
			h1,
			h2,
			h3,
			h4,
			h5,
			h6,
			img,
			li,
			ol,
			p,
			ul {
				margin: 0;
				padding: 0;
			}

			body,
			button,
			code,
			input,
			select,
			textarea {
				font-family: "Microsoft Yahei", "微软雅黑", verdana;
				color: #333;
			}

			.g-bd-list {
				z-index: 1;
				position: relative;
			}

			ul li {
				list-style: none;
			}

			.g-bd-list {
				padding-bottom: 80px;
				background-color: #f5f5f5;
			}

			.g-row {
				width: 1090px;
				margin-right: auto;
				margin-left: auto;
				position: relative;
			}

			.m-searchResult .content,
			.m-searchResult .noResult {
				padding: 0 40px;
				background-color: #fff;
			}

			.m-crumb {
				font-size: 12px;
				color: #333;
				line-height: 1;
			}
			
			.m-crumbs-filter {
			    padding: 24px 0;
			}

			.m-crumb .z-cur {
				color: #999;
			}

			.m-sortBar {
				margin-top: 10px;
				border-bottom: 1px solid #eaeaea;
				overflow: hidden;
			}

			.m-sortBar .sorts {
				position: relative;
				overflow: hidden;
				padding: 20px 0;
				line-height: 1;
				border-top: 1px dashed #dedede;
			}

			.m-sortBar .sorts:first-child {
				border-top: none;
			}

			.m-sortBar .sorts .sort {
				margin-right: 30px;
				font-size: 14px;
			}

			a,
			a:hover {
				text-decoration: none;
			}

			a {
				color: #333;
			}

			.m-sortBar .active,
			a:hover {
				color: #b4a078;
			}

			.m-searchResult .resultList {
				margin: 25px auto 0;
				height: 1000px;
			}

			.m-itemList {
				margin-right: -10px;
			}

			.m-itemList .item {
				float: left;
				margin-right: 10px;
				margin-bottom: 50px;
			}

			.m-product {
				line-height: 1;
				text-align: center;
				font-size: 13px;
				width: 245px;
				height: 381px;
				position: relative;
			}

			.m-product.showScene {
				width: 245px;
				height: 401px;
			}

			.m-product .hd {
				position: relative;
				margin-bottom: 8px;
				overflow: hidden;
				background-color: #f4f4f4;
			}

			.m-product .img {
				width: 245px;
				height: 245px;
				transition: transform 1s;
				background-color: #f4f4f4;
				color: #f4f4f4;
				display: block;
				margin: 0 auto;
			}

			.m-product.showScene .imgScene {
				position: absolute;
				left: 0;
				right: 0;
				top: 0;
				margin: 0 auto;
				opacity: 0 !important;
				width: 245px;
				height: 245px;
			}

			.m-product .prdtTags {
				height: 20px;
				font-size: 0;
				color: #fff;
				width: 200px;
				margin: 0 auto 3px;
				overflow: hidden;
			}

			.m-product .name {
				width: 166px;
				margin: 0 auto 4px;
				max-height: 40px;
				line-height: 20px;
				/* display: -webkit-box; */
				overflow: hidden;
			}

			.m-product .price {
				color: #d4282d;
				text-align: center;
			}

			.addCartBtn {
				cursor: pointer;
				color: #fff;
				border: 1px solid #b4a078;
				background-color: #b4a078;
				width: 110px;
				height: 30px;
				line-height: 28px;
				font-size: 13px;
				padding: 0;
				letter-spacing: normal;
			}
		</style>
	</head>
	<body>

		<div class="g-bd-list">
			<div class="g-row">
				<div class="m-searchResult">
					<div class="m-crumb m-crumbs-filter">
						<span>
							<span class="crumb-name">全部商品</span>
						</span>
						<span>
							<span class="crumb-name z-cur">${inputValue}</span>
						</span>
					</div>
					<div class="content">
						<div class="m-sortBar">
							<div class="sorts">
								<span class="name">排序：</span>
								<a href="javascript:;" class="sort sort-default" :class="{active:sort==0}" @click="sortBy()">默认</a>
								<a href="javascript:;" class="sort sort-price" @click="sortByPrice()" :class="{active:sort==1}">
									<span>价格</span>
								</a>
							</div>
						</div>
						<div>
							<div class="resultList">
								<ul class="m-itemList">
									<li class="item" v-for="(good,index) in goodList">
										<div class="m-product showScene">
											<div class="hd">
												<a :href="'${APP_PATH }/good/good.htm?id='+good.good_id">
													<!-- <img class="img" src="https://yanxuan-item.nosdn.127.net/56852ee1b9ee63ec05706587e4e99129.png?type=webp&imageView&quality=95&thumbnail=245x245" />
													 -->
													 <img class="img" v-for="(pic,index) in good.goodPicList" :src="'${APP_PATH }'+pic.sale_pic_addr" v-if="index==1" />
													<div style="width:100%;height:100%;">
														<img class="imgScene" src="https://yanxuan-item.nosdn.127.net/5fa5ceae4a9c0c26a47deb505e0b7e22.jpg?type=webp&quality=95&thumbnail=245x245&imageView" />
													</div>
												</a>
											</div>

											<div class="bd">
												<div class="prdtTags">
													<span class="m-itemTag">新人特价包邮</span>
												</div>

												<h4 class="name">
													<a :href="'${APP_PATH }/good/good.htm?id='+good.good_id">
														<span>{{good.good_name}}</span>
													</a>
												</h4>

												<p class="price" style="display:block;">
													<span class="retailPrice">¥{{good.good_price}}</span>
												</p>
												<div class="addCart">
													<a class="btn addCartBtn">
														<span>加入购物车</span>
													</a>
												</div>
											</div>
										</div>
									</li>
									
								</ul>

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
		<!-- <script src="https://unpkg.com/element-ui/lib/index.js"></script> -->
		<script type="text/javascript">
		var search = new Vue({
			  el: '.content',
			  data () {
			    return {
			    	inputValue:"${inputValue}",
			    	sort:0,
			    	goodList:[]
			    }
			  },
			  created() {
				  this.doSearch();
			  },
			  methods: {
				  sortBy(){
					  this.sort=0;
					  this.doSearch();
				  },
				  
				  sortByPrice(){
					  this.sort=1;
					  axios({
						  url:"${APP_PATH}/good/doSearch.do",
						  method:"GET",
						  params:{
							  inputValue:encodeURI(this.inputValue.trim()),
							  sortid:this.sort
						  }
					  }).then(res=>{
						  if(res.data.success){
							  this.goodList=res.data.page.data;
							  
						  }else{
							  this.$message(res.data.message);
						  }
					  })
				  },
			 
				  doSearch(){
					  axios({
						  url:"${APP_PATH}/good/doSearch.do",
						  method:"GET",
						  params:{
							  inputValue:encodeURI(this.inputValue.trim())
						  }
					  }).then(res=>{
						  if(res.data.success){
							  this.goodList=res.data.page.data;
							  
						  }else{
							  this.$message(res.data.message);
						  }
					  })
				  }
			  }
		})
		
		</script>
		
	</body>
</html>
