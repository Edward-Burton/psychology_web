<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<link href="${APP_PATH}/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="${APP_PATH}/css/summernote.min.css" rel="stylesheet">
		<link href="${APP_PATH}/css/elementui.css" rel="stylesheet"/>
		<title></title>
		<style>
			body {
				background-color: #f3f4f5;
			}

			body,
			button,
			div,
			form,
			html,
			input,
			li,
			p,
			select,
			ul {
				margin: 0;
				padding: 0;
			}
			
			* {
			    box-sizing: content-box;
			}
			
			a {
				text-decoration: none;
				color: inherit;
			}

			#main {
				width: 1180px;
				margin: 0 auto;
				padding-top: 20px;
			}
			
			#main button {
			    cursor: pointer;
			    padding: 0;
			}
			
			#main button {
			    width: 140px;
			    height: 42px;
			    background-color: #0b8bff;
			    border-radius: 8px;
			    border: 0;
			    font-size: 16px!important;
			    color: #fff;
			    line-height: 42px;
			    text-align: center;
			    outline: 0;
			}

			#left {
				width: 800px;
				float: left;
				margin-right: 20px;
			}

			#left .content {
				list-style-type: none;
				margin-bottom: 20px;
				padding: 30px;
				background-color: #fff;
				border-radius: 10px;
			}

			#left .content .title {
				height: 30px;
				line-height: 30px;
			}

			#left .content .title img {
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

			a {
				text-decoration: none;
			}

			#left .content .title span {
				font-size: 20px;
				color: #333;
				font-weight: 700;
			}

			#left .content .title strong {
				float: right;
				font-size: 16px;
				line-height: 30px;
				color: #666;
				font-weight: 400 !important;
			}
			
			#left .content .user-name{
				float: left;
				font-weight: 500 !important;
				padding: 3px;
			}

			#left .content .read-capacity {
				margin-left: 50px;
			}

			#left .content .read-capacity span {
				font-size: 12px;
				line-height: 12px;
				color: #999;
				margin-right: 40px;
			}

			#left .content .read-capacity img {
				margin-right: 8px;
				width: 16px;
				height: 12px;
			}

			#left .content .text {
				margin: 15px 0 10px 50px;
				font-size: 14px;
				line-height: 22px;
				color: #333;
				width: 656px;
				word-wrap: break-word;
				overflow: hidden;
			}

			#left .content .qzlabel {
				margin-left: 50px;
				list-style-type: none;
			}
			

			#left .content .qzlabel li {
				display: inline-block;
				padding: 5px 10px;
				margin-right: 20px;
				font-size: 14px;
				line-height: 14px;
				border: 1px solid #e1e1e1;
				border-radius: 6px;
				color: #bababa;
			}

			#left .content .qzlabel .visit {
				background: #ddefff;
				border: none;
				color: #a1b3db;
			}
			
			#left .content .qzlabel a:nth-child(1) li, #left .content .qzlabel li:hover{
				background: #ddefff;
				border: none;
				color: #a1b3db;
			}
			
			#left #comment-reply {
			    width: 800px;
			    height: 94px;
			    display: flex;
			    background-color: #fff;
			    border-radius: 10px;
			    margin-bottom: 20px;
				box-sizing: content-box;
			}
			
			#left .comment-reply div {
			    flex: 1;
			    cursor: pointer;
			}
			
			#left .comment-reply img {
			    padding: 23px 20px 23px 60px;
			    width: 48px;
			    height: 48px;
			    float: left;
			}
			
			#left .comment-reply div p {
			    padding-top: 23px;
			}
			
			#left .comment-reply div span {
			    font-size: 18px;
			    color: #333;
			    line-height: 28px;
			}
			
			#left .answer-buttom {
			    height: 42px;
			    line-height: 42px;
			    text-align: center;
			    color: #fff;
			    background: #2f5aff;
			    margin: 20px 41%;
			    border-radius: 20px;
			    font-size: 14px;
			}
			
			#answer-text {
			    position: relative;
			    display: none;
			}
			
			#left .agree {
			    position: absolute;
			    bottom: 20px;
			    right: 0;
			}
			
			#left .agree input {
			    margin-right: 6px;
			    width: 14px;
			    height: 14px;
			}
			
			#left .agree a {
			    color: #333;
			    font-size: 14px;
			}
			
			/* 回答类别样式 */
			#left .content-ans li {
			    position: relative;
			    margin-bottom: 20px;
			    padding: 30px;
			    background-color: #fff;
			    border-radius: 10px;
			}
			
			#left .content-ans li .user {
			    height: 30px;
			    line-height: 30px;
			}
			
			#left .content-ans .user img {
			    width: 30px;
			    height: 30px;
			    border-radius: 50%;
			    float: left;
			    margin-right: 20px;
			}
			
			#left .content-ans .user .username {
			    font-size: 16px;
			    color: #333;
			}
			
			#left .content-ans li .recommend-icon {
			    position: absolute;
			    top: 84px;
			    left: 34px;
			}
			
			#left .content-ans li .recommend-icon i {
			    font-size: 22px;
			    color: #75bdff;
			}
			
			#left .content-ans li .text {
			    margin: 20px 0 20px 50px;
			    font-size: 14px;
			    line-height: 22px;
			    color: #333;
			    width: 656px;
			    word-wrap: break-word;
			}
			#left .content-ans li .praise-number {
			    color: #e5c694;
			    margin-left: 50px;
			    margin-bottom: 20px;
			    font-size: 14px;
			    line-height: 14px;
			}
			
			#left .content-ans li #label {
			    margin-left: 78px;
			    height: 24px;
			    line-height: 24px;    
			    display: block;
			}
			
			#left .content-ans li #label p {
			    display: inline-block;
			    color: #999;
			    font-size: 14px;
			}
			
			#left .content-ans li #label span {
			    float: left;
			    margin-right: 60px;
			    height: 18px;
			    position: relative;
			    min-width: 18px;
			}
			
			#left .content-ans li #label 
			img {
			    width: 18px;
			    height: 18px;
			    margin-right: 10px;
			    position: absolute;
			    top: 3px;
			    left: -28px;
			    cursor: pointer;
			}
			
			.like-light {
			    display: none;
			    width: 42px;
			    top: -12px;
			    left: -40px;
			    -webkit-animation: myfirst .5s;
			    animation: myfirst .5s;
			    position: absolute!important;
			}
			
			#left .content-ans li #label span a {
			    font-size: 14px;
			    color: #999;
			    font-weight: 400;
			}
			
			#left .content-ans li #label .created_time {
			    margin-left: -30px;
			}
			
			#left .content-ans li #label .edit_reply, #left .content-ans li #label .report_reply {
			    margin-left: 30px;
			    cursor: pointer;
			}
			
			/* 回答的评论 */
			
			#left .content-ans li .discuss {
			    padding: 15px 20px 20px;
			    width: 602px;
			    background-color: #fff;
			    border: 1px solid #f3f4f5;
			    box-shadow: 0 2px 10px 0 #eaeaea;
			    border-radius: 3px;
			    margin-left: 50px;
			    margin-top: 20px;
			    display:none;
			}
			
			#left .content-ans li .expand{
				display:block;
			}
			
			#left .content-ans li .discuss span {
			    font-size: 14px;
			    line-height: 14px;
			    color: #666;
			}
			
			#left .content-ans li .discuss .comment-list {
			    width: 602px;
			    border-bottom: 1px solid #f3f4f5;
			    border-top: 1px solid #f3f4f5;
			    margin-top: 15px;
			}
			
			#left .content-ans li .discuss .comment-list p:last-child {
			    margin-bottom: 10px;
			}
			
			#left .content-ans li .discuss .comment-list p {
			    margin-top: 10px;
			    line-height: 26px;
			    font-size: 16px;
			    color: #151515;
			}
			
			#left .content-ans li .discuss .comment-list a {
			    color: #0b8bff;
			}
			
			#left .content-ans li .discuss .import {
			    width: 602px;
			    height: 38px;
			    margin-top: 20px;
			}
			
			#left .content-ans li .discuss .replybox {
			    float: left;
			    width: 518px;
			    height: 36px;
			    border: 1px solid #e1ebf1;
			    border-radius: 8px;
			    font-size: 16px;
			    color: #999;
			    text-indent: 16px;
			    line-height: 36px;
			    outline: none;
			}
			
			#left .content-ans li .import .btn-comment {
			    float: right;
			    width: 64px;
			    height: 38px;
			    background-color: #8fcaff;
			    border-radius: 8px;
			    font-size: 16px;
			    color: #fff;
			    text-align: center;
			    line-height: 38px;
			}
		
			#right {
			    float: right;
			}
			
			#up {
			    background-color: #fff;
			    border-radius: 10px;
			    width: 300px;
			    height: 150px;
			    padding: 50px 30px;
			    margin-bottom: 20px;
				box-sizing: content-box;
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
			
			.ans-b {
			    float: right;
			}
			
			#question {
			    margin: 20px 0;
			    background-color: #fff;
			    border-radius: 10px;
			    width: 360px;
			    padding: 30px 0 10px;
				box-sizing: content-box;
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
			
			#question li a {
			    color: #333;
			    font-size: 14px;
			    line-height: 14px;
			    margin-left: 6px;
			}
			
			#category {
			    border-radius: 10px;
			    padding: 30px 20px 40px;
			    width: 320px;
			    background-color: #fff;
			    margin-top: 20px;
				box-sizing: content-box;
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
			
		</style>
		
		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	</head>
	<body style="font-size: 12px;">
		<div>
			<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
		</div>
		<!-- 公共头部 -->
		<!-- 主体内容 -->
		<div id="main">

			<!-- 左边内容 -->
			<div id="left">

				<!-- 问题 -->
				<div class="content">
					<p class="title" data-id="${question.user_question_id }">
						<c:if test="${question.user_anonym==1}">
  							 <a target="_blank" class="common-a" href="javascript:void(0);">
								<img src="https://lapp.xinli001.com/images/yiapp/v4.8/incognito.png">
							</a>
						</c:if>
						
						<c:if test="${question.user_anonym!=1}">
  							 <a target="_blank" class="common-a" href="${APP_PATH}/user/toUserIndex.htm?userid=${question.question_master.psychouser_id}">
								<img src="${APP_PATH }/${question.question_master.psychouser_head_portrait}">
								
							</a>
						</c:if>
						<span>${question.user_question_title }</span>
						<strong> {{replyList.length}}个回答</strong>
					</p>
					<c:if test="${question.user_anonym!=1}">
  							 <span class="user-name">${question.question_master.psychouser_name}</span>
					</c:if>
					
					<p class="read-capacity">
						<span>${question.user_question_pultime}</span>
						<span style="position:relative" class="absoulte-img">
							<img src="#">
							<a>{{readnum}}阅读</a>
						</span>
					</p>

					<p class="text">
						${question.user_question_content }
					</p>

					<!-- 问题分类标签 -->
					<ul class="qzlabel detail-tag">
						<c:forEach items="${question.qustion_labels}" var="label">
						<a target="_blank" class="common-a" href="#h">
							<li class="" data-id="${label.psycho_label_id }">${label.psycho_label_name }</li>
						</a>
						</c:forEach>
					</ul>

				</div>

				<!-- 互动 -->
				<div class="comment-reply" id="comment-reply">
					<div class="hug" data-objectid="${question.user_question_id}" @click="addHug($event)">
						<img v-if="!ishug" src="//lapp.xinli001.com/images/website-www/v5/unhug.png">
						<img src="${APP_PATH}/img/hug.png" v-if="ishug"/>
						<p>
							<span>给TA抱抱</span>
							<a>
								<font>{{hugNum}}</font> 个抱抱
							</a>
						</p>
					</div>

					<div class="collect"  data-question-id="100597924">
						<img v-if="iscollect>0" @click="doCollect()" src="https://lapp.xinli001.com/images/website-www/v5/collect.png">
						<img v-if="iscollect<=0" @click="doCollect()" src="//lapp.xinli001.com/images/website-www/v5/uncollect.png">
						
						<p>
							<span>收藏问题</span>
							<a>
								<font>{{collectnum}}</font> 个收藏
							</a>
						</p>
					</div>
					<div class="reply" @click="extendreply($event)" data-question-id="100597924">
						<img src="//lapp.xinli001.com/images/website-www/v5/answer-click.png">
						<p>
							<span>我来回答</span>
							<a>{{replyList.length}}个回答</a>
						</p>
					</div>

				</div>


				<!-- 回答组件 -->
				
				<div id="answer-text" style="display: none;">
					<div id="summernote">
					</div>
					<button class="answer-buttom" @click="addreply()">提交回答</button>
					<div class="agree">
						<input type="checkbox"><a href="http://www.xinli001.com/info/100389535">同意《社区问答规范》</a>
					</div>
				</div>
				
				
				<!-- 回答列表 -->
				<ul class="content-ans">
					<li v-for="(reply,index) in replyList" :key="index">
						<p class="user">
							<a target="_blank" class="common-a" href="'${APP_PATH }/'+reply.answerUser.psychouser_id">
								<img :src="'${APP_PATH }/'+reply.answerUser.psychouser_head_portrait">
							</a>
							<span class="username">{{reply.answerUser.psychouser_name}}</span>
							<span class="honor-icon honor-icon-3"></span>


						</p>
						<div class="recommend-icon">
							<i class="yxlicon icon-tuijian"></i>
						</div>
						<div class="text" v-html="reply.question_answer_content">
						</div>
						<div id="label">
							<span v-if="reply.user_follows.indexOf(userid)<0"  class="follow" >
								<img src="//lapp.xinli001.com/images/website-www/v5/unfollow.png" data-tag="0" @click="dofollow($event)" :data-userid="reply.answerUser.psychouser_id">
								<a>关注</a>
							</span>
							<span v-if="reply.user_follows.indexOf(userid)>=0" >
								<img src="https://lapp.xinli001.com/images/website-www/v5/follow.png" data-tag="1" @click="dofollow($event)" class="follow" :data-userid="reply.answerUser.psychouser_id">
								<a>已关注</a>
							</span>

							<span class="answer_zan" :data-answer-id="reply.question_answer_id">
								<img v-if="reply.question_answer_likes.indexOf(userid)>=0" data-tag="1" @click="dolike($event,index)" class="img-control is_zan xinli-hide" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAASCAYAAAC5DOVpAAAAAXNSR0IArs4c6QAAAQRJREFUOBGtVLtuwkAQnDVGKOLRAGlSpueP4A8iJEhEhURBZyvKDyQfkn8IP4BES4eIAAkJxZu5g+58Robb4nyenRmtd1cWXIlWqv0/xRdpsQhW+1d59kkiX8LgnU9tZkDKa2x5iq59eo4zyZM8bjBR4NGTdmBvZe13fVLByFEUAF6zY4Y5FA8FWieVa1b/0B6NBg77CpBrhhMS6vJzBYbSSHWnisbhjYNn1BO+lQwq51yZaWSMSmodOgdVNWDpT3GcCEiGRTCzSg0/QczY6N/tC1ZBzCBYiIgd2t09Y2W2X0Eq44/A9iuIWRQHqozLuh8PsTRVmYjYwPX5etP5PRNu2SX+AXnZOUZEe1GrAAAAAElFTkSuQmCC">
								<img v-if="reply.question_answer_likes.indexOf(userid)<0" data-tag="0" @click="dolike($event,index)" class="img-control not_zan xinli-show" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAASCAYAAAC5DOVpAAAAAXNSR0IArs4c6QAAAP1JREFUOBGtk70OAUEQx//DKSSUNEqtCC0h8fEaPIRGpdPxDB5EXHNE51yikUi0aqGRYM1uIlHsrhw7yW325uOXmf9kCV/MX0Y9CDETgAeiY7dRKZpKEqaA9K9W+yxDpgrE/wTkbPlW2E3chtxV3gb4jBlh/joqAM/BZ/K3u2dMuGPM46WNcU1A29ki2JUFoa/Jt7q0MMJjwlppYzYa+UF0ERCZbrPKywIWwZani2dENO40KqOEBMUr1WanpDf2KDoUEUJnMEHJjSvYuV0rHZ3AWPyQP7U0F5opvZx0xs9f6eUE9t7k3zACXVv18kGCpEnNTur2y0GYs/jPd+kLZRQ8AUM8Kk4AAAAASUVORK5CYII=">
								<span class="like-light"></span>
								<a>有用 <font>{{reply.question_answer_likes.length}}</font></a>
							</span>


							<span class="comment_item" :data-answerid="reply.question_answer_id">
								<img src="//lapp.xinli001.com/images/website-www/v5/comment.png" @click="tag=index+1">
								<a>评论 <font class="comment_num">{{reply.answercomment.length}}</font></a>
							</span>

							<p class="created_time">{{reply.question_answer_pultime}}</p>

						</div>
						
						<div class="discuss" :class="{expand:tag==index+1}">
							<span>
								<font class="comment_num">{{reply.answercomment.length}}</font>条评论
							</span>
							<span style="float: right;">
								<a @click="tag=0">收起</a>
							</span>
							<div class="comment-list">
								<p v-for="(comment,index) in reply.answercomment"><a :data-user-id="comment.answerUser.psychouser_id">{{comment.answerUser.psychouser_name}}</a>：{{comment.question_answer_content}}</p>
							</div>

							<div class="import" :data-answer-id="reply.question_answer_id" reply-user-id="">
								<input type="text" class="replybox" placeholder="回复评论" name="comment" v-model="inputValue">
								<button class="btn-comment" @click="addcomment(index)" style="background-color: rgb(11, 139, 255);">评论</button>
							</div>
						</div>

					</li>
				</ul>


			</div>

			<!-- 右边内容 -->
			<div id="right">
				<div id="up">
					<div class="contain">
						<p class="star">
							<a href="#">0</a>
							<span>获赞数</span>
						</p>
						<p class="ans">
							<a href="#">1</a>
							<span>回答数</span>
						</p>
						<p class="ques">
							<a href="#">1</a>
							<span>提问数</span>
						</p>
					</div>
					<div class="qabtn">
						<a href="${APP_PATH}/question/toAdd.htm">
							<button class="ques-b">我要提问</button>
						</a>
						<a href="user_page.html">
							<button class="ans-b">我的问答</button>
						</a>

					</div>
				</div>
			</div>

		</div>

		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<script src="${APP_PATH }/js/vue.js"></script>
		<script src="${APP_PATH }/js/axios.js"></script> 
		<script src="${APP_PATH }/js/elementui.js"></script>
		<!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>-->
		<script src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script> 
		<script type="text/javascript">
		var questionid = $(".title").attr("data-id");
		var question = new Vue({
			  el: '#main',
			  data () {
			    return {
			      readnum:0,
			      userid:0,
			      iscollect:0,
			      collectnum:0,
			      pageno : 1,
				  totalno : 0,
				  replyList: [],
				  tag:0,
				  inputValue:"",
				  hugNum:"${question.question_hug_num}",
				  ishug:false
			    }
			  },
			  created() {
				  this.getuserid();
				  this.addreadnum();
				  this.getCollect();
				  this.getCollectStatus();
				  this.queryQuestionAnswer();
			  },
			  methods: {
				  
				  
				  
				  addHug(e){
					  if(this.userid!=0){
						  axios({
							  	method: "GET",
								url : "${APP_PATH}/question/updateHugNum.do",
								params:{
									questionId:parseInt(questionid)
								}
						    }).then(res => {
						    	if(res.data.success){
						    		this.ishug=true;
						    		this.hugNum=res.data.data;
						    	}else{
						    		alert(res.data.message);
						    	}
						    });
					  }else{
						  alert("请登录");
					  }
				  },
				  
				  addcomment(index){
					  let answerpid = parseInt($(".content-ans li").eq(index).find(".import").attr("data-answer-id"));
					  if(this.userid!=0){
					  if (this.inputValue == '') {
			              // 提示用户
			              /* this.$message.warning('请输入内容'); */
			              alert("请输入内容");
			            }else{
				    		var params={
				    				userid : this.userid,
									questionId:questionid,
									answerpid:answerpid,
									content:encodeURI(this.inputValue.trim())
				    		};
					  axios({
						  	method: "GET",
							url : "${APP_PATH}/question/doAddAnswer.do",
							params:params
					    }).then(res => {
					    	if(res.data.success){
					    		this.queryQuestionAnswer();
					    		this.inputValue="";
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
			            }
					  }else{
						  alert("请登录")
					  }
				  },
				  
				  dofollow(e){
					  let action=0;
					  if(e.currentTarget.dataset.tag=="0"){
						  action=1;
					  }else{
						  action=0;
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
								this.queryQuestionAnswer();
					    		//this.userid=res.data.data;
					    	}else{
					    		alert("message: "+res.data.message);
					    	}
					    });
				  },
				  
				  extendreply(t){
					  if(this.userid!=0){
							if (!window.replyStatus) {
								if ((window.firstTriggerEdit && ( e(""), (window.firstTriggerEdit = !1) ),window.editReply)) {
									$("#answer-text").hide().css({
											"margin-top": "0",
											border: "none",
											background: "transparent",
											"border-radius": "0"
										}).insertAfter($(".comment-reply")),
										e(""),
										(window.editReplyId = "0"),
										(window.editReply = !1);
								}
								$("#answer-text").toggle(500)
									/* window.yxl.stat.send({
										name: " 问答-详情页「工具栏」点击",
										properties: {
											分类: "我来回答"
										}
									}); */
							}
							}else{
								  alert("请登录");
							}
				  },
				  
				  dolike(e,index){
					  let action=0;
					  if(e.currentTarget.dataset.tag=="0"){
						  action=1;
					  }else{
						  action=0;
					  }
				  let toid = parseInt($(".content-ans li").eq(index).find(".answer_zan").attr("data-answer-id"));
				  axios({
					  url: "${APP_PATH}/user/doLike.do",
				      method: "GET",
				      params:{
				    	  toid:toid,
				    	  typeid:2,
				    	  action:action
				      }
				    }).then(res => {
				    	if(res.data.success){
				    		this.queryQuestionAnswer();
				    		//$("#likenum").html(res.data.data);
				    		//this.userid=res.data.data;
				    	}else{
				    		alert(res.data.message);
				    	}
				    });
					},
				  
				  addreply(){
					  var  data = new FormData(); 
					  data.append("userid",this.userid);
					  data.append("questionId",questionid);
					  data.append("content",encodeURI($('#summernote').summernote('code')));
					  axios({
						  	headers:{
							  'Content-type': 'multipart/form-data'
							  },
						  	method: "POST",
							url : "${APP_PATH}/question/doAddAnswer.do",
							params:{},
							data:data
					    }).then(res => {
					    	if(res.data.success){
					    		this.queryQuestionAnswer();
					    		$('#summernote').summernote('reset')
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
					  
				  },
				  queryQuestionAnswer(){
					  axios({
						  	method: "get",
							url : "${APP_PATH}/question/doQuestionAnswer.do",
							params:{
								pageno : this.pageno,
								pagesize : 10,
								questionId:questionid,
							}
					    }).then(res => {
					    	if(res.data.success){
						    	this.replyList=res.data.page.data;
						    	this.totalno=res.data.page.totalsize;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  
				  getCollect(){
					  axios({
					      url: "${APP_PATH}/question/getCollect.do",
					      method: "get",
					      params:{
					    	  questionid:questionid
					      }
					    }).then(res => {
					    	if(res.data.success){
						    	this.collectnum=res.data.data.length;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  
				  doCollect(){
					  axios({
					      url: "${APP_PATH}/user/doCollect.do",
					      method: "get",
					      params:{
					    	  toid:questionid,
					    	  typeid:2,
					    	  iscollect:this.iscollect
					      }
					    }).then(res => {
					    	if(res.data.success){
						    	this.getCollect();
						    	this.getCollectStatus()
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  
				  getCollectStatus(){
			    		axios({
						      url: "${APP_PATH}/user/doIsCollect.do",
						      method: "get",
						      params:{
						    	  toid:questionid,
						    	  typeid:2
						      }
						    }).then(res => {
						    	if(res.data.success){
							    	this.iscollect=res.data.data;
						    	}else{
						    		console.log(res.data.message);
						    	}
						    });
			    	},
				  
			    addreadnum(){
			    	axios({
					      url: "${APP_PATH}/question/addReadNum.do",
					      method: "get",
					      params:{
					    	  questionid:questionid
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.readnum = res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
			    },
			    getuserid(){
					axios({
						  url: "${APP_PATH}/user/doUserId.do",
					      method: "GET",
					    }).then(res => {
					    	if(res.data.success){
					    		this.userid=res.data.data;
					    	}else{
					    		console.log(res.data.message);
					    	}
					    });
				}
			  }
		})
		
		
		
		$(function() {
				$('#summernote').summernote({
					placeholder: '请输入',
					tabsize: 2,
					height: 200,
					toolbar: [
						
					],
					focus: true,
					dialogsFade: true, // Add fade effect on dialogs
					dialogsInBody: true,
					disableDragAndDrop: false, // default false You can disable drag
					// and drop
					tabDisable: false
				});
			});
			
			
			// 点击文章分类
			$(".detail-tag a").click(function(){
				var text = $(this).find("li").text();
				alert(text);
			})
			
			
			// 评论点赞
			$("li .label img").click(function(){
				
				var span = $(this).parent();
				
				// 关注  //点赞
				if(span.attr("class")=="follow"){
					alert("用户id："+span.attr("data-user-id"));
					
				}else if(span.attr("class")=="answer_zan"){
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
					
				}else if(span.attr("class")=="comment_item"){
					var count = span.find("font").text();
					var comment = $(this).parents(".label").siblings(".discuss");
					if(comment.attr("style").indexOf("none")>=0){
						comment.show();
					}else{
						comment.hide();
					}
					alert(count);
				}

			});
			
			// 评论回答
			$(".btn-comment").click(function(){
				var answerid = $(this).parent().attr("data-answer-id");
				// val()是获取表单数据
				var content = $(this).siblings("input").val();
				alert("问题ID："+answerid+"\n"+"评论内容："+content);
			})
			
			//访问评论用户主页
			$(".user a").click(function(){
				var href = $(this).attr("href");
				alert(href);
			})
			
			
			// 右侧推荐分类
			$(".category a").click(function(){
				var content = $(this).text();
				$(".ans-bar").hide();
				$(".emo span").html("分类列表："+content)
				$(".emo").show();
				$(".ans-emo").show();
			})

		// 	$(".answer-buttom").click(function() {
		// 		var questionId = $ {
		// 			question.user_question_id
		// 		};
		// 		var answerdata = $("#summernote").val();
		// 		alert(answerdata);
		// 		$.ajax({
		// 			type: "POST",
		// 			data: {
		// 				"question_id": questionId,
		// 				"question_answer_content": answerdata,
		// 			},
		// 			url: "${APP_PATH}/question/doAddAnswer.do",
		// 			beforeSend: function() {
		// 				alert("添加中...")
		// 				return true;
		// 			},
		// 			success: function(result) {
		// 				alert(result.message);
		// 				queryQuestionAnswer();
		// 			},
		// 			error: function() {},

		// 		});
		// 	})

		// 	function queryQuestionAnswer() {
		// 		var questionId = $ {
		// 			question.user_question_id
		// 		};
		// 		alert(questionId);
		// 		$.ajax({
		// 			type: "GET",
		// 			data: {
		// 				"questionId": questionId,
		// 			},
		// 			url: "${APP_PATH}/question/doQuestionAnswer.do",
		// 			beforeSend: function() {
		// 				alert("查询中...")
		// 				return true;
		// 			},
		// 			success: function(result) {
		// 				alert(result.message);
		// 				var data = result.page.data;

		// 				$.each(data, function(i, answer) {
		// 					alert(answer.question_answer_content + "\n" + answer.answerUser.psychouser_name);
		// 				})
		// 			},
		// 			error: function() {},

		// 		});
		// 	}
		
		</script>
	</body>
</html>
