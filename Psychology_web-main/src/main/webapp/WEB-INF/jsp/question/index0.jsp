<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>问答</title>
<style type="text/css">
element.style {
	font-size: 12px;
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
}

#left .ans-bar, .ans-emo {
	background-color: #fff;
	border-radius: 8px;
	padding: 0 20px 0 0;
	height: 80px;
	line-height: 80px;
	margin-bottom: 20px;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
}

.ans-barl {
	float: left;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	width: 520px;
	margin-right: 15px;
}

#left .ans-bar p {
	width: 130px;
	-webkit-box-flex: 1;
	-ms-flex: 1;
	flex: 1;
	display: inline-block;
}

.ans-bar a {
	float: right;
	font-size: 16px;
	color: #69b8ff;
}

#left .content {
	list-style-type: none;
}

#left .content li {
	margin-bottom: 20px;
	padding: 30px 30px 25px;
	background-color: #fff;
	border-radius: 10px;
}

#left .content li img {
	width: 30px;
	height: 30px;
	border-radius: 50%;
	float: left;
	margin-right: 20px;
}

#left .content li span {
	font-size: 20px;
	color: #333;
	font-weight: 700;
}

.common-a, .common-a:hover {
	text-decoration: none;
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

#left .content li .label {
	margin-left: 50px;
}

#left .content li .label span {
	margin-right: 30px;
	font-size: 14px;
	line-height: 14px;
	color: #999;
	font-weight: 400;
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
}

#left .content li .title strong {
	padding: 7px 17px;
	float: right;
	background-color: #0b8bff;
	border-radius: 8px;
	font-size: 14px;
	line-height: 14px;
	color: #fff;
	font-weight: 400;
}

#left .page {
	text-align: center;
	margin-top: 40px;
	margin-bottom: 50px;
}

.contain {
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	margin-bottom: 50px;
}
</style>
<link rel="stylesheet"
	href="${APP_PATH }/bootstrap/css/bootstrap.min.css">
