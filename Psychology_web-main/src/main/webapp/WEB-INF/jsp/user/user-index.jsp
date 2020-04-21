<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<style>
			.content {
				width: 100%;
				height: 100%;
				overflow: auto;
				margin-bottom: 75px;
			}

			.content .content_top {
				position: relative;
				height: 300px;
				min-width: 900px;
				overflow: auto;
				background-image: url(/article_img/ti.jpeg);
				background-repeat: no-repeat;
				background-position: 50%;
				background-size: 100% auto;
			}

			.content .content_top .content_top_text {
				position: absolute;
				width: 900px;
				margin: auto;
				bottom: 20px;
				left: 0;
				right: 0;
			}

			.content .content_top .content_top_text ul {
				overflow: auto;
			}

			.content .content_top .content_top_text ul li {
				float: left;
				width: 50%;
				font-size: 18px;
				color: #fff;
				line-height: 32px;
				text-align: center;
			}
			
			.content .user_info {
			    position: relative;
			    overflow: visible;
			    background-color: #fff;
			}

			.content .user_info .user_img {
				position: absolute;
				top: -48px;
				left: 0;
				right: 0;
				bottom: 0;
				width: 96px;
				height: 96px;
				margin: 0 auto;
				border: 2px solid #fff;
				border-radius: 50%;
				overflow: hidden;
			}

			.content .user_info .user_img img {
				width: 96px;
				vertical-align: middle;
			}

			.content .user_info .user_info_wrap {
				width: 900px;
				padding-bottom: 20px;
				margin: auto;
				overflow: auto;
			}

			.content .user_info .user_name {
				text-align: center;
				margin-top: 72px;
				font-size: 22px;
				color: #333;
				line-height: 22px;
			}

			.content .user_info .user_identity {
				text-align: center;
				margin-top: 10px;
				font-size: 18px;
				color: #333;
				line-height: 18px;
			}

			.content .user_info .user_tab {
				margin-top: 16px;
				font-size: 14px;
				color: #999;
				text-align: center;
			}

			.content .user_info .user_tab span {
				margin-right: 46px;
				cursor: pointer;
			}

			.content .user_info .user_tab span i {
				font-size: 14px;
				vertical-align: middle;
				margin-right: 10px;
			}
			
			.content .user_info .user_tab .followed, .content .user_info .user_tab .followed i {
			    color: #bcc2cf;
			}

			.content .user_info .user_tab span:last-of-type {
				margin: 0;
			}

			.content .user_info .user_describe {
				position: relative;
				margin-top: 16px;
				text-align: center;
				font-size: 14px;
				color: #999;
				line-height: 20px;
				height: auto;
				max-height: 60px;
				overflow: hidden;
			}

			.content .user_info .user_describe span {
				display: none;
				position: absolute;
				right: 0;
				bottom: 0;
				background: #fff;
				padding: 0 5px;
			}

			.content .user_info .user_honor {
				margin-top: 16px;
				overflow: auto;
			}

			.content .user_info .user_honor ul {
				overflow: auto;
				display: flex;
				justify-content: center;
			}

			.content .user_info .user_honor ul li:last-of-type {
				margin: 0;
			}

			.content .user_info .user_honor ul li {
				font-size: 14px;
				color: #999;
				line-height: 22px;
				margin-right: 60px;
			}

			.content .content_c_text {
				overflow: auto;
				min-width: 900px;
			}

			.content .content_c_text p {
				position: relative;
				width: 900px;
				margin: 0 auto;
				line-height: 56px;
				font-size: 12px;
				color: #999;
			}

			.content .content_c_text p span {
				float: right;
				font-size: 12px;
				color: #666;
				cursor: pointer;
			}

			.content .content_b .content_b_wrap {
				width: 900px;
				margin: 0 auto;
				background-color: #fff;
				border-radius: 5px;
				overflow: hidden;
			}

			.content .content_b .content_b_wrap .content_b_wrap_t {
				height: 60px;
				width: calc(100% - 100px);
				overflow: auto;
				padding: 0 50px;
				position: relative;
				border: 1px solid #f1f1f1;
			}

			.content .content_b .content_b_wrap .content_b_wrap_t ul {
				overflow: auto;
			}

			.content .content_b .content_b_wrap .content_b_wrap_t ul li {
				float: left;
				line-height: 60px;
				font-size: 18px;
				color: #666;
				margin-right: 80px;
				cursor: pointer;
			}

			.content .content_b .content_b_wrap .content_b_wrap_t ul li.active {
				color: #0b8bff;
				font-weight: 700;
			}

			.content .content_b .content_b_wrap .content_b_wrap_t ul li span {
				margin-left: 5px;
			}

			.content .content_b .content_b_wrap .content_b_wrap_t ul li {
				float: left;
				line-height: 60px;
				font-size: 18px;
				color: #666;
				margin-right: 80px;
				cursor: pointer;
			}

			.content .content_b .content_b_wrap .content_b_wrap_t .bottom_line {
				position: absolute;
				bottom: 0;
				left: 50px;
				width: 42px;
				height: 3px;
				background: #0b8bff;
				border-radius: 100px;
				transition: all .3s ease-in-out;
			}

			.content .content_b .content_b_wrap .content_b_wrap_t button {
				position: absolute;
				top: 0;
				right: 50px;
				bottom: 0;
				margin: auto;
				width: 86px;
				height: 28px;
				border: 1px solid #0b8bff;
				border-radius: 8px;
				line-height: 26px;
				font-size: 14px;
				color: #0b8bff;
				background-color: #fff;
				outline: none;
				cursor: pointer;
			}

			.content .content_b .content_b_wrap .content_b_content_wrap {
				width: 1800px;
				position: relative;
				left: 0;
				top: 0;
				transition: all .3s ease-in-out;
				overflow: auto;
			}

			.content .content_b .content_b_wrap .content_b_content_wrap .ask.content_b_content {
				display: block;
			}



			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content.active {
				display: block;
			}

			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content {
				/* 改这里 */
				display: none;
				position: relative;
				float: left;
				width: 800px;
				overflow: auto;
				padding: 30px 50px;
			}

			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_text {
				margin-top: 28px;
				padding: 20px 0;
				font-size: 16px;
				color: #333;
				line-height: 16px;
				border-bottom: 1px solid #f1f1f1;
			}

			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_text span {
				margin-left: 10px;
				font-size: 14px;
				color: #ff745b;
				line-height: 14px;
			}


			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list {
				overflow: visible;
			}

			li,
			ul {
				list-style: none;
				padding: 0;
				margin: 0;
			}

			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item {
				position: relative;
				padding: 30px 0;
				overflow: visible;
				border-bottom: 1px solid #f1f1f1;
				display: flex;
			}

			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_title {
				font-size: 20px;
				color: #333;
				line-height: 20px;
				font-weight: 700;
			}

			a {
				text-decoration: none;
				color: inherit;
			}

			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content.active .content_b_content_list .content_b_content_item .content_b_content_item_dec {
			    max-height: 40px;
			    overflow: hidden;
			    line-height: 20px;
			    margin-top: 9px;
			}

			.showAllCt,.closeAllCt {
				color: #0b8bff;
			}
			

			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_tab {
			    position: relative;
			    overflow: auto;
			}

			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_dec {
				margin-top: 14px;
				font-size: 14px;
				color: #999;
				line-height: 22px;
			}
			
			.content .content_b .content_b_wrap .content_b_content_wrap .ask.content_b_content .content_b_content_item {
			    flex-direction: column;
			}
			
			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_tab ul {
			    padding-top: 36px;
			    overflow: auto;
			}
			
			.content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_tab ul li {
			    position: relative;
			    float: left;
			    display: inline-flex;
			    align-items: center;
			    margin-right: 30px;
			    font-size: 14px;
			    line-height: 18px;
			    color: #999;
			    cursor: pointer;
			}
			
			.btn-comment, .showAllCt , .closeAllCt{
			    float: right;
			    cursor: pointer;
			}
			
			/* 文章样式 */
			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_l {
			    width: 98px;
			    height: 98px;
			    margin-right: 18px;
			    overflow: hidden;
			    background-position: 50%;
			    background-size: cover;
			    background-repeat: no-repeat;
			}
			
			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_r {
			    flex: 1;
			}
			
			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_title {
			    font-size: 20px;
			    color: #333;
			    line-height: 20px;
			    font-weight: 700;
			}
			
			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_r .author_info {
			    margin-top: 9px;
			    overflow: auto;
			}
			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_r .author_info ul {
			    overflow: auto;
			}
			
			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_r .author_info ul .author {
			    cursor: pointer;
			}
			
			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_r .author_info ul li {
			    float: left;
			    width: auto;
			    margin-right: 20px;
			    font-size: 14px;
			    color: #999;
			}
			
			.content .content_b .content_b_wrap .content_b_content_wrap .content_b_content .content_b_content_list .content_b_content_item .content_b_content_item_r .author_info ul li:last-of-type {
			    float: right;
			    color: #ccc;
			    margin: 0;
			    font-size: 14px;
			}
			
		</style>

	</head>
	<body>
		<div class="content"   id="user-page">
			<div class="content_top">
				<div class="content_top_text">
					<ul>
						<li>获赞<span> {{likenum}} </span></li>
						<li>粉丝<span> 476 </span></li>
					</ul>
				</div>
			</div>
			<div class="user_info" data-id="${user.psychouser_id}">
				<div class="user_img">
					<img src="/article_img/1584265340768_Article.jpg" alt="">
				</div>
				<div class="user_info_wrap">
					<div class="user_name">${user.psychouser_name}</div>
					<div class="user_identity">${user.psychouser_title }</div>
					<!-- 非本人可见 -->
					<div class="user_tab" v-if="!isself">
						<span v-show="!isfollow" @click="dofollow()" class="follow" data-id="1000604326">
							<!-- 图标 -->
							<i class="yxlicon icon-icon-guanzhu"></i>
							关注
						</span>
						<span v-show="isfollow" @click="dofollow()" class="follow" data-id="1000604326">
							<!-- 图标 -->
							<i class="yxlicon icon-icon-guanzhu"></i>
							已关注
						</span>
						
						<span class="message">
							<i class="yxlicon icon-icon-sixin"></i>
							私信
						</span>
						</div>
					<div class="user_describe">
						${user.psychouser_intro}
						<span>...<i class="yxlicon icon-xialazhanshi"></i></span>
					</div>
					<div class="user_honor">
						<ul>
							<li><i class="yxlicon icon-renzhengzuojia"></i>壹心理认证作家</li>
							<!-- essence 精华回答者 quality 优质回答者-->
							<li><i class="yxlicon icon-jinghua"></i>优质答主</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="content_c_text">
				<p>
					${user.psychouser_createtime }加入至今
					<!-- <span><i class="yxlicon icon-tishi"></i>我也想要这种主页</span>  -->
				</p>
			</div>

			<div class="content_b">
				<div class="content_b_wrap">

					<!-- 菜单切换栏 -->
					<div class="content_b_wrap_t">
						<ul>
							<li class="active">回答<span>23</span></li>
							<li class="">文章<span>{{articles.length}}</span></li>
						</ul>
						<span class="bottom_line" style="left: 61px;"></span>
						<button class="askBtn" v-show="!isself" invite-id="1000604326" invite-num="0">向ta提问</button>
					</div>

					<div class="content_b_content_wrap">

						<!-- 回答 -->
						<div class="content_b_content ask active">
							<div class="content_b_content_text">
								全部回答
								<span style="display: none;">含0个星标回答</span>
							</div>

							<div class="content_b_content_list">


								<div class="content_b_content_item">
									<div class="content_b_content_item_title">
										<a href="//www.xinli001.com/qa/100597488">感觉无法考上好大学的研究生，觉得人生会失利了？</a>
									</div>
									<div class="content_b_content_item_dec">
										<a href="//www.xinli001.com/qa/100597488">
											<p><br></p>
											<p>名校的光环有用，</p>
											<p>但是也只是一下子。</p>
											<p>工作以后还是看能力的。</p>
											<p><br></p>
											<p>如果你从鄙视链俯视，</p>
											<p>我要被你鄙视两次，</p>
											<p>不过工作之后，我翻身了，</p>
											<p>是真正意义上的翻身。</p>
											<p><br></p>
											<p><strong>你的能力主要由你的天资和持续的积累决定，别的都是次要的。</strong></p>
											<p><strong><br></strong></p>
											<p><strong><br></strong></p>
											<p><br></p>
										</a>
									</div>
									<div>
										<span class="showAllCt" style="display: inline;">点击看更多
											<i class="yxlicon icon-xialazhanshi"></i>
										</span>
										<span class="closeAllCt" style="display: none;">收起
											<i class="yxlicon icon-xialazhanshi"></i>
										</span>
									</div>

									<div class="content_b_content_item_tab">
										<ul>
											<li class="reward" data-userid="1007695027" data-objectid="5717546">
												<i class="yxlicon icon-dashang"></i>打赏<span></span>
											</li>
											<li class="zan " data-answer-id="5717546" data-userid="1007695027">
												<i class="yxlicon icon-icon-zan"></i>有用<span></span>
												<div class="like-light"></div>
											</li>
											<li class="comment" answer-id="5717546" data-num="0">
												<i class="yxlicon icon-icon-pinglun"></i>评论<span></span>
											</li>
											<span>2020-04-11</span>
										</ul>
									</div>
								</div>
								<div class="content_b_content_item">
									<div class="content_b_content_item_title">
										<a href="//www.xinli001.com/qa/100597488">感觉无法考上好大学的研究生，觉得人生会失利了？</a>
									</div>
									<div class="content_b_content_item_dec">
										<a href="//www.xinli001.com/qa/100597488">
											<p><br></p>
											<p>名校的光环有用，</p>
											<p>但是也只是一下子。</p>
											<p>工作以后还是看能力的。</p>
											<p><br></p>
											<p>如果你从鄙视链俯视，</p>
											<p>我要被你鄙视两次，</p>
											<p>不过工作之后，我翻身了，</p>
											<p>是真正意义上的翻身。</p>
											<p><br></p>
											<p><strong>你的能力主要由你的天资和持续的积累决定，别的都是次要的。</strong></p>
											<p><strong><br></strong></p>
											<p><strong><br></strong></p>
											<p><br></p>
										</a>
									</div>
									<div>
										<span class="showAllCt" style="display: inline;">点击看更多
											<i class="yxlicon icon-xialazhanshi"></i>
										</span>
										<span class="closeAllCt" style="display: none;">收起
											<i class="yxlicon icon-xialazhanshi"></i>
										</span>
									</div>

									<div class="content_b_content_item_tab">
										<ul>
											<li class="reward" data-userid="1007695027" data-objectid="5717546">
												<i class="yxlicon icon-dashang"></i>打赏<span></span>
											</li>
											<li class="zan " data-answer-id="5717546" data-userid="1007695027">
												<i class="yxlicon icon-icon-zan"></i>有用<span></span>
												<div class="like-light"></div>
											</li>
											<li class="comment" answer-id="5717546" data-num="0">
												<i class="yxlicon icon-icon-pinglun"></i>评论<span></span>
											</li>
											<span>2020-04-11</span>
										</ul>
									</div>
								</div>


							</div>

						</div>

						<!-- 文章 -->
						<div class="content_b_content article active">
							<div class="content_b_content_text">
								全部文章
								<span>含7篇推荐文章</span>
							</div>
							<div class="content_b_content_list">
								<div class="content_b_content_item" v-for="(article,index) in articles" :key="index">
									<div class="recommend">
										<i class="yxlicon icon-tuijian"></i>
									</div>
									<a :href="'${APP_PATH }/article/toArticle.htm?id='+(article.articleId)" target="_blank">
										<div class="content_b_content_item_l" style="background-image:url(https://ossimg.xinli001.com/20200409/98429ba7601629e546dba0a3a001983e.jpeg!180x120)">
										</div>
									</a>
									<div class="content_b_content_item_r">
										<a :href="'${APP_PATH }/article/toArticle.htm?id='+(article.articleId)" target="_blank">
											<div class="content_b_content_item_title">
												{{article.articleTitle}}
											</div>
											<div class="content_b_content_item_dec">
												{{article.content}}
											</div>
										</a>
										<div class="author_info">
											<ul>
												<li class="author">${user.psychouser_name}</li>
												<li>{{article.pubTime}}</li>
												<li v-for="(label,index) in article.articleLabels">
													{{label.psycho_label_name}}
												</li>
												<li>{{article.readsNum}}阅读</li>
											</ul>
										</div>
									</div>
								</div>
							</div>

						</div>

						<!-- 提问 -->
						<div class="content-b_content question">


						</div>

					</div>
				</div>

			</div>
		</div>

		</div>

		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<script src="${APP_PATH }/js/vue.js"></script>
		<script src="${APP_PATH }/js/axios.js"></script> 

		<script type="text/javascript">
		var userid=$(".user_info").attr("data-id");
		
		var userpage = new Vue({
			  el: '#user-page',
			  data () {
			    return {
			      isself:false,
			      isfollow:false,
			      userid:userid,
			      likenum:0,
			      questions:[],
			      answers:[],
			      articles:[]
			    }
			  },
			  created() {
				  this.isSelf();
				  this.getLikeNum();
                  this.getarticle();
			    },
			  methods: {
				  isSelf(){
					  axios({
					      url: "${APP_PATH}/user/doIsSelf.do",
					      method: "get",
					      params:{
					    	  userid:this.userid
					      }
					    }).then(res => {
				    		this.isself = res.data.data;
				    		this.isFollow();
					    });
				  },
				  
				  isFollow(){
					  axios({
					      url: "${APP_PATH}/user/doIsFollow.do",
					      method: "get",
					      params:{
					    	  followuserid:this.userid
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.isfollow = res.data.data;
					    	}
					    });
				  },
				  
				  getLikeNum(){
					  axios({
					      url: "${APP_PATH}/user/doLikeNum.do",
					      method: "get",
					      params:{
					    	  userid:this.userid
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.likenum = res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  
				  getarticle(){
					  axios({
					      url: "${APP_PATH}/user/doUserArticle.do",
					      method: "get",
					      params:{
					    	  userid:this.userid
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.articles = res.data.data;
					    	}else{
					    		console.log(res.data.message);
					    	}
					    });
				  },
				  
				  dofollow(){
					  let action=0;
					  if(!this.isfollow){
						  action=1;
					  }
					  axios({
					      url: "${APP_PATH}/user/doFollow.do",
					      method: "get",
					      params:{
					    	  followuserid:this.userid,
					    	  action:action
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.isfollow=!this.isfollow;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  }
			  }
		});
		
		
			$(".content_b_wrap_t ul li").click(function() {
				$(this).addClass("active").siblings().removeClass("active");
				$(".content_b_content").eq($(this).index()).addClass("active").siblings().removeClass("active");
				$(".content_b_content").eq($(this).index()).show().siblings().hide();

				var e = $(".bottom_line").width();
				i = ($(this).width() - e) / 2;
				0 === $(this).index() ? i += 50 : 1 === $(this).index() && (i = i + 50 + 80 + $(".content_b_wrap_t ul li").eq(0).width());
				$(".bottom_line").css("left", i);
			})

			$(".showAllCt").click(function() {
				$(".content_b_content_item_dec").css("max-height", "none");
				$(this).css("display", "none");
				$(this).siblings().css("display", "inline");
			})

			$(".closeAllCt").click(function() {
				$(".content_b_content_item_dec").attr("style", "");;
				$(this).css("display", "none");
				$(this).siblings().css("display", "inline");
			})
			
			
			// 关注
		/* 	$(".follow").click(function(){
				if($(this).hasClass("followed")){
					$(this).removeClass("followed");
					$(this).html("关注");
				}
				else{
					$(this).addClass("followed");
					$(this).html("已关注");
				}
					
			}) */	
	 </script>

	</body>
</html>
