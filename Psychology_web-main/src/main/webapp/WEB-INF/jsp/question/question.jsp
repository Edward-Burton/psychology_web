<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#main {
	width: 1180px;
	margin: 0 auto;
	padding-top: 40px;
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

#left .content .text {
	margin: 15px 0 10px 50px;
	font-size: 14px;
	line-height: 22px;
	color: #333;
	width: 656px;
	word-wrap: break-word;
	overflow: hidden;
}

#left .content .label {
	margin-left: 50px;
	list-style-type: none;
}

#answer-text {
	position: relative;
	display: none;
}

#left.editor {
	height: auto !important;
	border-radius: 10px;
	overflow: hidden;
}

#left .comment-reply div {
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	cursor: pointer;
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

#left .agree {
	position: absolute;
	bottom: 20px;
	right: 0;
}

#left .content-ans li {
	position: relative;
	margin-bottom: 20px;
	padding: 30px;
	background-color: #fff;
	border-radius: 10px;
}

#left .content-ans .user img {
	width: 30px;
	height: 30px;
	border-radius: 50%;
	float: left;
	margin-right: 20px;
}

#left .recommend-content {
	width: 760px;
	background-color: #fff;
	border-radius: 10px;
	padding: 30px 20px 0;
}

#left.recommend-content .similar-question, .other-recommend {
	font-size: 20px;
	line-height: 20px;
	color: #333;
	margin-bottom: 20px;
	font-weight: 700;
}

#left.recommend-content .ques li strong {
	display: inline-block;
	margin: 0 8px 10px 0;
	width: 42px;
	height: 16px;
	background-color: #75bdff;
	border-radius: 100px;
	font-size: 14px;
	color: #fff;
	line-height: 16px;
	text-align: center;
}

#left .recommend-content .ques li .ans-amount span {
	display: inline-block;
	font-size: 14px;
	color: #999;
	line-height: 14px;
	margin-top: 10px;
	font-weight: 400;
	padding-right: 5px;
}
</style>
<link href="${APP_PATH }/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css"
	rel="stylesheet">