</head>
<body>
	<div class="main" id="main">
		<div class="left" id="left">
			<div class="ans-bar">

				<div class="ans-barl" id="ans-barl">
					<p attr-id="answer">
						<a class="common-a"
							onclick="queryAnswers()">
							<span
							class="yxl-icon yxl-font-icon-recommend-answer icon-default"></span>
							<span class="">推荐答案</span>
						</a>
					</p>
					<p attr-id="remque">
						<%-- <a class="common-a" href="${APP_PATH}/question/doIndex.htm">  --%>
						<a class="common-a" onclick="queryQuestions()">
						<span
							class="yxl-icon yxl-font-icon-recommend-question icon-default"></span>
							<span class="">推荐问题</span>
						</a>
					</p>
					<p attr-id="newque">
						<a class="common-a"
							href="https://www.xinli001.com/qa?type=question&amp;object_name=last&amp;from=shouye-dh">
							<span class="yxl-icon yxl-font-icon-new-question icon-selected"></span>

							<span class="select-color-f">最新问题</span>
						</a>
					</p>

					<p attr-id="essence">
						<a class="common-a"
							href="https://www.xinli001.com/qa?type=question&amp;object_name=cream&amp;from=shouye-dh">
							<span class="yxl-icon yxl-font-icon-threeity icon-default"></span>
							<span class="">30天精华</span>
						</a>
					</p>
				</div>
				<!--  <a href="https://m.xinli001.com/qa/get-reward-question-list" class="common-a">
        <div class="reward-area">
            <span class="icon-cirle icon yxlicon icon-xuanshangzhuanqu"></span>
            <span class="title">悬赏专区</span>
        </div>
    </a> -->
				<!--  <a class="qingsu-click" href="">即时倾诉，倾听你的故事 ></a> -->
			</div>

			<div class="show-info">

				<ul class="content">
					
				</ul>

				<div class="page">
					<nav>
						<ul class="pagination">
							<!-- <li><a href="#" aria-label="Previous"> <span
									aria-hidden="true">&laquo;</span>
							</a></li>
							<li><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#" aria-label="Next"> <span
									aria-hidden="true">&raquo;</span>
							</a></li> -->
						</ul>
					</nav>
				</div>
			</div>
		</div>
		<div id="right">
			<div id="up">
				<div class="contain">
					<p class="star">
						<a href="#">0</a> <span>获赞数</span>
					</p>
					<p class="ans">
						<a href="#">0</a> <span>回答数</span>
					</p>
					<p class="ques">
						<a href="#">0</a> <span>提问数</span>
					</p>
				</div>
				<div class="btn">
					<a href="${APP_PATH}/question/toAdd.htm">
						<button class="ques-b">我要提问</button>
					</a> <a
						href="https://static.xinli001.com/msite/index.html#/my-question">
						<button class="ans-b">我的问答</button>
					</a>

				</div>
			</div>
		</div>
	</div>
	<script src="${APP_PATH}/jquery/jquery-2.1.1.min.js"></script>
	<script src="${APP_PATH}/bootstrap/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		/* $(documnt).ready(function(){
		 queryQuestion()
		 }) */

		/* jQuery(document).ready(function(){
		 window.alert("执行了jquery");
		 }); */

		$(function() {
			queryQuestions();
			//queryAnswers()
		});

		function pageChange(pageno) {
			//window.location.href="${APP_PATH}/article/index.do?pageno="+pageno ;
			//queryQuestions(pageno);
			queryAnswers(pageno)
		};

		jsonPage = {
			"pageno" : 1,
			"pagesize" : 10
		}
		
		function queryAnswers(pageno){
			jsonPage.pageno = pageno;
			$
					.ajax({
						type : "GET",
						data : jsonPage,
						url : "${APP_PATH}/question/doAnswerIndex.do",
						beforeSend : function() {
							alert("查询中...")
							return true;
						},
						success : function(result) {
							if (result.success) {
								alert(result.message);
								var page = result.page;
								var answers = page.data;
								var content = '';

								$.each(answers, function(i, answer) {
									content += '<li>';
		                            content += '<p class="user">';
		                            content += '<a target="_blank" class="common-a" href="https://www.xinli001.com/user/1007619904">';
		                            content += '<img src="'+answer.answerUser.psychouser_head_portrait+'"></a>';
		                            content += '<span class="username">'+answer.answerUser.psychouser_name+'</span><span class="honor-icon honor-icon-3"></span>';
		                            content += '<a class="answers" target="_blank" href="/qa/100593421?from=shouye"><strong>去回答</strong></a></p>';
		                            content += '</a><a>'+answer.question_answer_pultime+'回答了：</a>';
		                            content += '<a class="common-a" target="_blank" href="/qa/100593421?from=shouye">';
		                            content += '<span>'+answer.question.user_question_title+'</span>';
		                            content += '</a></p><div class="ellipsis"><div class="ellipsis-container">';
                                    content += '<a class="common-a" target="_blank" href="/qa/100593421?from=shouye">';
                                    content += '<div class="ellipsis-content">'+answer.question_answer_content+'</div></a>';
                                    content += '<div class="ellipsis-ghost">';
                                    content += '<div class="ellipsis-placeholder"></div>';
                                    content += '<div class="ellipsis-more">';
                                    content += '<a class="click-more" target="_blank" href="/qa/100593421?from=shouye">点击看更多</a></div></div></div>';
		                            content += '</div></li>';
								});
								/* alert(content); */
								$(".content").html(content);

								//分页部分局部刷新
								var contentPagebar = '';
								//使用JS中的做判断操作

								if (page.pageno == 1) {
									contentPagebar += '<li class="disabled"><a href="#">上一页</a></li>';
									//因内部要使用双引号，JS要拼串都用单引号拼串
								} else {
									contentPagebar += '<li><a href="#" onclick="pageChange('
											+ (page.pageno - 1)
											+ ')">上一页</a></li>';
								}

								for (var i = 1; i <= page.totalno; i++) {
									contentPagebar += '<li';
									if (page.pageno == i) {
										contentPagebar += ' class="active"';//注意此处有空格
									}
									contentPagebar += '><a href="#" onclick="pageChange('
											+ i + ')">' + i + '</a></li>';
								}

								if (page.pageno == page.totalno) {
									contentPagebar += '<li class=disabled><a href="#">下一页</a></li>';
								} else {
									contentPagebar += '<li><a href="#" onclick="pageChange('
											+ (page.pageno + 1)
											+ ')">下一页</a></li>';
								}

								$(".pagination").html(contentPagebar);

							} else {
								alert(result.message);
							}

						},
						error : function() {

						}
					});
		}
		
		function queryQuestions(pageno) {
			jsonPage.pageno = pageno;
			$
					.ajax({
						type : "GET",
						data : jsonPage,
						url : "${APP_PATH}/question/doIndex.do",
						beforeSend : function() {
							alert("查询中...")
							return true;
						},
						success : function(result) {
							if (result.success) {
								alert(result.message);
								var page = result.page;
								var questions = page.data;
								var content = '';

								$.each(questions, function(i, question) {
									content += '<li>';
									content += '<p class="title">';
									content += '<a class="common-a"><img src="https://lapp.xinli001.com/images/yiapp/v4.8/incognito.png"></a>';
									content += '<a class="common-a" target="_blank" href="${APP_PATH}/question/toQuestion.htm?id='+question.user_question_id+'"><span>';
									content += question.user_question_title;
									content += '</span></a>';
									content += '<a target="_blank" href="${APP_PATH}/question/toQuestion.htm?id='+question.user_question_id+'"> <strong>去回答</strong></a>';
									content += '</p> <a class="common-a" href="${APP_PATH}/question/toQuestion.htm?id='+question.user_question_id+'"><p class="text">';
									content += question.user_question_content;
									content += '</p></a>';
									content += '<p class="label">';
									content += '<span>';
									content += '回答 2 · 有用 0   '+question.user_question_pultime;
									content += '</span></p></li>';

								});
								/* alert(content); */
								$(".content").html(content);

								//分页部分局部刷新
								var contentPagebar = '';
								//使用JS中的做判断操作

								if (page.pageno == 1) {
									contentPagebar += '<li class="disabled"><a href="#">上一页</a></li>';
									//因内部要使用双引号，JS要拼串都用单引号拼串
								} else {
									contentPagebar += '<li><a href="#" onclick="pageChange('
											+ (page.pageno - 1)
											+ ')">上一页</a></li>';
								}

								for (var i = 1; i <= page.totalno; i++) {
									contentPagebar += '<li';
									if (page.pageno == i) {
										contentPagebar += ' class="active"';//注意此处有空格
									}
									contentPagebar += '><a href="#" onclick="pageChange('
											+ i + ')">' + i + '</a></li>';
								}

								if (page.pageno == page.totalno) {
									contentPagebar += '<li class=disabled><a href="#">下一页</a></li>';
								} else {
									contentPagebar += '<li><a href="#" onclick="pageChange('
											+ (page.pageno + 1)
											+ ')">下一页</a></li>';
								}

								$(".pagination").html(contentPagebar);

							} else {
								alert(result.message);
							}

						},
						error : function() {

						}

					});
		}

		
	</script>

</body>
</html>