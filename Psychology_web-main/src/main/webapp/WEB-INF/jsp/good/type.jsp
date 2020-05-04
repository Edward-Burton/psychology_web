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
			button,
			code,
			input,
			select,
			textarea {
				font-family: "Microsoft Yahei", "微软雅黑", verdana;
				color: #333;
			}

			.f-fz12,
			body {
				font-size: 12px;
			}

			body,
			button,
			input,
			select,
			textarea {
				outline: 0;
				font: 12px/1.5 "Microsoft Yahei", "微软雅黑", verdana;
			}

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
			ul {
				margin: 0;
				padding: 0;
			}

			a {
				color: #333;
			}

			a,
			a:hover {
				text-decoration: none;
			}

			a,
			a:active,
			a:hover,
			video {
				outline: 0;
			}

			.g-bd-list {
				padding-bottom: 80px;
				background-color: #f5f5f5;
			}

			.g-bd,
			.g-bd-list {
				z-index: 1;
				position: relative;
			}

			.g-row {
				width: 1090px;
				margin-right: auto;
				margin-left: auto;
				position: relative;
			}

			.g-row:after,
			.g-row:before {
				content: " ";
				display: table;
			}

			.g-row:after {
				clear: both;
			}

			.m-goodsArea {
				padding: 0 40px;
				position: relative;
				background-color: #fff;
			}

			.m-content,
			.m-goodsArea,
			.slick-list {
				overflow: hidden;
			}

			.m-sortBar {
				margin-top: 10px;
				border-bottom: 1px solid #eaeaea;
				overflow: hidden;
			}

			.m-sortBar .area:first-child,
			.m-sortBar .category:first-child,
			.m-sortBar .manufacture:first-child {
				border-top: none;
			}

			.m-sortBar .area,
			.m-sortBar .category,
			.m-sortBar .manufacture {
				overflow: hidden;
				border-top: 1px dashed #dedede;
				line-height: 1;
				padding-top: 20px;
			}

			.m-sortBar .sorts {
				position: relative;
				overflow: hidden;
				padding: 20px 0;
				line-height: 1;
				border-top: 1px dashed #dedede;
			}

			.m-sortBar .area .name,
			.m-sortBar .category .name,
			.m-sortBar .manufacture .name {
				font-size: 14px;
				color: #999;
				float: left;
				margin-right: 28px;
			}

			.m-sortBar .area .categoryGroup,
			.m-sortBar .category .categoryGroup,
			.m-sortBar .manufacture .categoryGroup {
				overflow: hidden;
				float: left;
				margin-bottom: 4px;
				width: 930px;
			}

			.m-sortBar .area .categoryItem,
			.m-sortBar .category .categoryItem,
			.m-sortBar .manufacture .categoryItem {
				float: left;
				margin-right: 30px;
				margin-bottom: 16px;
				font-size: 14px;
			}

			.m-sortBar .sorts .name {
				font-size: 14px;
				color: #999;
				margin-right: 28px;
			}

			.m-sortBar .sorts .sort {
				margin-right: 30px;
				font-size: 14px;
			}

			.m-sortBar .active,
			.m-sortBar .sorts .priceSure .reset:hover {
				color: #b4a078;
			}

			.m-sortBar .sorts .sort-price .icon {
				display: inline-block;
				margin-left: 10px;
				vertical-align: middle;
				margin-top: -2px;
			}

			.m-sortBar .sorts .sort-price .icon .arrow-up-gray {
				display: block;
				margin-bottom: 2px;
			}

			.m-sortBar .sorts .sort-price .icon .arrow-down-gray {
				display: block;
				margin-top: 2px;
			}

			.m-sortBar .sorts .sort.sort-time {
				margin-right: 30px;
			}

			.m-itemList:after,
			.m-itemList:before,
			.m-siteInfo .nav:after,
			.m-siteInfo .nav:before {
				display: table;
				content: " ";
			}

			.m-itemList:after {
				clear: both;
			}

			.m-itemList {
				margin-right: -10px;
			}

			.f-margin-top-25 {
				margin-top: 25px;
			}

			ol,
			ul {
				list-style: none;
			}

			.m-itemList .item {
				float: left;
				margin-right: 10px;
				margin-bottom: 50px;
			}

			.m-product.showScene {
				width: 245px;
				height: 401px;
			}

			.m-product {
				line-height: 1;
				text-align: center;
				font-size: 13px;
				width: 245px;
				height: 381px;
				position: relative;
			}

			.m-product .hd {
				position: relative;
				margin-bottom: 8px;
				overflow: hidden;
				background-color: #f4f4f4;
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

			.html.webp body .img-lazyloaded {
				background-image: none;
			}

			.img-lazyloaded {
				background: #f4f4f4;
				color: #f4f4f4;
			}

			.m-product .prdtTags {
				height: 20px;
				font-size: 0;
				color: #fff;
				width: 200px;
				margin: 0 auto 3px;
				overflow: hidden;
			}

			.m-itemTag:first-child {
				margin-left: 0;
			}

			.new.m-itemTag {
				background-color: #b4a078;
			}

			.m-itemTag {
				margin-left: 6px;
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
				-webkit-box-orient: vertical;
				width: 166px;
				margin: 0 auto 4px;
				max-height: 40px;
				line-height: 20px;
				display: -webkit-box;
				overflow: hidden;
			}

			.m-product .price {
				color: #d4282d;
				text-align: center;
			}

			.m-product hr {
				display: block;
				width: 130px;
				height: 1px;
				padding: 0;
				margin: 6px auto 14px;
				border: 0;
				border-top: 1px solid #e8e8e8;
			}

			.m-product .desc {
				width: 100%;
				padding: 0 10px;
			}

			.m-product .desc,
			.m-product .sign {
				line-height: 18px;
				color: #999;
			}

			.f-text-overflow,
			.m-hrz .w-txticon .txt,
			.m-product .desc,
			.w-linkicon .txt {
				overflow: hidden;
				white-space: nowrap;
				text-overflow: ellipsis;
			}
		</style>
	</head>
	<body>

		<div class="g-bd-list">
			<div class="g-row">
				<!-- 面包屑 -->
				<div>
					<el-breadcrumb separator-class="el-icon-arrow-right">
					  <el-breadcrumb-item :to="{ path: '/' }">首页</el-breadcrumb-item>
					  <el-breadcrumb-item>{{p_type.sale_type_name}}</el-breadcrumb-item>
					  <el-breadcrumb-item v-if="sedType!=null">{{sedType}}</el-breadcrumb-item>
					</el-breadcrumb>
				</div>

				<div class="m-goodsArea">
					<div class="m-sortBar">
						<div class="category">
							<span class="name">分类：</span>
							<div class="categoryGroup">
								<a href="javascript:;" class="categoryItem j-categoryItem" :class="{active:level==0}" :data-id="p_type.sale_type_id" @click="queryList($event)">全部</a>
								<a href="javascript:;" class="categoryItem j-categoryItem" :data-id="type.sale_type_id" :class="{active:curtype==type.sale_type_id}" @click="queryList($event)" v-for="(type,index) in p_type.sub_type_list">{{type.sale_type_name}}</a>
							</div>
						</div>

						<div class="sorts">
							<span class="name">排序：</span>
							<a href="javascript:;" class="sort sort-default" :class="{active:sort==0}" @click="sortBy()">默认</a>
							<a class="sort sort-price" :class="{active:sort==1}" @click="sortByp()">
								<span>价格：</span>
								<div class="icon">
									<i></i>
									<i></i>
								</div>
							</a>

							<a class="sort sort-time" :class="{active:sort==2}" @click="sortByt()">
								<span>上架时间</span>
								<i></i>
							</a>
						</div>
					</div>
					<div class="m-content">
						<ul class="m-itemList f-margin-top-25">
							<li class="item" v-for="(good,index) in goodList">
								<div class="m-product j-product showScene">
									<div class="hd">
										<a target="_blank" href="#">
											<%-- <img class="img" v-for="(pic,index) in good.goodPicList" :src="'${APP_PATH }'+pic.sale_pic_addr" v-if="index==1" /> --%>
											<img style="width: 245px; height: 245px;" v-for="(pic,index) in good.goodPicList" :src="'${APP_PATH }'+pic.sale_pic_addr" v-if="index==1" >
											
											<!-- <img src="https://yanxuan-item.nosdn.127.net/d1cd08e51532d0d8da746441fc572dc7.png?type=webp&imageView&quality=95&thumbnail=245x245" />
											 -->
											 <div style="width:100%;height:100%;">
												<img class="imgScene" />
											</div>
										</a>
									</div>
									<div class="bd">
										<div class="prdtTags">
											<span class="m-itemTag new">新品</span>
										</div>
										<h4 class="name">
											<a href="#" title="">
												<span>{{good.good_name}}</span>
											</a>
										</h4>
										<p class="price" style="display: block;">
											<span>
												<span>¥</span>
												<span>{{good.good_price}}</span>
											</span>
										</p>

										<div>
											<hr />
											<p class="desc">{{good.good_description}}</p>
										</div>

									</div>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		
		<script src="${APP_PATH }/js/vue.js"></script>
		<script src="${APP_PATH }/js/axios.js"></script>
		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<script src="https://unpkg.com/element-ui/lib/index.js"></script>
		<script type="text/javascript">
		var type = new Vue({
			el:".g-row",
			data(){
				return{
					curtype:"${typeid}",
					sedType:null,
					level:${level},
					p_type:null,
					goodList:[],
					sort:0,
					isUp:1
				}
			},
			created(){   
				this.getTypeList();
				this.getGoodList();
			},
			methods:{
				
				sortBy(){
					this.sort=0;
					this.getGoodList();
				},
				
				sortByp(){
					this.sort=1;
					this.getGoodList();
				},
				
				sortByt(){
					this.sort=2;
					this.getGoodList();
				},
				
				queryList(e){
					let id=parseInt(e.currentTarget.dataset.id);
					this.curtype=id;
					if(id==this.p_type.sale_type_id){
						this.level=0;
						this.getTypeList();
					}else{
						this.level=1;
						this.getTypeList();
					}
					this.getGoodList();
				},
				
				getTypeList(){
					this.p_type_id=this.curtype;
					axios({
						url:"${APP_PATH}/good/doParentType.do",
						method:"GET",
						params:{
							typeid:this.curtype,
							level:this.level
						}
					}).then(res => {
						if(res.data.success){
							this.p_type=res.data.data;
							if(this.level==1){
								this.p_type.sub_type_list.forEach((item) => {
									  if(item.sale_type_id==this.curtype){
										  this.sedType=item.sale_type_name;
									  }
					            });
							}
						}
					})
					
					
				},
				getGoodList(){
					axios({
						url:"${APP_PATH}/good/doTypeSearch.do",
						method:"GET",
						params:{
							typeid:this.curtype,
							level:this.level,
							sortid:this.sort,
							isup:this.isUp
						}
					}).then(res => {
						if(res.data.success){
							this.goodList=res.data.page.data;
						}else{
							alert(res.data.success);
						}
					})
				}
			}
		})
		
		</script>
		
	</body>
</html>
    