</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
	</div>
	<div id="main">
		<div id="left">
			<div class="content">
				<p class="title">

					<a target="_blank" class="common-a" href="javascript:void(0);">
						<img src="//lapp.xinli001.com/images/website-mobile/unname.png">
					</a> <span>${question.user_question_title }</span> <strong>
						${answerCount}个回答</strong>
				</p>
				<p class="text">${question.user_question_content }</p>
				<ul class="label detail-tag">
					<a class=" " href="#"><li>标签</li></a>
				</ul>
			</div>
			<div class="comment-reply">
				<div class="collect" data-question-id="100594982">
					<img src="//lapp.xinli001.com/images/website-www/v5/uncollect.png">

					<p>
						<span>收藏问题</span> <a><font>0</font> 个收藏</a>
					</p>
				</div>
				<div class="reply">
					<img
						src="//lapp.xinli001.com/images/website-www/v5/answer-click.png">
					<p>
						<span>我来回答</span> <a>${answerCount}个回答</a>
					</p>
				</div>
			</div>

			<div id="answer-text" data-question-id="100594078"
				style="display: none;">
				<div id="editor" >
				<textarea id="summernote" name="editordata" placeholder="编辑"></textarea>
				</div>
				<%-- <div id="editor" class="editor edui-yixinli"
					style="font-family: yxl-iconfont;">
					<div id="edui1" class="edui-editor  edui-yixinli"
						style="width: 800px; z-index: 999; font-family: yxl-iconfont;">
						<div id="edui1_toolbarbox"
							class="edui-editor-toolbarbox edui-yixinli" style="">
							<div id="edui1_toolbarboxouter"
								class="edui-editor-toolbarboxouter edui-yixinli"
								style="font-family: yxl-iconfont;">
								<div class="edui-editor-toolbarboxinner edui-yixinli"
									style="font-family: yxl-iconfont;">
									<div id="edui2" class="edui-toolbar   edui-yixinli"
										onselectstart="return false;"
										onmousedown="return $EDITORUI[&quot;edui2&quot;]._onMouseDown(event, this);"
										style="user-select: none; font-family: yxl-iconfont;">
										<div id="edui3"
											class="edui-box edui-button edui-for-bold edui-yixinli"
											style="font-family: yxl-iconfont;">
											<div id="edui3_state"
												onmousedown="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseDown(event, this);"
												onmouseup="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseUp(event, this);"
												onmouseover="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseOver(event, this);"
												onmouseout="$EDITORUI[&quot;edui3&quot;].Stateful_onMouseOut(event, this);"
												class="edui-yixinli" style="font-family: yxl-iconfont;">
												<div class="edui-button-wrap edui-yixinli"
													style="font-family: yxl-iconfont;">
													<div id="edui3_body" unselectable="on" title="加粗"
														class="edui-button-body edui-yixinli"
														onmousedown="return $EDITORUI[&quot;edui3&quot;]._onMouseDown(event, this);"
														onclick="return $EDITORUI[&quot;edui3&quot;]._onClick(event, this);"
														style="font-family: yxl-iconfont;">
														<div class="edui-box edui-icon edui-yixinli"
															style="font-family: yxl-iconfont;"></div>
													</div>
												</div>
											</div>
										</div>
										<div id="edui4"
											class="edui-box edui-button edui-for-underline edui-yixinli"
											style="font-family: yxl-iconfont;">
											<div id="edui4_state"
												onmousedown="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseDown(event, this);"
												onmouseup="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseUp(event, this);"
												onmouseover="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseOver(event, this);"
												onmouseout="$EDITORUI[&quot;edui4&quot;].Stateful_onMouseOut(event, this);"
												class="edui-yixinli" style="font-family: yxl-iconfont;">
												<div class="edui-button-wrap edui-yixinli"
													style="font-family: yxl-iconfont;">
													<div id="edui4_body" unselectable="on" title="下划线"
														class="edui-button-body edui-yixinli"
														onmousedown="return $EDITORUI[&quot;edui4&quot;]._onMouseDown(event, this);"
														onclick="return $EDITORUI[&quot;edui4&quot;]._onClick(event, this);"
														style="font-family: yxl-iconfont;">
														<div class="edui-box edui-icon edui-yixinli"
															style="font-family: yxl-iconfont;"></div>
													</div>
												</div>
											</div>
										</div>
										<div id="edui5"
											class="edui-box edui-button edui-for-horizontal edui-yixinli"
											style="font-family: yxl-iconfont;">
											<div id="edui5_state"
												onmousedown="$EDITORUI[&quot;edui5&quot;].Stateful_onMouseDown(event, this);"
												onmouseup="$EDITORUI[&quot;edui5&quot;].Stateful_onMouseUp(event, this);"
												onmouseover="$EDITORUI[&quot;edui5&quot;].Stateful_onMouseOver(event, this);"
												onmouseout="$EDITORUI[&quot;edui5&quot;].Stateful_onMouseOut(event, this);"
												class="edui-yixinli" style="font-family: yxl-iconfont;">
												<div class="edui-button-wrap edui-yixinli"
													style="font-family: yxl-iconfont;">
													<div id="edui5_body" unselectable="on" title="分隔线"
														class="edui-button-body edui-yixinli"
														onmousedown="return $EDITORUI[&quot;edui5&quot;]._onMouseDown(event, this);"
														onclick="return $EDITORUI[&quot;edui5&quot;]._onClick(event, this);"
														style="font-family: yxl-iconfont;">
														<div class="edui-box edui-icon edui-yixinli"
															style="font-family: yxl-iconfont;"></div>
													</div>
												</div>
											</div>
										</div>
										<div id="edui6"
											class="edui-box edui-combox edui-for-quote edui-yixinli"
											style="font-family: yxl-iconfont;">
											<div id="edui6_state"
												onmousedown="$EDITORUI[&quot;edui6&quot;].Stateful_onMouseDown(event, this);"
												onmouseup="$EDITORUI[&quot;edui6&quot;].Stateful_onMouseUp(event, this);"
												onmouseover="$EDITORUI[&quot;edui6&quot;].Stateful_onMouseOver(event, this);"
												onmouseout="$EDITORUI[&quot;edui6&quot;].Stateful_onMouseOut(event, this);"
												class="edui-yixinli" style="font-family: yxl-iconfont;">
												<div class="edui-combox-body edui-yixinli"
													style="font-family: yxl-iconfont;">
													<div id="edui6_button_body"
														class="edui-box edui-button-body edui-yixinli"
														onclick="$EDITORUI[&quot;edui6&quot;]._onButtonClick(event, this);"
														style="font-family: yxl-iconfont;"></div>
													<div class="edui-box edui-splitborder edui-yixinli"
														style="font-family: yxl-iconfont;"></div>
													<div class="edui-box edui-arrow edui-yixinli"
														onclick="$EDITORUI[&quot;edui6&quot;]._onArrowClick();"
														style="font-family: yxl-iconfont;"></div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div id="edui1_toolbarmsg"
								class="edui-editor-toolbarmsg edui-yixinli"
								style="display: none; font-family: yxl-iconfont;">
								<div id="edui1_upload_dialog"
									class="edui-editor-toolbarmsg-upload edui-yixinli"
									onclick="$EDITORUI[&quot;edui1&quot;].showWordImageDialog();"
									style="font-family: yxl-iconfont;">点击上传</div>
								<div class="edui-editor-toolbarmsg-close edui-yixinli"
									onclick="$EDITORUI[&quot;edui1&quot;].hideToolbarMsg();"
									style="font-family: yxl-iconfont;">x</div>
								<div id="edui1_toolbarmsg_label"
									class="edui-editor-toolbarmsg-label edui-yixinli"
									style="font-family: yxl-iconfont;"></div>
								<div
									style="height: 0px; overflow: hidden; clear: both; font-family: yxl-iconfont;"
									class="edui-yixinli"></div>
							</div>
							<div id="edui1_message_holder"
								class="edui-editor-messageholder edui-yixinli"
								style="top: 3px; z-index: 1000; font-family: yxl-iconfont;"></div>
						</div>
						<div id="edui1_iframeholder"
							class="edui-editor-iframeholder edui-yixinli"
							style="width: 800px; height: 318px; z-index: 999; overflow: hidden; font-family: yxl-iconfont;">
							<iframe id="ueditor_0" width="100%" height="100%" frameborder="0"
								src="javascript:void(function(){document.open();document.write(&quot;<!DOCTYPE html><html xmlns='http://www.w3.org/1999/xhtml' class='view' ><head><style type='text/css'>.view{padding:0;word-wrap:break-word;cursor:text;height:90%;}
