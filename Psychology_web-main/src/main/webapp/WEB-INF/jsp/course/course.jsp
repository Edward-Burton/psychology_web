<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link href="${APP_PATH }/css/video-js.min.css" rel="stylesheet">
<link href="${APP_PATH }/css/course.css" rel="stylesheet" />
<body>
	<div>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
	</div>
	<div class="main-container" id="main">
		<div class="main-left">
			<div class="video-player-container"
				style="height: 432.64px; pointer-events: auto;">
				<video ref="viodeRef" id="course-video"
					class="video-js vjs-default-skin vjs-big-play-centered" controls
					preload="auto" width="820" height="400"
					poster="${APP_PATH}/${course.cover_img}">
					<!-- <source :src="playOptions.source[0].src"> -->
					<!-- <source src="http://vjs.zencdn.net/v/oceans.mp4" type="video/mp4"> -->
					<!-- <source src="http://vjs.zencdn.net/v/oceans.webm" type="video/webm">
					<source src="http://vjs.zencdn.net/v/oceans.ogv" type="video/ogg"> -->
					<p class="vjs-no-js">
						To view this video please enable JavaScript, and consider
						upgrading to a web browser that <a
							href="http://videojs.com/html5-video-support/" target="_blank">supports
							HTML5 video</a>
					</p>
				</video>

			</div>

			<div class="course-info">
				<!-- <div class="commenter-avatar" style="background-image:url(https://ossimg.xinli001.com/20200317/5e299e35eb234b31dbdd84aa51dd0755.jpg)">

					</div> -->

				<div class="course-title" data-id="${course.course_id }">${course.course_name }</div>
				<div class="course-desc">${course.description }</div>
				<div class="static-item">
					<div>
						<c:if test="${course.type==1 }">
							<span class="tag">音频</span>
						</c:if>
						<c:if test="${course.type==0 }">
							<span class="tag">视频</span>
						</c:if>
						<span class="join-number">${course.join_number }人参加</span>
					</div>
					<div>
						<span class="course-pay">${course.course_price }元</span> <a
							v-if="isorder==0"><span class="pay-btn">购买</span></a> <a
							v-if="isorder==1"><span class="pay-btn">待支付</span></a> <a
							v-if="isorder==2"><span class="pay-btn">已购买</span></a>
					</div>
				</div>

				<div class="course-menu">
					<a href="javascript:void(0)"> <span
						onclick="showTab(this,'courseDetail')" class="menu-item cur">课程详情</span>
					</a> <a href="javascript:void(0)"> <span
						onclick="showTab(this,'courseSection')" class="menu-item">章节</span>
					</a> <a href="javascript:void(0)"> <span
						onclick="showTab(this,'comment',0)" class="menu-item">评论</span>
					</a> <a href="javascript:void(0)"> <span
						onclick="showTab(this,'courseQA',1)" class="menu-item">问答</span>
					</a>
				</div>

			</div>

			<div id="courseDetail">
				${course.course_info}
			</div>

			<!-- 课程目录 -->
			<div id="courseSection">
				<div class="course-item" v-for="(catalog,index) in catalogList">

					<!--一级目录 -->
					<div class="course-item-hd">
						<span>{{catalog.catalog_name}}</span>
					</div>

					<div class="course-item-bd">

						<!-- 二级目录 -->
						<div class="course-item" v-if="catalog.subcatalog.length>0"
							v-for="(subcatalog,index) in catalog.subcatalog">

							<div class="course-item-hd">
								<span>{{subcatalog.catalog_name}}</span>
							</div>

							<div class="course-item-bd">

								<!-- 第一节 -->
								<div class="course-section-item"
									v-if="subcatalog.lesson.length>0"
									v-for="(lesson,index) in subcatalog.lesson">
									<p class="title">{{lesson.lesson_name}}</p>

									<!-- 音频时长 -->
									<p class="time">
										<i>7'26''</i>
									</p>

									<span class="right-control try" v-if="isorder<=1"> <em
										v-if="lesson.status==0">待解锁</em> <em v-if="lesson.status==1"
										:data-id="'${APP_PATH }/'+lesson.media_addr"
										@click="play($event)">试听</em>
									</span> <span class="right-control try" v-if="isorder>1"> <em
										v-if="lesson.status==0"
										:data-id="'${APP_PATH }/'+lesson.media_addr"
										@click="play($event)">播放</em>
									</span>

								</div>

							</div>

						</div>

						<!-- 课程第一节 -->
						<div class="course-section-item" v-if="catalog.lesson.length>0"
							v-for="(lesson,index) in catalog.lesson">
							<p class="title">{{lesson.lesson_name}}</p>

							<!-- 音频时长 -->
							<p class="time">
								<i>7'26''</i>
							</p>

							<span class="right-control try" v-if="isorder<=1"> <em
								v-if="lesson.status==0">待解锁</em> <em v-if="lesson.status==1"
								:data-id="'${APP_PATH }/'+lesson.media_addr"
								@click="play($event)">试听</em>
							</span> <span class="right-control try" v-if="isorder>1"> <em
								v-if="lesson.status==0"
								:data-id="'${APP_PATH }/'+lesson.media_addr"
								@click="play($event)">播放</em>
							</span>
							<!-- <span class="right-control lock"> 待解锁 </span> -->

						</div>

					</div>

				</div>
			</div>

			<!-- 课程评论列表 -->
			<div class="comment" id="comment">
				<div class="comment-introduce">
					<a href="javascript:void(0)" v-if="isorder==2"
						class="go-comment-btn">我要留言</a> <a href="javascript:void(0)"
						class="go-comment-btn">我要留言</a>
				</div>
				<div class="comment-input">
					<textarea v-model="commentValue" rows="5" placeholder="请输入内容"
						style="width: 90%;outline:none;resize: none; border: 1px solid #f3f4f5; box-shadow: 0 2px 10px 0 #eaeaea; border-radius: 10px;"></textarea>
					<a class="comment-bnt" @click="addComment"
						style="background-color: #0b8bff; padding: 10px; color: white; border-radius: 8px;">完成</a>
				</div>

				<!-- 评论列表 -->
				<ul class="comment-list">
					<li class="comment-item" v-for="(comment,index) in commentList">
						<div class="avatar-wrap">
							<!-- 用户头像 -->
							<div class="commenter-avatar"
								:style="'background-image: url(${APP_PATH }/'+comment.comment_user.psychouser_head_portrait+')'"></div>
						</div>
						<div class="comment-infos">
							<div class="commenter-wrap">

								<!-- 名字 -->
								<div class="commenter-name">{{comment.comment_user.psychouser_name}}</div>
								<!-- 已经赞 加类名liked -->
								<div class="like-action" :data-comment-id="comment.comment_id">
									<div class="like-num">{{comment.commentlikedList.length}}</div>
									<div class="like-icon liked" @click="dolike($event,index)"
										tag="1" v-if="comment.commentlikedList.indexOf(userid)>=0">赞</div>
									<div class="like-icon" @click="dolike($event,index)" tag="0"
										v-if="comment.commentlikedList.indexOf(userid)<0">赞</div>
								</div>
							</div>
							<p class="comment-text">{{comment.comment_content}}</p>
							<div @mouseover="mouseOver()" @mouseleave="mouseLeave()"
								style="justify-content: space-between; align-items: center; display: flex;">
								<span class="comment-time">{{comment.comment_pultime}}</span> <span
									v-if="comment.comment_user.psychouser_id==userid"> 
									<span @click="deleteComment(index)" style="cursor: pointer;">删除</span>
								</span>
							</div>

						</div>
					</li>
				</ul>
			</div>

			<div id="courseQA" class="courseqa">
				<div class="courseQA-introduce">
					<a href="javascript:void(0)" class="go-ask-btn">我要提问</a>
				</div>

				<div class="question-input">
					<!-- @focus="isLogin()" -->
					<textarea v-model="questionValue" rows="5" placeholder="请输入内容"
						style="width: 90%;outline: none;resize:none; border: 1px solid #f3f4f5; box-shadow: 0 2px 10px 0 #eaeaea; border-radius: 10px;"></textarea>
					<a class="sub-bnt" @click="addquestion"
						style="background-color: #0b8bff; padding: 10px; color: white; border-radius: 8px;">完成</a>
				</div>

				<ul class="qa-list">
					<li class="qa-item" v-for="(question,index) in questionList">
						<div class="avatar-wrap">
							<!-- 用户头像 -->
							<div class="question-user-avatar"
								:style="'background-image: url(${APP_PATH }/'+question.questionUser.psychouser_head_portrait+')'"></div>
						</div>
						<div class="qa-infos">
							<div class="question-user-wrap">

								<!-- 名字 -->
								<div class="question-user-name">{{question.questionUser.psychouser_name}}</div>
								<!-- 回复，只有咨询师查看时有回复按钮 -->
								<div class="reply-action"
									:data-question-id="question.sales_question_id">
									<span>回复</span>
								</div>
							</div>
							<p class="question-text">{{question.sales_question_content}}</p>
							<p class="question-time">{{question.sales_question_pultime}}</p>
						</div>
						<ul v-if="question.answers.length>0">
							<li v-for="(answer,index) in question.answers">{{answer.sales_answer_content}}
								<span class="answer-time" style="float: right">{{answer.sales_answer_pultime}}</span>
							</li>
						</ul>
						<div class="reply-input">
							<textarea v-model="answerValue" rows="4" placeholder="请输入内容"
								style="padding-top: 20px;outline: none;resize: none; width: 90%; border: 1px solid #f3f4f5; box-shadow: 0 2px 10px 0 #eaeaea; border-radius: 10px;"></textarea>
							<a class="addanswer=bnt" @click="addqanswer($event,index)"
								style="background-color: #0b8bff; padding: 10px; color: white; border-radius: 8px;">完成</a>
						</div>
					</li>
					<li class="qa-item">
						<div class="avatar-wrap">
							<!-- 用户头像 -->
							<div class="question-user-avatar"
								style="background-image: url(${APP_PATH }/${course.instructor.instructor_img})"></div>
						</div>
						<div class="qa-infos">
							<p class="question-text">有问题</p>
							<div class="question-user-wrap">

								<!-- 名字 -->
								<span class="question-user-name">提问者</span> <span
									class="question-time">2019-03-29</span>
								<!-- 回复，只有咨询师查看时有回复按钮 -->
								<span class="reply-action">回复</span>
							</div>
						</div>
					</li>
				</ul>

			</div>

		</div>

		<div class="main-right">
			<div class="lecturer-item"
				data-id="${course.instructor.instructor_id}" style="width: 100%;">
				<img class="lecturer-uimg"
					src="${APP_PATH }/${course.instructor.instructor_img}">
				<h2 class="lecturer-name">${course.instructor.instructor_name}</h2>
				<p class="lecturer-title">${course.instructor.instructor_glory}
				</p>
				<!-- <a href="javascript:void(0)" onclick="doFollow('1');">
									<span id="followSpan" class="follow-btn">
									关注+
									</span>
									</a> -->
			</div>

			<div>
				<h4 style="font-size: 18px; margin-top: 10px; margin-bottom: 10px;">推荐课程</h4>
				<a href="" target="" class=""> <span class="ellipsis">
						推荐课程1 </span>
				</a> <a href="" target="" class=""> <span class="ellipsis">
						推荐课程2 </span>
				</a> <a href="" target="" class=""> <span class="ellipsis">
						推荐课程3 </span>
				</a>
			</div>

		</div>
	</div>
	<script src="${APP_PATH }/js/vue.js"></script>
	<script src="${APP_PATH }/js/axios.js"></script>
	<script src="${APP_PATH }/js/video.min.js"></script>
	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script type="text/javascript">
		var courseid=$(".course-title").attr("data-id");
		var instructorid=$(".lecturer-item").attr("data-id");
		var course = new Vue({
			  el: '#main',
			  data () {
			    return {
			      isorder:0,
			      userid:0,
			      lessionList:[],
			      catalogList:[],
			      tryList:[],
			      mediaUrl:"",
			      commentValue:"",
			      questionValue:"",
			      answerValue:"",
			      commentList:[],
			      questionList:[],
			      playOptions:{
		              autoplay: false, // 自动播放
		              controls: true, // 是否显示控制栏
		              notSupportedMessage: '此视频暂无法播放，检查相机状态是否正常或请查看是否安装flash',//无法播放时显示的信息
		              techOrder: ['flash', 'html5'],// 兼容顺序
		              sourceOrder: true,
		              /* flash: {
		                swf: '../../../static/VideoJS.swf'   //如果是本地视频  需要相应的videoJS.swf文件
		              }, */
		              /* source:[{
		                type: 'video/mp4',
		                src:'http://vjs.zencdn.net/v/oceans.mp4'
		              }], */
		              /* source:[{
		                type: 'video/mp4',
		                src:'/Psychology_web-main/img/coursemedias/test1.mp3'
		              }], */
		              /* source:[{
			                type: 'video/mp4',
			                src: ''
			          }], */
		              poster:'', //播放器 默认图片
		              controlBar: {                     // 配置控制栏
		                timeDivider: false, // 时间分割线
		                durationDisplay: false, // 总时间
		                progressControl: true, // 进度条
		                customControlSpacer: true, // 未知
		                fullscreenToggle: true // 全屏
		              },

		           },
		           coursePlayer:""
			    }
			  },
			  
			  created() {
				/* this.$refs.viodeRef = videojs('course-video'); */
				
				this.getTryList();
			    this.getorder();
			    this.getLessionList();
			    this.getCommentList();
			    this.getuserid();
			    this.getquestion();
			  },
			  methods: {
				  
			/* 	  $(".vjs-big-play-button").click(function(){
					  alert("!!!!");
				  }),
				   */
				  getTryList(){
					  axios({
						  url: "${APP_PATH}/course/doTryList.do",
					      method: "GET",
					      params:{
					    	  courseid:courseid
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		 this.tryList=res.data.data;
					    		 /* this.tryList.forEach((item)=>{
					    			 this.$set(this.playOptions.source,this.playOptions.source.length,{type:"video/mp4",src:"${APP_PATH }/"+item.media_addr});
					    		 }) */
					    		 /* this.$set(this.playOptions.source,this.playOptions.source.length,{type:"video/mp4",src:"${APP_PATH }/"+this.tryList[0].media_addr});
					    		 alert(JSON.stringify(this.playOptions.source)); */
					    		/*  this.$refs.viodeRef.src="${APP_PATH }/"+this.tryList[0].media_addr; */
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  
				  deleteComment(index){
					  let Commentid=parseInt($(".comment-list li").eq(index).find(".like-action").attr("data-comment-id"));
					  alert(Commentid);
					  axios({
						  url: "${APP_PATH}/course/doDeleteQuestion.do",
					      method: "POST",
					      params:{
					    	  Commentid:Commentid
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		 this.getCommentList();
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  
				  mouseOver(){
					  
				  },
				  
				  mouseLeave(){
					  
				  },
				  
				  addqanswer(e,index){
					  if(this.answerValue==""){
						  alert("请输入内容");
					  }else{
						  let questionid=parseInt($(".qa-list li").eq(index).find(".reply-action").attr("data-question-id"));
						  alert(questionid);
						  axios({
							  url: "${APP_PATH}/course/doAddAnswer.do",
						      method: "POST",
						      params:{
						    	  questionid:questionid,
						    	  content:this.answerValue,
						    	  instructorid:instructorid
						      }
						    }).then(res => {
						    	if(res.data.success){
						    		 this.getquestion();
						    		 this.answerValue=="";
						    	}else{
						    		alert(res.data.message);
						    	}
						    });
					  }
				  },
				  
				  addquestion(){
					  if(this.questionValue==""){
						  alert("请输入内容");
					  }else{
						  axios({
							  url: "${APP_PATH}/course/doAddQuestion.do",
						      method: "POST",
						      params:{
						    	  courseid:courseid,
						    	  content:this.questionValue,
						    	  userid:this.userid
						      }
						    }).then(res => {
						    	if(res.data.success){
						    		 this.getquestion();
						    		 this.questionValue=="";
						    	}else{
						    		alert(res.data.message);
						    	}
						    });
					  }
				  },
				  
				  addComment(){
					  if(this.commentValue==""){
						  alert("请输入内容");
					  }else{
						  axios({
							  url: "${APP_PATH}/course/doAddComment.do",
						      method: "POST",
						      params:{
						    	  courseid:courseid,
						    	  content:this.commentValue,
						    	  userid:this.userid
						      }
						    }).then(res => {
						    	if(res.data.success){
						    		this.getCommentList();
						    		this.commentValue=="";
						    	}else{
						    		alert(res.data.message);
						    	}
						    });
					  }
				  },
				  
				  isLogin(){
					  if(this.userid==0){
						  alert("请登录后再评论");
					  }
				  },
				  
				  getquestion(){
					  axios({
						  url: "${APP_PATH}/course/doQuestion.do",
					      method: "GET",
					      params:{
					    	  courseid:courseid
					      }
					    }).then(res => {
					    	if(res.data.success){
					    		this.questionList=res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  
			      dolike(e,index){
			    	  	let toid=parseInt($(".comment-list li").eq(index).find(".like-action").attr("data-comment-id"));
						var action;
						if(parseInt(e.currentTarget.getAttribute("tag"))==0){
							action=1;
						}else{
							action=0;
						}
						axios({
							  url: "${APP_PATH}/user/doLike.do",
						      method: "GET",
						      params:{
						    	  toid:toid,
						    	  typeid:3,
						    	  mainid:courseid,
						    	  maintype:3,
						    	  action:action
						      }
						    }).then(res => {
						    	if(res.data.success){
						    		this.getCommentList();
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
					},
				  
				  play(e){
					  /* this.mediaUrl=e.currentTarget.dataset.id;
					  alert(this.mediaUrl);
					  this.playOptions.source[0].src=e.currentTarget.dataset.id;
					  alert(this.playOptions.source[0].src);
					   */
					  this.$refs.viodeRef.src=e.currentTarget.dataset.id;
					  this.$refs.viodeRef.load=e.currentTarget.dataset.id;
					  this.$refs.viodeRef.play();
					  /* let _this=this;
					  this.coursePlayer = videojs(this.$refs.viodeRef, this.playOptions, function() {
					        this.src(this.mediaUrl);
					        this.load(this.mediaUrl);
					        this.play();
					        
					  }); */
				  },
				  
				  getCommentList(){
					  axios({
							 url:"${APP_PATH}/course/doComment.do" ,
							 method:"GET",
							 params:{
								 courseid:parseInt(courseid)
							 }
						  }).then(res=>{
							  if(res.data.success){
								  this.commentList=res.data.data;
							  }else{
								  alert(res.data.message);
							  }
						  });
				  },
				  
				  getLessionList(){
					  axios({
						 url:"${APP_PATH}/course/doCatalog.do" ,
						 method:"GET",
						 params:{
							 courseid:parseInt(courseid)
						 }
					  }).then(res=>{
						  if(res.data.success){
							  this.catalogList=res.data.data;
						  }else{
							  alert(res.data.message);
						  }
					  });
				  },
				  getorder(){
					  axios({
						 url:"${APP_PATH}/course/doIsOrder.do" ,
						 method:"GET",
						 params:{
							 courseid:courseid
						 }
					  }).then(res=>{
						  if(res.data.success){
							  this.isorder=res.data.data;
						  }else{
							  console.log(res.data.message);
						  }
					  });
				  }
			  },
			  beforeDestroy:function(){
		          const videoDom = this.$refs.viodeRef;  //不能用document 获取节点
		          videojs(videoDom).dispose();  //销毁video实例，避免出现节点不存在 但是flash一直在执行，报 this.el.......is not function
		      }
		      
		});
		var coursePlayer = videojs('course-video');
		
			$(function(){
				getTryList();
				$('#courseDetail').show();
				$('#courseSection').hide();
				$('#comment').hide();
				$('#courseQA').hide();
			});
			
			function getTryList(){
				var tryList=[];
				$.ajax({
					type : "POST",
					data : {
						"courseid":courseid
					},
					url : "${APP_PATH}/course/doTryList.do",
					beforeSend : function() {
						return true;
					},
					success : function(result) {
						if (result.success) {
							tryList=result.data;
				            videojs("course-video").ready(function() {
				                var myPlayer = this;
				                myPlayer.src("${APP_PATH}/"+tryList[0].media_addr); /*动态设置video.js播放的地址。*/
				                myPlayer.autoplay();
				            });
						}else{
							alert(res.message);
						}
					}
				})
				
			}
			
			//设置中文
			videojs.addLanguage('zh-CN', {
				"Play": "播放",
				"Pause": "暂停",
				"Current Time": "当前时间",
				"Duration": "时长",
				"Remaining Time": "剩余时间",
				"Stream Type": "媒体流类型",
				"LIVE": "直播",
				"Loaded": "加载完毕",
				"Progress": "进度",
				"Fullscreen": "全屏",
				"Non-Fullscreen": "退出全屏",
				"Mute": "静音",
				"Unmute": "取消静音",
				"Playback Rate": "播放速度",
				"Subtitles": "字幕",
				"subtitles off": "关闭字幕",
				"Captions": "内嵌字幕",
				"captions off": "关闭内嵌字幕",
				"Chapters": "节目段落",
				"Close Modal Dialog": "关闭弹窗",
				"Descriptions": "描述",
				"descriptions off": "关闭描述",
				"Audio Track": "音轨",
				"You aborted the media playback": "视频播放被终止",
				"A network error caused the media download to fail part-way.": "网络错误导致视频下载中途失败。",
				"The media could not be loaded, either because the server or network failed or because the format is not supported.": "视频因格式不支持或者服务器或网络的问题无法加载。",
				"The media playback was aborted due to a corruption problem or because the media used features your browser did not support.": "由于视频文件损坏或是该视频使用了你的浏览器不支持的功能，播放终止。",
				"No compatible source was found for this media.": "无法找到此视频兼容的源。",
				"The media is encrypted and we do not have the keys to decrypt it.": "视频已加密，无法解密。",
				"Play Video": "播放视频",
				"Close": "关闭",
				"Modal Window": "弹窗",
				"This is a modal window": "这是一个弹窗",
				"This modal can be closed by pressing the Escape key or activating the close button.": "可以按ESC按键或启用关闭按钮来关闭此弹窗。",
				", opens captions settings dialog": ", 开启标题设置弹窗",
				", opens subtitles settings dialog": ", 开启字幕设置弹窗",
				", opens descriptions settings dialog": ", 开启描述设置弹窗",
				", selected": ", 选择",
				"captions settings": "字幕设定",
				"Audio Player": "音频播放器",
				"Video Player": "视频播放器",
				"Replay": "重播",
				"Progress Bar": "进度小节",
				"Volume Level": "音量",
				"subtitles settings": "字幕设定",
				"descriptions settings": "描述设定",
				"Text": "文字",
				"White": "白",
				"Black": "黑",
				"Red": "红",
				"Green": "绿",
				"Blue": "蓝",
				"Yellow": "黄",
				"Magenta": "紫红",
				"Cyan": "青",
				"Background": "背景",
				"Window": "视窗",
				"Transparent": "透明",
				"Semi-Transparent": "半透明",
				"Opaque": "不透明",
				"Font Size": "字体尺寸",
				"Text Edge Style": "字体边缘样式",
				"None": "无",
				"Raised": "浮雕",
				"Depressed": "压低",
				"Uniform": "均匀",
				"Dropshadow": "下阴影",
				"Font Family": "字体库",
				"Proportional Sans-Serif": "比例无细体",
				"Monospace Sans-Serif": "单间隔无细体",
				"Proportional Serif": "比例细体",
				"Monospace Serif": "单间隔细体",
				"Casual": "舒适",
				"Script": "手写体",
				"Small Caps": "小型大写字体",
				"Reset": "重启",
				"restore all settings to the default values": "恢复全部设定至预设值",
				"Done": "完成",
				"Caption Settings Dialog": "字幕设定视窗",
				"Beginning of dialog window. Escape will cancel and close the window.": "开始对话视窗。离开会取消及关闭视窗",
				"End of dialog window.": "结束对话视窗"
			});

			
			

			// $(function(){
			// 	//实现 章节鼠标焦点 动态效果 
			// 	$('.chapter li').hover(function(){
			// 		$(this).find('.icon-video').css('color','#FFF');
			// 	},function(){
			// 		$(this).find('.icon-video').css('color','#777');
			// 	});

			// 	$('.js-open').click(function(){
			// 		var display = $(this).parent().find('ul').css('display');
			// 		if(display == 'none'){
			// 			$(this).parent().find('ul').css('display','block');
			// 			$(this).find('.drop-down').html('▼');
			// 		}else{
			// 			$(this).parent().find('ul').css('display','none');
			// 			$(this).find('.drop-down').html('▲');
			// 		}
			// 	});

			// if (SHIRO_LOGIN) {
			// 	//判断是否已经收藏
			// 	var courseId = 18
			// 	if (courseId) {
			// 		var url = '/collections/isCollection.html';
			// 		doCollect(courseId, url);
			// 	}
			// 	//判断是否已经关注教师 
			// 	var followId = 1;
			// 	if (followId) {
			// 		var url = '/follow/isFollow.html';
			// 		doFollow(followId, url);
			// 	}
			// }

			// });

			/**
			 *展示tab commentQA
			 **/
			function showTab(el, divId, type) {
				$('.course-menu').find('span').each(function(i, item) {
					$(item).removeClass('cur');
				});
				$(el).addClass('cur');
				if (divId == 'courseDetail') {
					$('#courseDetail').show();
					$('#courseSection').hide();
					$('#comment').hide();
					$('#courseQA').hide();
				} else if (divId == 'courseSection') {
					$('#courseSection').show();
					$('#courseDetail').hide();
					$('#comment').hide();
					$('#courseQA').hide();
					//$('#commentQA').hide();
				} else if (divId == 'comment') {
					$('#comment').show();
					$('#courseSection').hide();
					$('#courseDetail').hide();
					$('#courseQA').hide()
					//$('#commentQA').show();
					//$('#courseSection').hide();
					//_queryPage(1,type);//默认加载 第 1 页
				} else {
					$('#courseQA').show();
					$('#comment').hide();
					$('#courseSection').hide();
					$('#courseDetail').hide();
				}
			}

			/**
			 *加载 课程评论 & 问答 
			 * courseId：课程id
			 * sectionId: 章节id
			 * type : 类型 0-评论；1-答疑 
			 */
			var _type = 0; //全局变量 
			function _queryPage(pageNum, type) {
				if (type == undefined)
					type = _type;
				else
					_type = type;
				//加载评论或者QA
				if (pageNum == undefined)
					pageNum = 1;
				var courseId = 18; //课程id
				var url = '/courseComment/segment.html';
				$("#commentQA").load(
					url, {
						'courseId': courseId,
						'type': type,
						'pageNum': pageNum
					},
					function() {}
				);
			};

			//收藏 
			function doCollect(courseId, url) {
				if (url == undefined) {
					url = '/collections/doCollection.html';
				}
				//处理收藏 
				$.ajax({
					url: url,
					type: 'POST',
					dataType: 'json',
					data: {
						"courseId": courseId
					},
					success: function(resp) {
						if (resp.errcode == 1) { //已收藏 
							$('#collectionSpan').attr('class', 'followed');
						} else if (resp.errcode == 0) { //未收藏  
							$('#collectionSpan').attr('class', 'following');
						}
					}
				});
			}

			//关注 
			function doFollow(followId, url) {
				if (url == undefined) {
					url = '/follow/doFollow.html';
				}
				$.ajax({
					url: url,
					type: 'POST',
					dataType: 'json',
					data: {
						"followId": followId
					},
					success: function(resp) {
						if (resp.errcode == 1) {
							$('#followSpan').html('已关注');
						} else if (resp.errcode == 0) {
							$('#followSpan').html('+关注');
						}
					}
				});
			}
		</script>

</body>
</html>
