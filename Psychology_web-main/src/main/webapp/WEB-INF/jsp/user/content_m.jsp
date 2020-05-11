<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<style>
			
			body, button, div, form, html, input, li, p, select, ul {
			    margin: 0;
			    padding: 0;
			}
			
			ul li {
			    list-style: none;
			}
			
			.content {
				width: 100%;
				height: 100%;
				overflow: auto;
				margin-top: 20px;
				background-color: #eee;
			}

			.content .content_wrap {
				width: 900px;
				height: auto;
				margin: 0 auto;
				overflow: auto;
				margin-top: 30px;
			}

			.content .content_wrap .left_div {
				width: 180px;
				height: auto;
				float: left;
				background: #fff;
				border-radius: 10px;
				margin-right: 20px;
				padding: 14px 0;
			}

			.content .content_wrap .right_div {
				width: 700px;
				height: auto;
				float: right;
				padding-bottom: 20px;
			}

			.content .content_wrap .left_div ul {
				overflow: auto;
				margin-bottom: 50px;
			}

			.content .content_wrap .left_div .ul_title {
				position: relative;
				height: 44px;
				line-height: 44px;
				text-indent: 54px;
				font-size: 16px;
				color: #999;
			}

			.content .content_wrap .left_div ul li {
				height: 46px;
				line-height: 46px;
				font-size: 18px;
				color: #333;
				text-indent: 54px;
			}

			.content .content_wrap .left_div ul .active {
				color: #0b8bff;
				font-weight: 700;
				background: #f7fbff;
			}

			a {
				text-decoration: none;
				color: inherit;
			}

			.content .content_wrap .right_div .right_div_title {
				margin-bottom: 20px;
			}

			.content .content_wrap .right_div .right_div_title p {
				height: 48px;
				width: 700px;
				line-height: 48px;
				font-size: 16px;
				color: #999;
				background: #fff;
				border-radius: 10px;
				text-indent: 30px;
			}

			.content .content_wrap .right_div .right_div_ct {
				background: #fff;
				border-radius: 10px;
				overflow: auto;
			}

			.content .content_wrap .right_div .right_div_ct .right_div_tab {
				height: 60px;
				line-height: 60px;
				overflow: auto;
				border-bottom: 1px solid #f1f1f1;
			}

			.content .content_wrap .right_div .right_div_ct .right_div_tab ul {
				overflow: auto;
				padding-left: 50px;
			}

			.content .content_wrap .right_div .right_div_ct .right_div_tab ul li {
				position: relative;
				float: left;
				margin-right: 80px;
				font-size: 18px;
				color: #666;
				cursor: pointer;
			}

			.content .content_wrap .right_div .right_div_ct .right_div_tab ul li.active {
				font-weight: 700;
				color: #0b8bff;
			}

			.content .content_wrap .right_div .right_div_ct .right_div_tab ul li label {
				margin-left: 5px;
				cursor: pointer;
			}

			.content .content_wrap .right_div .right_div_ct .right_div_tab ul li span {
				display: none;
				width: 42px;
				height: 2px;
				background: #0b8bff;
				border-radius: 18px;
				position: absolute;
				bottom: 0;
				right: 0;
				left: 0;
				margin: auto;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent {
				overflow: auto;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul {
				display: none;
				overflow: auto;
				padding: 0 30px;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul.active {
				display: block;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li {
				overflow: auto;
				padding: 30px 0;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent .ask li {
				border-bottom: 1px solid #f1f1f1;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .answer_item_t {
				line-height: 30px;
				overflow: auto;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .answer_item_t .answer_cover {
				float: left;
				height: 30px;
				width: 30px;
				background-position: 50%;
				background-repeat: no-repeat;
				background-size: cover;
				border-radius: 50%;
				overflow: hidden;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .answer_item_t .answer_author {
				float: left;
				margin-left: 20px;
				font-size: 16px;
				color: #333;
				font-weight: 700;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .answer_item_t .answer_author span {
				font-weight: 400;
				margin-left: 10px;
				font-size: 14px;
				color: #ccc;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .answer_item_t .answer_num {
				float: right;
				font-size: 14px;
				color: #ccc;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .answer_title {
				margin: 18px 0 14px;
				font-size: 20px;
				color: #333;
				font-weight: 700;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .answer_text {
				font-size: 14px;
				color: #999;
				line-height: 22px;
				max-height: 66px;
				display: -webkit-box;
				-webkit-box-orient: vertical;
				-webkit-line-clamp: 3;
				overflow: hidden;
				word-break: break-all;
			}
			
			.content .content_wrap .right_div .right_div_ct .tabContent ul li .answer_text.moreContent {
			    max-height: none;
			    overflow: auto;
			    display: block;
			}

			.showAllCt {
				display: none;
				float: right;
				color: #0b8bff;
				cursor: pointer;
			}

			.showAllCt i {
				font-size: 12px;
				margin-left: 6px;
			}

			.yxlicon {
				font-family: yxlicon !important;
				font-size: 16px;
				font-style: normal;
				-webkit-font-smoothing: antialiased;
				-moz-osx-font-smoothing: grayscale;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent .article li {
				padding: 0 0 50px;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent .article li:first-of-type {
				padding-top: 50px;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent .article li:last-of-type {
				border-bottom: 1px solid #f1f1f1;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .article_cover {
				float: left;
				width: 98px;
				height: 98px;
				margin-right: 18px;
				overflow: hidden;
				cursor: pointer;
				background-size: cover;
				background-position: 50%;
				background-repeat: no-repeat;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .article_r {
				float: left;
				width: 516px;
				height: auto;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .article_r .article_title {
				font-size: 20px;
				font-weight: 700;
				color: #333;
				line-height: 20px;
				cursor: pointer;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .article_r .article_desc {
				display: -webkit-box;
				-webkit-box-orient: vertical;
				-webkit-line-clamp: 2;
				overflow: hidden;
				margin-top: 12px;
				line-height: 20px;
				font-size: 14px;
				color: #666;
				cursor: pointer;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .article_r .article_b {
				margin-top: 8px;
				font-size: 14px;
				line-height: 20px;
				color: #999;
				overflow: auto;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .article_r .article_b ul {
				display: block;
				overflow: auto;
				padding: 0;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .article_r .article_b li {
				float: left;
				margin-right: 32px;
				padding: 0;
				border: none;
			}

			.content .content_wrap .right_div .right_div_ct .tabContent ul li .article_r .article_b li:last-of-type {
				float: right;
			}
			
			.content .content_wrap .right_div .right_div_ct .tabContent .FM li {
			    padding-bottom: 30px;
			    border-bottom: 1px solid #f1f1f1;
			}
			
			.content .content_wrap .right_div .right_div_ct .tabContent ul li .fm_item_l {
			    float: left;
			    width: 512px;
			    height: auto;
			    margin-right: 30px;
			    overflow: hidden;
			}
			
			.content .content_wrap .right_div .right_div_ct .tabContent ul li .fm_item_l .fm_item_title {
			    font-size: 20px;
			    font-weight: 700;
			    color: #333;
			    text-overflow: ellipsis;
			    overflow: hidden;
			    white-space: nowrap;
			    cursor: pointer;
			}
			
			.content .content_wrap .right_div .right_div_ct .tabContent ul li .fm_item_l .fm_item_desc {
			    margin-top: 12px;
			    line-height: 20px;
			    font-size: 14px;
			    color: #666;
			    text-overflow: ellipsis;
			    overflow: hidden;
			    white-space: nowrap;
			    cursor: pointer;
			}
			
			.content .content_wrap .right_div .right_div_ct .tabContent ul li .fm_item_l .fm_item_b {
			    margin-top: 20px;
			    line-height: 16px;
			    font-size: 14px;
			    color: #999;
			}
			
			.content .content_wrap .right_div .right_div_ct .tabContent ul li .fm_item_l .fm_item_b span {
			    margin-right: 40px;
			}
			
			.content .content_wrap .right_div .right_div_ct .tabContent ul li .fm_item_cover {
			    position: relative;
			    float: left;
			    width: 98px;
			    height: 98px;
			    background-size: cover;
			    background-position: 50%;
			    background-repeat: no-repeat;
			    cursor: pointer;
			}
			
		</style>
	</head>
	<body>
		<div class="content">
			<div class="content_wrap">
				<div class="left_div">
					<ul>
						<div class="ul_title">内容管理</div>
						<li :class="{active:tag==0}" @click="collect">
							<a href="javacript:">我的收藏</a>
						</li>
						<li :class="{active:tag==1}">
							<a href="javacript:">课程管理</a>
						</li>
						<li :class="{active:tag==2}">
							<a href="javacript:">电台管理</a>
						</li>
					</ul>

				</div>
				<div class="right_div">
					<div class="right_div_title">
						<p>我的收藏</p>
					</div>
					<div class="right_div_ct">
						
						<div class="right_div_tab">
							<ul>
								<li :class="{active:subtag==2}" @click="collectQA">回答
									<label>{{questionA.length}}</label>
									<span></span>
								</li>
								<li :class="{active:subtag==1}" @click="collectArticle">文章
									<label>{{articleList.length}}</label>
									<span></span>
								</li>
								<li :class="{active:subtag==5}" @click="collectFM">心理FM
									<label>{{FMList.length}}</label>
									<span></span>
								</li>
							</ul>
						</div>

						<div class="tabContent">
							<!-- 问答 -->
							<ul class="ask" :class="{active:subtag==2}" v-if="subtag==2">
								<li v-for="(qu,index) in questionA">
									<div class="answer_item_t">
										<a href="javascript:">
											<div class="answer_cover" v-if="qu.user_anonym==1" style="background-image: url(//lapp.xinli001.com/images/website-mobile/unname.png)"></div>
											<div class="answer_cover" v-if="qu.user_anonym==0" :style="'background-image: url(${APP_PAHT}/'+qu.question_master.psychouser_head_portrait+')'"></div>
										</a>
										<div class="answer_author">
											<span v-if="qu.user_anonym==1">匿名用户</span>
											<span v-if="qu.user_anonym==0">{{qu.question_master.psychouser_name}}</span>
											<span>{{qu.user_question_pultime}}</span>
										</div>
										<div class="answer_num">{{qu.answer_count}}个回答</div>
									</div>
									<div class="answer_title">
										<a :href="'${APP_PATH}/question/toQuestion.htm?id='+qu.user_question_id">{{qu.user_question_title}}</a>
									</div>
									<div class="answer_text" :class="{moreContent:readMore.indexOf(index)>=0}">
										<a :href="'${APP_PATH}/question/toQuestion.htm?id='+qu.user_question_id" v-html="qu.user_question_content">
										</a>
									</div>
									<span class="showAllCt" style="display: inline;" v-show="readMore.indexOf(index)<0" @click="doreadMore(index)">
										点击看更多
									</span>
								</li>
							</ul>
							<!-- 文章 -->
							<ul class="article" :class="{active:subtag==1}" v-if="subtag==1">
								<li v-for="(article,index) in articleList">
									<a :href="'${APP_PATH}/article/toArticle.htm?id='+article.articleId" target="_blank">
										<div class="article_cover" :style="'background-image:url(${APP_PATH}/'+article.articleImg+')'"></div>
									</a>
									<div class="article_r">
										<div class="article_title">
											<a :href="'${APP_PATH}/article/toArticle.htm?id='+article.articleId" target="_blank">
												{{article.articleTitle}}
											</a>
										</div>
										<div class="article_desc">
											<a :href="'${APP_PATH}/article/toArticle.htm?id='+article.articleId" target="_blank">
												{{article.desc}}
											</a>
										</div>
										<div class="article_b">
											<ul>
												<li class="article_time">{{article.pubTime}}</li>
												<li class="article_seeNum">{{article.readsNum}}阅读</li>
											</ul>
										</div>
									</div>
								</li>
							</ul>
							<ul class="FM" :class="{active:subtag==5}" v-if="subtag==5">
								<li v-for="(fm,index) in FMList">
									<div class="fm_item_l">
										<div class="fm_item_title">
											<a :href="'http://localhost:8083/?id='+fm.psycho_radio_id" target="_blank">
												{{fm.psycho_radio_title}}
											</a></div>
										<div class="fm_item_desc">
											<a :href="'http://localhost:8083/?id='+fm.psycho_radio_id" target="_blank">
												{{fm.psycho_radio_description}}
											</a></div>
										<div class="fm_item_b">
											<span>{{fm.radioAnchor.radio_anchor_name}}</span>
											<span><i class="yxlicon icon-fmPlay"></i>7418</span>
										</div>
									</div>
									<a :href="'http://localhost:8083/?id='+fm.psycho_radio_id" target="_blank">
										<div class="fm_item_cover" :style="'background-image:url(${APP_PATH}'+fm.psycho_radio_backgroud+')'">
										<i
											 class="yxlicon icon-fmPlay1"></i></div>
									</a>
								</li>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
		<script src="${APP_PATH }/js/vue.js"></script>
		<script src="${APP_PATH }/js/axios.js"></script>
		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<!-- <script src="https://unpkg.com/element-ui/lib/index.js"></script> -->
		<script type="text/javascript">
		var article = new Vue({
			  el: '.content_wrap',
			  data () {
			    return {
			      tag : 0,
			      subtag:2,
			      questionA:[],
			      articleList:[],
			      FMList:[],
			      readMore:[]
			    }
			  },
			  created() {
			     this.collect();
			  },
			  watch: {
				 
			  },
			  methods: {
				  collect(){
					  this.tag=0;
					  axios({
						  url: "${APP_PATH}/user/doUserCollect.do",
					      method: "GET",
					      params:{
					    	  typeid:this.subtag
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		if(this.subtag==1){
					    			this.articleList=res.data.data.user_collection_obj;
					    		}else if(this.subtag==2){
					    			this.questionA=res.data.data.user_collection_obj;
					    		}else if(this.subtag==5){
					    			this.FMList=res.data.data.user_collection_obj;
					    		}
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
					  axios({
						  url: "${APP_PATH}/user/doUserCollect.do",
					      method: "GET",
					      params:{
					    	  typeid:1
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.articleList=res.data.data.user_collection_obj;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
					  axios({
						  url: "${APP_PATH}/user/doUserCollect.do",
					      method: "GET",
					      params:{
					    	  typeid:5
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.FMList=res.data.data.user_collection_obj;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  
				  collectQA(){
					  this.subtag=2;
					  /* this.collect(); */
				  },
				  collectArticle(){
					  this.subtag=1;
					  /* this.collect(); */
				  },
				  collectFM(){
					  this.subtag=5;
					 /*  this.collect(); */
				  },
				  
				  doreadMore(index){
					  this.$set(this.readMore,this.readMore.length,index);
				  }
				  
			  }
		})
		</script>
	</body>
</html>
