<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<link href="${APP_PATH }/css/video-js.min.css" rel="stylesheet">
		<link href="${APP_PATH }/css/course.css" rel="stylesheet"/>
<body>


		<div class="main-container">
			<div class="main-left">
				<div class="video-player-container" style="height: 432.64px; pointer-events: auto;">
					<video id="my-video" class="video-js" controls preload="auto" width="820" height="400" poster="${APP_PATH }/img/m.jpg" data-setup="{}">
						<source src="http://vjs.zencdn.net/v/oceans.mp4" type="video/mp4">
						<source src="http://vjs.zencdn.net/v/oceans.webm" type="video/webm">
						<source src="http://vjs.zencdn.net/v/oceans.ogv" type="video/ogg">
						<p class="vjs-no-js"> To view this video please enable JavaScript, and consider upgrading to a web browser that
							<a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a> </p>
					</video>
				</div>

				<div class="course-info">
					<!-- <div class="commenter-avatar" style="background-image:url(https://ossimg.xinli001.com/20200317/5e299e35eb234b31dbdd84aa51dd0755.jpg)">

					</div> -->

					<div class="course-title">标题</div>
					<div class="course-desc">课程简要描述</div>
					<div class="static-item">
						<div>
							<span class="tag">音频</span>
							<span class="join-number">44人参加</span>
						</div>
						<div>
							<span class="course-pay">199元</span>
							<a><span class="pay-btn">购买</span></a>
						</div>
					</div>

					<div class="course-menu">
						<a href="javascript:void(0)">
							<span onclick="showTab(this,'courseDetail')" class="menu-item cur">课程详情</span>
						</a>
						<a href="javascript:void(0)">
							<span onclick="showTab(this,'courseSection')" class="menu-item">章节</span>
						</a>
						<a href="javascript:void(0)">
							<span onclick="showTab(this,'comment',0)" class="menu-item">评论</span>
						</a>
						<a href="javascript:void(0)">
							<span onclick="showTab(this,'courseQA',1)" class="menu-item">问答</span>
						</a>
					</div>

				</div>

				<div id="courseDetail">
					课程详情介绍
				</div>

				<!-- 课程目录 -->
				<div id="courseSection">
					<div class="course-item">

						<div class="course-item-hd">
							<span>章标题测试</span>
						</div>

						<div class="course-item-bd">

							<!-- 第一节 -->
							<div class="course-section-item">
								<p class="title">这是节标题</p>

								<!-- 音频时长 -->
								<p class="time"><i>7'26''</i></p>

								<span class="right-control try">
									<em>试听</em>
								</span>

							</div>

							<!-- 第二节 -->
							<div class="course-section-item">
								<p class="title">这是节标题</p>

								<!-- 音频时长 -->
								<p class="time"><i>7'26''</i></p>

								<span class="right-control lock">
									待解锁
								</span>

							</div>

						</div>

					</div>
				</div>

				<!-- 课程评论列表 -->
				<div class="comment" id="comment">
					<div class="comment-introduce">
						<a href="#" class="go-comment-btn">我要留言</a>
					</div>

					<!-- 评论列表 -->
					<ul class="comment-list">
						<li class="comment-item">
							<div class="avatar-wrap">
								<!-- 用户头像 -->
								<div class="commenter-avatar" style="background-image:url()"></div>
							</div>
							<div class="comment-infos">
								<div class="commenter-wrap">

									<!-- 名字 -->
									<div class="commenter-name">
										五年
									</div>
									<!-- 已经赞 加类名liked -->
									<div onclick="like(this)" class="like-action " data-comment-id="10752">
										<div class="like-num">118</div>
										<div class="like-icon">赞</div>
									</div>
								</div>
								<p class="comment-text">我要走出来，一定要走出来</p>
								<p class="comment-time">2018-11-22</p>

							</div>
						</li>
					</ul>
				</div>

				<div id="courseQA">
					课程常见问题问答
				</div>

			</div>

			<div class="main-right">
				<div class="lecturer-item" style="width: 100%;">
					<img class="lecturer-uimg" src="#">
					<h2 class="lecturer-name">王阳明</h2>
					<p class="lecturer-title">北京心理危机研究与干预中心、北京回龙观医院心理科副主任<br>医师、副教授
						<br>中华医学会、中国医师协会会员
						中国心理学会、中国心理卫生协会会员<br></p>
					<!-- <a href="javascript:void(0)" onclick="doFollow('1');">
									<span id="followSpan" class="follow-btn">
									关注+
									</span>
									</a> -->
				</div>

				<div>
					<h4 style="font-size: 18px;margin-top: 10px; margin-bottom: 10px;">推荐课程</h4>
					<a href="" target="" class="">
						<span class="ellipsis">
							推荐课程1
						</span>
					</a>
					<a href="" target="" class="">
						<span class="ellipsis">
							推荐课程2
						</span>
					</a>
					<a href="" target="" class="">
						<span class="ellipsis">
							推荐课程3
						</span>
					</a>
				</div>

			</div>
		</div>
		<script src="${APP_PATH }/js/video.min.js"></script>
		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<script type="text/javascript">
			$(function(){
				$('#courseDetail').show();
				$('#courseSection').hide();
				$('#comment').hide();
				$('#courseQA').hide();
			});
			
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






			var myPlayer = videojs('my-video');
			videojs("my-video").ready(function() {
				var myPlayer = this;
				myPlayer.play();
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
