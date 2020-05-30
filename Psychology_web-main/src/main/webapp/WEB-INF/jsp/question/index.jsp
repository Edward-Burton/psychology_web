<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link rel="stylesheet" href="https://unpkg.com/element-ui@1.4/lib/theme-default/index.css">
		
		<style>
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

			a {
				text-decoration: none;
			}

			body {
				background-color: #f3f4f5;
			}

			#main {
				width: 1180px;
				margin: 0 auto;
				padding-top: 40px;
			}

			#left {
				width: 800px;
				float: left;
				margin-right: 20px;
				margin-bottom: 50px;
			}
			
			#left .pagination {
    			text-align: center;
    			margin-top: 40px;
    			margin-bottom: 50px;
    			line-height: 80px;
			}

			#left .ans-bar,
			.ans-emo {
				background-color: #fff;
				border-radius: 8px;
				padding: 0 20px 0 0;
				height: 80px;
				line-height: 80px;
				margin-bottom: 20px;
				display: flex;
			}

			.ans-barl {
				float: left;
				display: flex;
				width: 520px;
				margin-right: 15px;
			}

			#left .ans-bar p {
				width: 130px;
				flex: 1;
				display: inline-block;
			}

			#left .ans-bar p span {
    			font-size: 18px;
    			color: #333;
   				margin-left: 8px;
			}

			#left .content {
				list-style-type: none;
			}

			#left .content li {
				margin-bottom: 20px;
				padding: 30px;
				background-color: #fff;
				border-radius: 10px;
			}

			#left .content li .user {
				height: 30px;
				line-height: 30px;
			}

			#left .content .user img {
				width: 30px;
				height: 30px;
				border-radius: 50%;
				float: left;
				margin-right: 20px;
			}

			#left .content .user .username {
				font-size: 16px;
				color: #333;
			}

			#left .content .user .answers {
				background-color: #0b8bff;
				border-radius: 8px;
				font-size: 14px;
				color: #fff;
				font-weight: 400;
			}
			
			.select {
    			color: #0b8bff!important;
			}

			#left .content .user .answers,
			#left .content .user .reserve {
				width: 76px;
				height: 28px;
				line-height: 28px;
				text-align: center;
				float: right;
			}

			#left .content .title {
				margin-left: 50px;
			}

			#left .content li>p:nth-child(1) {
				height: 30px;
				line-height: 30px;
				margin-left: 0;
			}

			#left .content li>p:nth-child(1) a {
				text-decoration: none;
			}

			#left .content li>p:nth-child(2) a {
				display: block;
				margin-top: 20px;
				font-size: 12px;
				line-height: 12px;
				color: #999;
			}

			#left .content li>p:nth-child(1) strong {
				padding: 7px 17px;
				float: right;
				background-color: #0b8bff;
				border-radius: 8px;
				font-size: 14px;
				line-height: 14px;
				color: #fff;
				font-weight: 400;
			}

			#left .content li img {
				width: 30px;
				height: 30px;
				border-radius: 50%;
				float: left;
				margin-right: 20px;
			}

			.common-a,
			.common-a:hover {
				text-decoration: none;
			}

			#left .content li span {
				/* display: block; */
				font-size: 20px;
				color: #333;
				/* line-height: 20px;
				margin-top: 10px; */
				font-weight: 700;
			}


			#left .content li .reward-icon {
				display: inline;
				padding: 2px 13px;
				margin-left: 10px;
				font-size: 14px;
				font-weight: 400;
				color: #fe9a0a;
				line-height: 14px;
				border-radius: 20px;
				background: #fff0d2;
				vertical-align: middle;
			}

			#left .content li .text {
				margin: 15px 0 15px 50px;
				font-size: 14px;
				line-height: 22px;
				color: #999;
				width: 656px;
				display: -webkit-box;
				-webkit-box-orient: vertical;
				-webkit-line-clamp: 4;
				overflow: hidden;
			}

			.ellipsis {
				position: relative;
				max-height: 142px;
				line-height: 22px;
				overflow: hidden;
				margin-bottom: 10px;
			}

			.ellipsis-container {
				position: relative;
				display: block;
				display: -webkit-box;
				-webkit-box-orient: vertical;
				-webkit-line-clamp: 6;
				font-size: 125px;
				color: transparent;
				border-radius: 4px;
				padding-top: 15px;
				padding-left: 50px;
			}

			.ellipsis-content {
				vertical-align: top;
				font-size: 14px;
				color: #999;
			}

			.ellipsis-ghost {
				position: absolute;
				z-index: 1;
				top: 0;
				left: 50%;
				width: 100%;
				height: 100%;
				color: #000;
			}

			.ellipsis-more {
				float: right;
				font-size: 14px;
				width: 100px;
				height: 28px;
				margin-top: 69px;
				color: #0b8bff;
				cursor: pointer;
				display: none;
			}

			.ellipsis-more a {
				color: #0b8bff;
			}



			#left .content li .label {
				margin-left: 50px;
			}

			#left .content li>p:nth-child(4) {
				height: 18px;
			}

			#left .content li>p:nth-child(4) .span {
				display: inline-block;
				width: 100px;
				height: 14px;
				position: relative;
				margin-right: 20px;
    			cursor: pointer;
			}

			#left .content li>p:nth-child(4) img {
				width: 18px;
				height: 18px;
				margin-right: 10px;
				border-radius: 0px;
			}

			#left .content li>p:nth-child(4) .span a {
				position: absolute;
				top: 2px;
				left: 28px;
				font-size: 14px;
				line-height: 18px;
				color: #999;
				font-weight: 400;
			}

			#left .content li>p:nth-child(3)>span {
				margin-right: 30px;
				font-size: 14px;
				line-height: 14px;
				color: #999;
				font-weight: 400;
				display: inline-block;
			}

			#left .content li>p:nth-child(3)>a {
				padding: 0 10px;
				background-color: #f3f4f5;
				border-radius: 6px;
				color: #999;
				font-size: 14px;
				line-height: 24px;
				height: 24px;
				display: inline-block;
			}

			.like-light {
				/* display: none; */
				width: 42px !important;
				height: 30px;
				top: -15px;
				left: -12px;
				animation: myfirst .5s;
				position: absolute !important;
			}

			#right {
				float: right;
			}

			#up {
				background-color: #fff;
				border-radius: 10px;
				width: 300px;
				/* height: 150px; */
				padding: 50px 30px;
				margin-bottom: 20px;
			}

			.contain {
				display: flex;
				margin-bottom: 50px;
			}

			.contain p {
				flex: 1;
				float: left;
				text-align: center;
			}

			.contain p a {
				color: #0b8bff;
				font-size: 30px;
				line-height: 30px;
				text-decoration: none;
			}

			.contain p span {
				display: block;
				margin-top: 14px;
				font-size: 14px;
				color: #999;
				line-height: 14px;
			}

			button {
				width: 140px;
				height: 42px;
				background-color: #0b8bff;
				border-radius: 8px;
				border: 0;
				font-size: 16px !important;
				color: #fff;
				line-height: 42px;
				text-align: center;
				outline: 0;
				cursor: pointer;
			}

			#question {
				margin: 20px 0;
				background-color: #fff;
				border-radius: 10px;
				width: 360px;
				padding: 30px 0 10px;
			}

			#right ul {
				margin-left: 20px;
				list-style-type: none;
			}

			#question li {
				text-align: left;
				padding-bottom: 20px;
				line-height: 14px;
			}

			#category {
				border-radius: 10px;
				padding: 30px 20px 40px;
				width: 320px;
				background-color: #fff;
			}

			#category p {
				font-size: 18px;
				line-height: 18px;
				color: #999;
				margin-bottom: 20px;
			}

			.category a:visited {
				background-color: #e3f2ff;
			}

			.category a {
				background-color: #f3f4f5;
				margin-top: 10px;
				font-size: 14px;
				line-height: 14px;
				width: 100px;
				height: 46px;
				line-height: 46px;
				text-align: center;
				display: inline-block;
				margin-right: 3px;
				border-radius: 8px;
				color: #666;
			}

			#pic {
				width: 360px;
				height: auto;
				border-radius: 10px;
				margin-top: 20px;
				cursor: pointer;
			}
			
			.emo {
			    height: 28px;
			    width: 800px;
			    margin-top: 30px;
			    margin-bottom: 20px;
			}
			
			.emo span {
			    font-size: 20px;
			    line-height: 28px;
			    color: #333;
			    font-weight: 700;
			    cursor: pointer;
			}
			
			.emo a {
			    float: right;
			    font-size: 16px;
			    line-height: 28px;
			    color: #69b8ff;
			}
			
			.ans-emo .visit {
			    color: #0b8bff;
			    margin-right: 50px;
			}
			
			.ans-emo span {
			    float: right;
			    font-size: 18px;
			    color: #999;
			    margin-right: 10px;
			}
			
			#left .ans-bar p, #left .ans-bar span, .ans-emo p, .ans-emo span {
			    cursor: pointer;
			}
			
		</style>
	</head>
	<body>
		<div>
			<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
		</div>
	
		<div id="main" style="padding: 0px;">


			<div id="left">

				<!-- 分类 -->
				<div class="emo">
					<span>分类列表：社交那么难</span>
					<a href="#">即时倾诉，倾听你的故事 &gt;
					</a>
				</div>

				<div class="ans-emo">
					<p class="visit" style="padding-left: 30px;">最新优先</p>
					<!-- <p>只看精华</p> -->
					<span> 5000个问题</span>
				</div>
				
				<!-- 导航 -->
				<div class="ans-bar">
					<div class="ans-barl">
						<p attr-id="answer">
							<a class="common-a" href="#">

								<span class="yxl-icon yxl-font-icon-recommend-answer icon-selected"></span>
								<span :class="{select: tag==0}" @click="getAnswer()">推荐答案</span>
							</a>
						</p>
						<p attr-id="remque">
							<a class="common-a" href="#">

								<span class="yxl-icon yxl-font-icon-recommend-question icon-default"></span>
								<span :class="{select: tag==1}" @click="getQuestion()">推荐问题</span>
							</a>
						</p>
						<p attr-id="newque">
							<a class="common-a" href="#">
								<span class="yxl-icon yxl-font-icon-new-question icon-default"></span>

								<span :class="{select: tag==2}" @click="tag = 2">最新问题</span>
							</a>
						</p>
						<p attr-id="essence">
							<a class="common-a" href="#">
								<span class="yxl-icon yxl-font-icon-threeity icon-default"></span>
								<span :class="{select: tag==3}" @click="tag = 3">30天精华</span>
							</a>
						</p>
					</div>
				</div>

				<ul class="content" v-if="tag==0">

					<!-- 回答格式 -->
					<li class="answer" v-for="(answer,index) in answerList" :key="index">
						<!-- 用户信息 -->
						<p class="user">
							<!--<a target="_blank" class="common-a" href="-->
							<!--">-->

							<!-- 判断回答是否是自己提问的，如果是则属于匿名回答，不让点击头像-->
							<a target="_blank" class="common-a" href="#">
								<img :src="'${APP_PATH}/'+answer.answerUser.psychouser_head_portrait">
							</a>

							<span class="username">{{answer.answerUser.psychouser_name}}</span>
							<span class="honor-icon honor-icon-4"></span>

							<a class="answers" target="_blank" :href="'${APP_PATH}/question/toQuestion.htm?id='+answer.question.user_question_id">
								<strong>去回答</strong>
							</a>
						</p>

						<!-- 题目 -->
						<p class="title"><a class="common-a" target="_blank" href="#">
							</a><a>{{answer.question_answer_pultime}} 回答了：</a>
							<a class="common-a" target="_blank" :href="'${APP_PATH}/question/toQuestion.htm?id='+answer.question.user_question_id">
								<span>
									{{answer.question.user_question_title}} 
									<!-- <span class="reward-icon">悬赏</span> -->
								</span>
							</a>

						</p>

						<!-- 回答内容部分显示 -->
						<div class="ellipsis">
							<div class="ellipsis-container">
								<a class="common-a" target="_blank" href="#">
									<div class="ellipsis-content" v-html="answer.question_answer_content">
									</div>
								</a>
								<div class="ellipsis-ghost">
									<div class="ellipsis-placeholder"></div>
									<div class="ellipsis-more">
										<a class="click-more" target="_blank" href="#">点击看更多</a>
									</div>
								</div>
							</div>
						</div>

						<!-- 关注和点赞 -->
						<p class="label">

							<span class="follow span" :data-userid="answer.answerUser.psychouser_id" @click="dofollow($event,index)">
								<img v-if="answer.user_follows.indexOf(userid)<0" src="//lapp.xinli001.com/images/website-www/v5/unfollow.png">
								<img v-if="answer.user_follows.indexOf(userid)>=0" src="https://lapp.xinli001.com/images/website-www/v5/follow.png">
								<a v-if="answer.user_follows.indexOf(userid)>=0">已关注</a>
								<a v-if="answer.user_follows.indexOf(userid)<0">关注</a>
							</span>

							<span class="answer_zan span" :data-answerid="answer.question_answer_id" @click="dolike($event,index)">
								<img v-if="answer.question_answer_likes.indexOf(userid)>=0" data-id="0" class="img-control is_zan xinli-hide" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAASCAYAAAC5DOVpAAAAAXNSR0IArs4c6QAAAQRJREFUOBGtVLtuwkAQnDVGKOLRAGlSpueP4A8iJEhEhURBZyvKDyQfkn8IP4BES4eIAAkJxZu5g+58Robb4nyenRmtd1cWXIlWqv0/xRdpsQhW+1d59kkiX8LgnU9tZkDKa2x5iq59eo4zyZM8bjBR4NGTdmBvZe13fVLByFEUAF6zY4Y5FA8FWieVa1b/0B6NBg77CpBrhhMS6vJzBYbSSHWnisbhjYNn1BO+lQwq51yZaWSMSmodOgdVNWDpT3GcCEiGRTCzSg0/QczY6N/tC1ZBzCBYiIgd2t09Y2W2X0Eq44/A9iuIWRQHqozLuh8PsTRVmYjYwPX5etP5PRNu2SX+AXnZOUZEe1GrAAAAAElFTkSuQmCC">
								<img v-if="answer.question_answer_likes.indexOf(userid)<0" data-id="1" class="img-control not_zan xinli-show" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAASCAYAAAC5DOVpAAAAAXNSR0IArs4c6QAAAP1JREFUOBGtk70OAUEQx//DKSSUNEqtCC0h8fEaPIRGpdPxDB5EXHNE51yikUi0aqGRYM1uIlHsrhw7yW325uOXmf9kCV/MX0Y9CDETgAeiY7dRKZpKEqaA9K9W+yxDpgrE/wTkbPlW2E3chtxV3gb4jBlh/joqAM/BZ/K3u2dMuGPM46WNcU1A29ki2JUFoa/Jt7q0MMJjwlppYzYa+UF0ERCZbrPKywIWwZani2dENO40KqOEBMUr1WanpDf2KDoUEUJnMEHJjSvYuV0rHZ3AWPyQP7U0F5opvZx0xs9f6eUE9t7k3zACXVv18kGCpEnNTur2y0GYs/jPd+kLZRQ8AUM8Kk4AAAAASUVORK5CYII=">
								<span class="like-light"></span>
								<a>有用 <font id="likenum">{{answer.question_answer_likes.length}}</font></a>

							</span>
						</p>

					</li>
				</ul>
				
				<ul class="content" v-if="tag==1">
					<!-- 问题样式 -->
					<li class="question" v-for="(question,index) in questionList" :key="index">
						<p class="title">
  							 <a v-if="question.user_anonym==1" target="_blank" class="common-a" href="javascript:void(0);">
								<img src="https://lapp.xinli001.com/images/yiapp/v4.8/incognito.png">
							</a>
						
  							<a v-if="question.user_anonym!=1" target="_blank" class="common-a" :href="'${APP_PATH}/user/toUserIndex.htm?userid='+question.question_master.psychouser_id">
								<img :src="'${APP_PATH }/'+question.question_master.psychouser_head_portrait">
								
							</a>
							<a class="common-a" target="_blank" :href="'${APP_PATH}/question/toQuestion.htm?id='+question.user_question_id">
								<span>
									{{question.user_question_title}} <span class="reward-icon">悬赏</span>
								</span>
							</a>
							<a target="_blank" :href="'${APP_PATH}/question/toQuestion.htm?id='+question.user_question_id">
								<strong>去回答</strong>
							</a>
						</p>
						<a class="common-a" target="_blank" href="/qa/100598247?from=shouye">
							<p class="text">
							{{question.user_question_content}}
							</p>
						</a>

						<p class="label">
							<span>{{question.user_question_pultime}} · 回答 {{question.answer_count}} · 有用 {{question.question_answerlike_count}}</span>
							<a>楼主反馈{{question.master_answercount}}</a>
						</p>
						
					</li>
				</ul>
				
				<div class="pagination">
					<el-pagination 
						@current-change="handleCurrentChange"
						background
						layout="prev, pager, next"
						:total="totalno"
						:current-page="pageno">
					</el-pagination>
				</div>
			
			</div>

			<!-- 右边 -->
			<div id="right">
				<div id="up">
					<div class="contain" v-if="curUser!=null">
						<p class="star">
							<a href="#">{{curUser.zanNum}}</a>
							<span>获赞数</span>
						</p>
						<p class="ans">
							<a href="#">{{curUser.questionAnswerNum}}</a>
							<span>回答数</span>
						</p>
						<p class="ques">
							<a href="#">{{curUser.questionNum}}</a>
							<span>提问数</span>
						</p>
					</div>
					<div class="btn">
						<a href="${APP_PATH}/question/toAdd.htm">
							<button class="ques-b">我要提问</button>
						</a>
						<a href="#">
							<button class="ans-b">我的问答</button>
						</a>

					</div>
				</div>

				<!-- 活动 -->
				<div id="question">
					<ul>
						<li><a class="common-a" target="_blank" href="#">『大咖』听语音短课，掌握写作核心技能</a></li>
						<li><a class="common-a" target="_blank" href="#">『攻略』玩转答疑馆分馆，领取各样补贴！</a></li>
					</ul>
				</div>

				<div id="category">
					<p>精选分类</p>

					<div class="category">
						<div class="category">
							<a class="common-a store" href="#">社交那么难</a>
							<a class="common-a store" href="#">职场的压力</a>
							<!-- <a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=social&amp;from=shouye-dh">社交那么难</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=career&amp;from=shouye-dh">职场的压力</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=confused&amp;from=shouye-dh">青春的迷茫</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=myself&amp;from=shouye-dh">不喜欢自己</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=emotion&amp;from=shouye-dh">情绪如潮水</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=love&amp;from=shouye-dh">啊，是爱情</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=marriage&amp;from=shouye-dh">婚姻故事</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=pass&amp;from=shouye-dh">忘不掉的过去</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=zixun&amp;from=shouye-dh">咨询过程</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=popular&amp;from=shouye-dh">心理科普</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=force&amp;from=shouye-dh">强迫</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=depressed&amp;from=shouye-dh">抑郁</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=sex&amp;from=shouye-dh">性这件事</a>
							<a class="common-a store" href="https://www.xinli001.com/qa?type=store&amp;object_name=crisis&amp;from=shouye-dh">危机</a> -->

						</div>
					</div>
				</div>
			</div>

		</div>
		<script src="${APP_PATH }/js/vue.js"></script>
		<script src="${APP_PATH }/js/axios.js"></script>
		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<script src="https://unpkg.com/element-ui/lib/index.js"></script>
		<script type="text/javascript">
		var article = new Vue({
			  el: '#main',
			  data () {
			    return {
			      tag : 0,
			      pageno : 1,
				  totalno : 0,
				  answerList : [],
				  questionList : [],
				  userid:0,
				  curUser:null
			    }
			  },
			  created() {
			      this.getAnswer();
			      this.getUser();
			  },
			  watch: {
				      tag:function(){
				        // 修改页码为1
				        this.pageno=1;
				      },
				      immediate: true
			  },
			  methods: {
				dofollow(e,index){
					  let action=0;
					  alert(e.currentTarget.dataset.userid);
					  var isfollow = $(".content li").eq(index).find(".follow a").text();
					  if(isfollow=="关注"){
						  action=1;
					  }
					axios({
						  url: "${APP_PATH}/user/doFollow.do",
					      method: "GET",
					      params:{
					    	  followuserid:parseInt(e.currentTarget.dataset.userid),
					    	  action:action
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.getAnswer();
					    		//this.userid=res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				},
				
				dolike(e,index){
					var action=parseInt($(".content li").eq(index).find(".answer_zan img").attr("data-id"));
					alert(action);
					axios({
						  url: "${APP_PATH}/user/doLike.do",
					      method: "GET",
					      params:{
					    	  toid:e.currentTarget.dataset.answerid,
					    	  typeid:2,
					    	  action:action
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.getAnswer();
					    		//$("#likenum").html(res.data.data);
					    		//this.userid=res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				},
				  
				getUser(){
					axios({
						  url: "${APP_PATH}/user/doUserId.do",
					      method: "GET",
					    }).then(res => {
					    	if(res.data.success){
					    		this.userid=res.data.data;
					    		axios({
					    			url:"${APP_PATH}/user/doUserQa.do",
					    			method:"GET",
					    			params:{
					    				userid:res.data.data
					    			}
					    		}).then(res=>{
					    			if(res.data.success){
					    				this.curUser=res.data.data;
					    			}
					    		})
					    	}else{
					    		console.log(res.data.message);
					    	}
					    });
				},
				  
				getAnswer(){
					axios({
						  url: "${APP_PATH}/question/doAnswerIndex.do",
					      method: "GET",
					      params:{
					    	  pageno : this.pageno,
							  pagesize : 10
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.answerList=res.data.page.data;
					    		this.totalno=res.data.page.totalsize;
					    		this.tag=0;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				},
				
				getQuestion(){
					axios({
						  url: "${APP_PATH}/question/doIndex.do",
					      method: "GET",
					      params:{
					    	  pageno : this.pageno,
							  pagesize : 10
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.questionList=res.data.page.data;
					    		this.totalno=res.data.page.totalsize;
					    		this.tag=1;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				},
				
				handleCurrentChange(val) {
				      // console.log(`当前页: ${val}`);
				      // 保存页码
				      this.pageno = val
				      // 重新获取数据
				      if(this.tag==0){
				    	  this.getAnswer();
				      }else if(this.tag==1){
				    	  this.getQuestion();
				      }
				    }
				
			  }
		})
			
			$(function(){
				$(".emo").hide();
				$(".ans-emo").hide();
				$(".xinli-hide").hide();
			})
			
			// 推荐bar
			/* $(".ans-barl a").click(function(){
				var p = $(this).parent();
				if(p.attr("attr-id")=="answer"){
					alert("推荐答案");
					$(".answer").show();
					$(".question").hide();
				}else if(p.attr("attr-id")=="remque"){
					alert("推荐问题");
					$(".answer").hide();
					$(".question").show();
				}else if(p.attr("attr-id")=="newque"){
					alert("最新问题");
				}else if(p.attr("attr-id")=="essence"){
					alert("30天精华");
				}
			}) */
			
			// 右侧推荐分类
			$(".category a").click(function(){
				var content = $(this).text();
				$(".ans-bar").hide();
				$(".emo span").html("分类列表："+content)
				$(".emo").show();
				$(".ans-emo").show();
			})
			
			// 回答点赞
			// 关注
			$("li .label img").click(function(){
				
				var span = $(this).parent();
				
				// 关注  //点赞
				if(span.attr("class")=="follow span"){
					alert("用户id："+span.attr("data-user-id"));
				}else if(span.attr("class")=="answer_zan span"){
					var count = span.find("font").text();
					alert("回复id："+span.attr("data-answer-id")+"点赞数："+count);
					if($(this).attr("class")){
						$(".xinli-hide").show();
						$(".xinli-show").hide();
						count = parseInt(count)+1;
					}else if($(this).attr("class")){
						$(".xinli-hide").hide();
						$(".xinli-show").show();
						count = parseInt(count)-1;
					}
					span.find("font").html(count);
					
				}
				
				
			})
			
			// 回答问题按钮
			$(".answers").click(function(){
				alert("问题id");
			})
			
			
			
			
		</script>

	</body>
</html>