body{margin:8px;font-family:sans-serif;font-size:16px;}p{margin:5px 0;}</style><link rel='stylesheet' type='text/css' href='//static.xinli001.com/fe-app/style/theme-yixinli.css'/></head><body class='view' ></body><script type='text/javascript'  id='_initialScript'>setTimeout(function(){editor = window.parent.UE.instants['ueditorInstant0'];editor._setup(document);},0);var _tmpScript = document.getElementById('_initialScript');_tmpScript.parentNode.removeChild(_tmpScript);</script></html>&quot;);document.close();}())"></iframe>
						</div>
						<div id="edui1_bottombar"
							class="edui-editor-bottomContainer edui-yixinli"
							style="font-family: yxl-iconfont;">
							<table class="edui-yixinli" style="font-family: yxl-iconfont;">
								<tbody class="edui-yixinli" style="font-family: yxl-iconfont;">
									<tr class="edui-yixinli" style="font-family: yxl-iconfont;">
										<td id="edui1_elementpath"
											class="edui-editor-bottombar edui-yixinli"
											style="font-family: yxl-iconfont;"></td>
										<td id="edui1_wordcount"
											class="edui-editor-wordcount edui-yixinli"
											style="display: none; font-family: yxl-iconfont;">当前已输入0个字符,
											您还可以输入50000个字符。</td>
										<td id="edui1_scale" class="edui-editor-scale edui-yixinli"
											style="display: none; font-family: yxl-iconfont;"><div
												class="edui-editor-icon edui-yixinli"
												style="font-family: yxl-iconfont;"></div></td>
									</tr>
								</tbody>
							</table>
						</div>
						<div id="edui1_scalelayer" class="edui-yixinli"
							style="font-family: yxl-iconfont;"></div>
					</div>
				</div> --%>
				<button class="answer-buttom">提交回答</button>
				<div class="agree">
					<input type="checkbox"><a
						href="http://www.xinli001.com/info/100389535">同意《社区问答规范》</a>
				</div>
			</div>
			<!-- <ul class="content-ans">
				<li>评论1</li>
				<li>
					<p class="user">
						<a target="_blank" class="common-a"
							href="https://www.xinli001.com/user/1006191927"> <img
							src="http://pic2.zhimg.com/50/v2-fb824dbb6578831f7b5d92accdae753a_hd.jpg">
						</a> <span class="username">时光半暖</span> <span
							class="honor-icon honor-icon-3"></span>


					</p>
					<div class="text"></div>
					<div class="label">
						<span class="follow" data-user-id="1006191927"> <img
							src="//lapp.xinli001.com/images/website-www/v5/unfollow.png">
							<a>关注</a>
						</span> <span style="color: #FFB214; font-size: 14px"
							data-userid="1006191927" data-objectid="5710093"
							data-objectname="qa.reward"> <img class="rewardBtn"
							src="data:image/png;base64,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"
							alt="打赏图标">
						</span> <span class="answer_zan" data-answer-id="5710093"> <img
							class="img-control is_zan xinli-hide"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAASCAYAAAC5DOVpAAAAAXNSR0IArs4c6QAAAQRJREFUOBGtVLtuwkAQnDVGKOLRAGlSpueP4A8iJEhEhURBZyvKDyQfkn8IP4BES4eIAAkJxZu5g+58Robb4nyenRmtd1cWXIlWqv0/xRdpsQhW+1d59kkiX8LgnU9tZkDKa2x5iq59eo4zyZM8bjBR4NGTdmBvZe13fVLByFEUAF6zY4Y5FA8FWieVa1b/0B6NBg77CpBrhhMS6vJzBYbSSHWnisbhjYNn1BO+lQwq51yZaWSMSmodOgdVNWDpT3GcCEiGRTCzSg0/QczY6N/tC1ZBzCBYiIgd2t09Y2W2X0Eq44/A9iuIWRQHqozLuh8PsTRVmYjYwPX5etP5PRNu2SX+AXnZOUZEe1GrAAAAAElFTkSuQmCC">
							<img class="img-control not_zan xinli-show"
							src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABMAAAASCAYAAAC5DOVpAAAAAXNSR0IArs4c6QAAAP1JREFUOBGtk70OAUEQx//DKSSUNEqtCC0h8fEaPIRGpdPxDB5EXHNE51yikUi0aqGRYM1uIlHsrhw7yW325uOXmf9kCV/MX0Y9CDETgAeiY7dRKZpKEqaA9K9W+yxDpgrE/wTkbPlW2E3chtxV3gb4jBlh/joqAM/BZ/K3u2dMuGPM46WNcU1A29ki2JUFoa/Jt7q0MMJjwlppYzYa+UF0ERCZbrPKywIWwZani2dENO40KqOEBMUr1WanpDf2KDoUEUJnMEHJjSvYuV0rHZ3AWPyQP7U0F5opvZx0xs9f6eUE9t7k3zACXVv18kGCpEnNTur2y0GYs/jPd+kLZRQ8AUM8Kk4AAAAASUVORK5CYII=">
							<span class="like-light"></span> <a>有用 <font>0</font></a>
						</span> <span class="comment_item" data-answer-id="5710093"> <img
							src="//lapp.xinli001.com/images/website-www/v5/comment.png">
							<a>评论 <font class="comment_num">0</font></a>
						</span>

						<p class="created_time">34分钟前</p>


						<p class="report_reply" data-answer-id="5710093">举报</p>

						<a target="_blank" class="jumpA"
							href="https://m.xinli001.com/qa/answer-5710093">详情</a>
					</div>
					<div class="discuss" style="display: none;">
						<span><font class="comment_num">0</font>条评论</span>
						<div class="comment-list"></div>

						<div class="import" data-answer-id="5710093" reply-user-id="">
							<input type="text" class="replybox" placeholder="回复评论"
								name="comment">
							<button class="btn-comment">评论</button>
						</div>
					</div>

				</li>
			</ul> -->
			<!-- <div class="recommend-content">
				<p class="similar-question">相似问题</p>
				<ul class="ques">
					<a target="_blank" href="https://www.xinli001.com/qa/100571275">
						<li style=""><span> <strong>精华</strong>
								娃不到5岁，育儿焦虑，夫妻常达不成一致，怎么沟通？
						</span>
							<p class="ans-amount">
								<span>回答 9</span> <span>有用 27</span>
							</p></li>
					</a>
					<a target="_blank" href="https://www.xinli001.com/qa/100572766">
						<li style="float: right"><span> <strong>精华</strong>
								因为私欲伤害了朋友，内疚自责不知道怎么原谅自己？
						</span>
							<p class="ans-amount">
								<span>回答 17</span> <span>有用 50</span>
							</p></li>
					</a>
				</ul>



			</div> -->
		</div>
	</div>


	<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
	<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>
	<script src="${APP_PATH }/jquery/jquery-form/jquery-form.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script>
	<script type="text/javascript">
		$(function() {
			queryQuestionAnswer();
		});
		
		$(".comment-reply .reply").click(function(t) {
            if (!window.replyStatus) {
              if (
                (window.firstTriggerEdit &&
                  (e(""), (window.firstTriggerEdit = !1)),
                window.editReply)
              ) {
                $("#answer-text")
                  .hide()
                  .css({
                    "margin-top": "0",
                    border: "none",
                    background: "transparent",
                    "border-radius": "0"
                  })
                  .insertAfter($(".comment-reply")),
                  e(""),
                  (window.editReplyId = "0"),
                  (window.editReply = !1);
              }
              $("#answer-text").toggle(500),
                window.yxl.stat.send({
                  name: " 问答-详情页「工具栏」点击",
                  properties: { 分类: "我来回答" }
                });
              $("#summernote").summernote({
    		        placeholder: 'Hello Bootstrap 4',
    		        tabsize: 2,
    		        height: 100,
    		        focus:true
    		      });
            }
            
          }),
          
		$(".answer-buttom").click(function(){
			var questionId=${question.user_question_id};
			var answerdata = $("#summernote").val();
			alert(answerdata);
			$.ajax({
				type : "POST",
				data : {
					"question_id":questionId,
					"question_answer_content":answerdata,
			},
				url : "${APP_PATH}/question/doAddAnswer.do",
				beforeSend : function() {
					alert("添加中...")
					return true;
				},
				success : function(result) {
					alert(result.message);
					queryQuestionAnswer();
				},
				error : function() {
				},

			});
		})
		
		function queryQuestionAnswer(){
			var questionId=${question.user_question_id};
			alert(questionId);
			$.ajax({
				type : "GET",
				data : {
					"questionId":questionId,
			},
				url : "${APP_PATH}/question/doQuestionAnswer.do",
				beforeSend : function() {
					alert("查询中...")
					return true;
				},
				success : function(result) {
					alert(result.message);
					var data = result.page.data;
					
					$.each(data,function(i,answer){
						alert(answer.question_answer_content+"\n"+answer.answerUser.psychouser_name);
					})
				},
				error : function() {
				},

			});
		}
		
	</script>
</body>
</html>