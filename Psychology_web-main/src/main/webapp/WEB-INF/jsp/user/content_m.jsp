<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
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
			
			.content .content_wrap .right_div .tab_item.active {
			    display: block;
			}
			
			.content .content_wrap .right_div .right_div_content, .content .content_wrap .right_div .right_div_content ul {
			    overflow: auto;
			}
			
			.content .content_wrap .right_div .right_div_content ul li {
			    display: flex;
			    position: relative;
			    overflow: auto;
			    padding: 38px 20px 38px 30px;
			    margin-bottom: 20px;
			    background: #fff;
			    border-radius: 10px;
			}
			
			.content .content_wrap .right_div .right_div_content ul li .li_item_img {
			    height: 48px;
			    width: 48px;
			    border-radius: 50%;
			    overflow: hidden;
			    background-size: cover;
			    background-repeat: no-repeat;
			    background-position: 50%;
			}
			.content .content_wrap .right_div .right_div_content ul li .li_item_c {
			    width: 496px;
			    margin-left: 20px;
			}
			
			.content .content_wrap .right_div .right_div_content ul li .li_item_c .li_item_c_title {
			    font-size: 16px;
			    color: #333;
			    line-height: 16px;
			}
			
			.content .content_wrap .right_div .right_div_content ul li .li_item_c .li_item_c_title span {
			    margin-left: 10px;
			    font-size: 14px;
			    color: #999;
			}
			
			.content .content_wrap .right_div .right_div_content ul li .li_item_c .li_item_c_title .notice_span {
			    margin-left: 0;
			    margin-right: 10px;
			    font-size: 16px;
			    color: #666;
			}
			
			.content .content_wrap .right_div .right_div_content ul li .li_item_c .li_item_c_text {
			    margin-top: 18px;
			    font-size: 14px;
			    color: #666;
			    line-height: 22px;
			    word-break: break-all;
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
			
			.uc-main {
			    width: 815px;
			    float: right;
			    display: inline;
			}
			
			.uc-curr {
			    height: 38px;
			    line-height: 38px;
			    border: 1px solid #efefef;
			    border-radius: 5px;
			    background: #fff;
			    font-size: 14px;
			    color: #444;
			    padding: 0 30px;
			}
			
			.uc-msgdesc {
			    border: 1px solid #efefef;
			    background: #fff;
			    padding: 30px 40px;
			}
			.uc-msgdesc, .uc-msgdesc .addpost .bd {
			    margin-top: 10px;
			}
			
			.up {
			    height: 300px;
			    background: #006064;
			    margin-bottom: 30px;
			    padding: 15px;
			    overflow: auto;
			}
			
			.up ul li {
			    margin-bottom: 10px;
			    overflow: hidden;
			}
			
			.up span {
			    background: #f4f4f4;
			    padding: 3px 5px;
			    float: left;
			    max-width: 480px;
			}
			
			.up em {
			    font-style: normal;
			    background: #1976D2;
			    color: #FFFFFF;
			    padding: 3px 5px;
			    margin: 0 5px;
			    float: left;
			}
			
			.up b {
			    font-weight: normal;
			    background-color: #333333;
			    padding: 2px 5px;
			    color: #f4f4f4;
			    float: left;
			}
			
			.up .isMe{
				display:block; float:right;
			}
			
			.down {
			    background: #ffffff;
			    padding: 15px;
			}
			
			.down textarea {
			    width: 99%;
			    height: 50px;
			    margin-top: 5px;
			    resize: none;
				outline: none;
			}
			
			.down .btn {
				width: 101px;
				height: 33px;
				border: 0;
				border-radius: 10px;
				cursor: pointer;
				margin-left: auto;
				display: block;
				margin-top: 10px;
				background-color: #3ab1e5;
				color: white;
				outline: none;
			}
			
		</style>
	</head>
	<body>
		<div>
			<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
		</div>
		<div class="content">
			<div class="content_wrap">
				<div class="left_div">
					<ul>
						<div class="ul_title">消息通知</div>
						<li :class="{active:tag==0}">
							<a href="javacript:" @click="message($event)">私信</a>
						</li>
						<li :class="{active:tag==1}">
							<a href="javacript:" @click="comment($event)">评论回答</a>
						</li>
					</ul>
					<ul>
						<div class="ul_title">内容管理</div>
						<li :class="{active:tag==10}">
							<a href="javacript:" @click="collect($event)">我的收藏</a>
						</li>
					</ul>

				</div>
				<div class="right_div">
					<div class="right_div_title">
						<p>{{tab}}</p>
					</div>
					<div class="right_div_ct" v-if="tag>=10">
						
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
					<div class="tab_item  privateLetter active" v-if="tag<10">
					<!-- 私信列表 -->
						<div class="right_div_content" v-if="tag==0">
							<ul>
								<li v-for="(talker,index) in talkerList" :data-id="talker.psychouser_id" >
									<a :href="'${APP_PATH}/user/toUserIndex.htm?userid='+talker.psychouser_id">
										<div class="li_item_img" :style="'background-image: url(${APP_PATH }/'+talker.psychouser_head_portrait+')'"></div>
									</a>
									<div class="li_item_c" v-for="(message,index) in talker.messageList">
										<a href="javascript:;" @click="message_detail($event)" :data-id="talker.psychouser_id">
											<div class="li_item_c_title">
												<span class="notice_span">{{talker.psychouser_name}}</span>
												<span>{{message.date}}</span>
											</div>
											<div class="li_item_c_text" v-if="message.from==uid">
												我：
												{{message.text}}
											</div>
											<div class="li_item_c_text" v-if="message.to==uid">
												{{talker.psychouser_name}}：{{message.text}}
											</div>
										</a>
									</div>

								</li>
							</ul>
						</div>
						<!-- 私信详情 -->
						<div class="uc-msgdesc" v-if="tag==4">
							<div class="up" id="up">
								<ul id="contentUI">
									<li v-for="(message,index) in messageList">
									<span :class="{isMe:message.from==uid}">
									<em v-if="message.from!=uid">{{message.fromName}}</em>
									<span>{{message.text}}</span><b>{{message.date}}</b><em v-if="message.from==uid">我</em></span></li>
								</ul>
							</div>
							<div class="down">
								<textarea class="textInfo" id="msg" title="按ctrl+enter直接发送"></textarea>
								<button class="btn" id="sendBtn" @click="sendMsg">发送</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script src="${APP_PATH }/js/vue.js"></script>
		<script src="${APP_PATH }/js/axios.js"></script>
		<script src="${APP_PATH }/js/sockjs.min.js"></script>
		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<!-- <script src="https://unpkg.com/element-ui/lib/index.js"></script> -->
		<script type="text/javascript">
		var path = '<%=basePath%>';
		var uu="${sessionScope.loginUser}";
		var uid = "${sessionScope.loginUser.psychouser_id}";
		var fromName = "${sessionScope.loginUser.psychouser_name}";
	  //不同浏览器的WebSocket对象类型不同
		//alert("ws://" + path + "/ws?uid="+uid);
		
	  	
		var article = new Vue({
			  el: '.content_wrap',
			  data () {
			    return {
			      uid:"${sessionScope.loginUser.psychouser_id}",
			      tag : 0,
			      subtag:2,
			      questionA:[],
			      articleList:[],
			      FMList:[],
			      readMore:[],
			      tab:"私信",
			      talkerList:[],
			      messageList:[],
			      curToid:0,
			      websocket:null
			    }
			  },
			  created() {
			     this.message();
			  },
			  watch: {
				 
			  },
			  methods: {
				  
				  
				  message_detail(e){
					  let toid=e.currentTarget.dataset.id;
					  this.curToid=parseInt(toid);
					  axios({
						  url: "${APP_PATH}/user/doMessageList.do",
					      method: "GET",
					      params:{
					    	  userid:parseInt(uid),
					    	  toid:parseInt(toid)
					      }
					    }).then(res => {
					    	this.messageList=res.data.data;
						    this.tag=4;
						    this.tab="私信详情";
						    if ('WebSocket' in window) {
								this.websocket = new WebSocket("ws://" + path + "ws.do");
								console.log("=============WebSocket");
								//火狐
							} else if ('MozWebSocket' in window) {
								this.websocket = new MozWebSocket("ws://" + path + "ws.do");
								console.log("=============MozWebSocket");
							} else {
								this.websocket = new SockJS("http://" + path + "ws/sockjs.do");
								console.log("=============SockJS");
							}
							
							this.websocket.onopen = function(event) { 
								console.log("WebSocket:已连接");
							}
						  	
						  //div滚动条(scrollbar)保持在最底部
							/* function scrollToBottom(){
								//var div = document.getElementById('chatCon');
								var div = document.getElementById('up');
								div.scrollTop = div.scrollHeight;
							}	 */
						  	
						  	this.websocket.onmessage = function(event) { 
								console.log('Client received a message',event);
								//var data=JSON.parse(event.data);
								var data=$.parseJSON(event.data);
								console.log("WebSocket:收到一条消息",data);
								//===普通消息
								//处理一下个人信息的显示：
								if(data.fromName==fromName){
									data.fromName="我";
									$("#contentUI").append("<li><span  style='display:block; float:right;'><span>"+data.text+"</span><b>"+data.date+"</b><em>"+data.fromName+"</em></span></li><br/>");
								}else{
									$("#contentUI").append("<li><span class=''><em>"+data.fromName+"</em><span>"+data.text+"</span><b>"+data.date+"</b></span></li><br/>");
								}
								/* scrollToBottom(); */
							};
							
							// 监听WebSocket的关闭
							this.websocket.onclose = function(event) { 
								$("#contentUI").append("<li><b>"+new Date()+"</b><em>系统消息：</em><span>连接已断开！</span></li>");
								/* scrollToBottom(); */
								console.log("WebSocket:已关闭：Client notified socket has closed",event); 
								
							};
							
							//监听异常
							this.websocket.onerror = function(event) {
								$("#contentUI").append("<li><b>"+new Date()+"</b><em>系统消息：</em><span>连接异常，建议重新登录</span></li>");
								/* scrollToBottom(); */
								console.log("WebSocket:发生错误 ",event);
							};
					    })
				  },
				  
				  sendMsg(){
						//对象为空了
						if(this.websocket==undefined||this.websocket==null){
							//alert('WebSocket connection not established, please connect.');
							alert('您的连接已经丢失，请退出聊天重新进入');
							return;
						}
						//获取用户要发送的消息内容
						var msg=$("#msg").val();
						if(msg==""){
							alert("请输入内容");
							return;
						}else{
							var data={};
							data["from"]=uid;
							data["fromName"]=fromName;
							data["to"]=this.curToid;
							data["text"]=msg;
							//发送消息
							this.websocket.send(JSON.stringify(data));
							//发送完消息，清空输入框
							$("#msg").val("");
						}
				  },
				  
				  
				  closeWebsocket(){
						if (this.websocket != null) {
							this.websocket.close();
							this.websocket = null;
						}
				  },
				  
				  message(e){
					  if(uu!=null&&uu!=""){
						  axios({
							  url: "${APP_PATH}/user/doTalkerList.do",
						      method: "GET",
						      params:{
						    	  userid:parseInt(uid)
						      }
						    }).then(res => {
						    	this.talkerList=res.data.data;
						    	this.tag=0;
								this.tab=e.currentTarget.innerHTML;
						    })
					  }else{
						  alert("请登录");
					  }
					  
				  },
				  
				  comment(e){
					  this.tag=1;
					  this.tab=e.currentTarget.innerHTML;
				  },
				  
				  collect(e){
					  this.tab=e.currentTarget.innerHTML;
					  this.tag=10;
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
