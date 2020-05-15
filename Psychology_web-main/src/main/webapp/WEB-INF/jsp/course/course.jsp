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
					<source :src="playOptions.source[0].src">
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
				<h6>
					来源：<span style="">伯凡时间</span>（ID：bofanstime）
				</h6>
				<h6>
					文：<span style="">伯凡时间</span>
				</h6>
				<p>
					<br>
				</p>
				<p>人们在出门时通常会进行一番精致的梳洗打扮，穿上得体的衣服，将自己最好的一面展示出来。期望通过在他人面前树立完美形象，获得他人的尊敬与认同。</p>
				<p>
					<br>
				</p>
				<p>
					至于弱点，没有人愿意把它们暴露在别人面前。即使我们知道自己的不足与缺陷，也期望将它悄悄地隐藏起来。一旦暴露，就容易让自己努力营造的形象出现污点，让自己陷入一种不被肯定的形象危机之中。同时<span
						style="">也伴随会产生巨大的不安全感，因为弱点的暴露</span>意味着给了对手攻击自己的机会。
				</p>
				<p>
					<br>
				</p>
				<p>所以一旦弱势或者缺点暴露在他人面前时，人们潜意识中通常的第一反应就是不承认，并且在不确定对方目的的情况下，否定对方提出的不足。</p>
				<p>
					<br>
				</p>
				<p>这样的下意识反应并没有错，但对于一个成年人来说，这种拒不承认的做法稍显滑稽和幼稚，好在这时大多数人的理智可以及时上线，正视自己的不足或通过一些巧妙的方法化解暴露的尴尬，并在日后努力地改正；但也有一些人仍然顽固不化，不仅不愿意承认，还会想方设法地蒙混过关。</p>
				<p>
					<br>
				</p>
				<p>这类人在工作中出了差错的时候，面对老板“昨天提交的报告，格式有瑕疵，关键内容论述不细致！”的批评，他往往会自欺自人地认为这件事情错不在我，而是其它因素导致的，为了证明这一点，他就拼命向老板解释——自己为什么错这么多、生活压力有多大、做事的各种苦恼等等一连串原因。</p>
				<p>
					<br>
				</p>
				<p>可这样做的后果往往会适得其反。这种在自己看来十分诚恳的解释，对于老板来说却是一种绑架，仿佛在要求他不得不原谅你、安慰你。也许之前的错误并不是特别严重，但一味的解释往往会使大家的注意力更加聚焦到这个错误上来，本来能被接受、被原谅的错误，在这种解释中变得格外醒目。</p>
				<p>
					<br>
				</p>
				<p>
					<img
						src="https://ossimg.xinli001.com/20200325/2328c3b9dc98cee8707faf6ca3474583.jpeg?x-oss-process=image/quality,Q_80">
				</p>
				<p>
					<br>
				</p>
				<p>而最简单也最合适的回应，其实就是老老实实说一句：“实在对不起，错误有些多，下次交报告之前一定仔细检查。”
					这种态度是一种真诚而坦荡的应对策略。不仅让老板了解到自己正视了这个问题，也避免了将问题变得更加显眼的错上加错。</p>
				<p>
					<br>
				</p>
				<p>面对自身的缺陷，相比于激进派，还有一种谨小慎微的保守派。他们在遭遇不同意见时，因为害怕被证明自己是错的，宁愿把话往肚子里咽，也不愿当面讲清楚；遇到不明白的事情，宁愿熬夜上网查资料，也不愿当面多问一句，以免让人知道自己的无知。</p>
				<p>
					<br>
				</p>
				<p>最终他们因为自己可能存在的不足，在一次次的退让和躲避中让自己陷入了一种极不自信的境地，在任何事情面前都不敢前进一步。</p>
				<p>
					<br>
				</p>
				<p>然而，一个自认为天生就是失败者的人，能做到什么呢？成功不可能来自于对自己的蔑视，当人们总是担心自己会失败时，潜意识里就会形成这种失败印象，使自己处于失败的态势之中，而这种态势又会增进自己失败的印象，最终形成一种恶性循环。</p>
				<p>
					<br>
				</p>
				<p>从长远看，不论是掩盖弱点，还是逃避弱点，这两种方式都没有真正地解决问题，反而让自己陷入了越来越狼狈的境地。</p>
				<p>
					<br>
				</p>
				<p>人无完人，每个人都有自身的缺陷和弱点。既然掩盖和逃避解决不了问题，我们又无法在短时间内快速摆脱，那么倒不如先学着如何与它们正确相处。</p>
				<p>
					<br>
				</p>
				<p>首先要意识到弱点的出现是一种必然。人生的赛道有方方面面，每一条赛道上总有人比较靠前，有人比较靠后，如果仅仅因为自己的滞后就过度自卑是十分不理智的。</p>
				<p>
					<br>
				</p>
				<p>事实上，即使是那些站在台前光彩熠熠的成功人士，他们也并非天生就是如此。仔细留意那些高水平演讲的视频，会发现其实他们的手基本上都在抖，特别是拿着稿纸的时候，就如筛糠一般。</p>
				<p>
					<br>
				</p>
				<p>没有人天生就自信和优秀，那些在某个方面十分优秀的人，在起步时很可能也十分薄弱。他们之所以能够在后来表现得十分出色，往往是因为他们没有就此抱怨和逃避，而是通过不断的练习和精进，让自己变得越来越强。</p>
				<p>
					<br>
				</p>
				<p>有时我们需要勇敢一些，与其恐惧地停留在原地
					，倒不如鼓励自己现在就行动起来，用日复一日的努力和行动，将弱点填平，甚至让它变成自己引以为豪的优势。</p>
				<p>
					<br>
				</p>
				<p>此外，很多时候弱点并不是绝对的，我们并非一定要用克服的角度来看待，或许它也可以转化成一种优势。</p>
				<p>
					<br>
				</p>
				<p>NBA的夏洛特黄蜂队曾经有一名叫博格斯的球员，他的身高只有1.6米。作为NBA有史以来最矮的球员，他在起初上场时受尽了嘲笑和冷落。</p>
				<p>&nbsp;</p>
				<p>
					<img
						src="https://ossimg.xinli001.com/20200325/bfd08c838adcadad5a9896805422e5c5.jpeg?x-oss-process=image/quality,Q_80">
				</p>
				<h6 style="text-align: center;">站在队友中间的博格斯</h6>
				<p>
					<br>
				</p>
				<p>但他在场上的表现证明了他并不简单，他充分利用自己矮小的“优势”，在赛场上跑位灵活迅速，总是像子弹一样穿过对手的层层防守。并且由于他运球的重心很低，运球几乎没有失误，也经常抢断别人得手。最终博格斯凭借自己在NBA赛场上的表现，赢得了人们的接纳和尊敬。</p>
				<p>
					<br>
				</p>
				<p>与其因为弱点抱怨和逃避，或许我们也可以学学博格斯，寻找自己是否可以在某个场景中将其转换成优势。</p>
				<p>
					<br>
				</p>
				<p>此外，缺点的暴露并非只会带来异样的眼光和无情的嘲弄，有时它也可以通过一些巧妙的方法被化解，变成一个轻松愉快的玩笑。</p>
				<p>
					<br>
				</p>
				<p>有一位著名的IT从业者，他从二十世纪九十年代开始创业，他办过网站，开过公司，做过手机应用软件，都不算成功，20年过去了，他的头衔依旧是“著名IT行业从业者”。</p>
				<p>
					<br>
				</p>
				<p>圈内外充满了对他的流言蜚语，但现在他依然不甘寂寞地活跃在创业圈。有一次他获邀参加一个创业者论坛，但是却没有拿的出手的成功的案例来分享，不过这位朋友擅长自嘲，也不害怕被贴标签。他索性将演讲标题定成了《连续创业失败者》。演讲中，他没有愤懑地反驳那些对他的嘲弄，反而有风度的自嘲道：“我想主办方之所以邀请我，一定是因为我能够巧妙地避开了一切成功的可能，也是一件挺难得的事情。所以，不像其他人都是来分享成功经验的，我就是来跟大家分享如何可以避开失败的陷阱。”</p>
				<p>
					<br>
				</p>
				<p>
					<img
						src="https://ossimg.xinli001.com/20200325/b9e4a3b7a22fed96723fd9628a257ed3.jpeg?x-oss-process=image/quality,Q_80">
				</p>
				<p>
					<br>
				</p>
				<p>通过巧妙的自嘲，他瞬间扭转了败局，不仅引得大家哈哈大笑，也让大家对他的坚韧与自信肃然起敬，更加留心倾听他的分享。</p>
				<p>
					<br>
				</p>
				<p>与他人相比，我们总是会呈现出各种各样的弱点，让我们在他们面前黯然失色。面对这种情形，并非没有解决办法。我们可以换一条赛道、可以迎难而上、可以换个场景将其变成优势，甚至可以通过自嘲的方式来巧妙化解，但这一切的前提都需要我们先正视自己的弱点。</p>
				<p>
					<br>
				</p>
				<p>我们都期望树立良好的形象让他人认同自己。然而，让别人认同自己的第一步是自己认同自己，对缺点的逃避和抗拒并不能真正解决问题，要战胜弱点，首先需要我们学着接受它，学着与它相处。</p>
				<p>
					<br>
				</p>
				<h6>作者简介：伯凡时间（ID：bofanstime），吴伯凡官方账号，分享吴伯凡老师的真知与洞见。</h6>
				<p>
					<br>
				</p>
				<h6>责任编辑：小鲸鱼 耐高温淀粉酶</h6>
				<p>
					<br>
				</p>
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
						style="width: 90%; border: 1px solid #f3f4f5; box-shadow: 0 2px 10px 0 #eaeaea; border-radius: 10px;"></textarea>
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
						style="width: 90%; border: 1px solid #f3f4f5; box-shadow: 0 2px 10px 0 #eaeaea; border-radius: 10px;"></textarea>
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
								style="padding-top: 20px; width: 90%; border: 1px solid #f3f4f5; box-shadow: 0 2px 10px 0 #eaeaea; border-radius: 10px;"></textarea>
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
		              source:[{
		                type: 'video/mp4',
		                src:'http://vjs.zencdn.net/v/oceans.mp4'
		              }],
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
			    this.getorder();
			    this.getLessionList();
			    this.getCommentList();
			    this.getuserid();
			    this.getquestion();
			  },
			  methods: {
				  
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
							  url: "${APP_PATH}/doLike.do",
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
							  url: "${APP_PATH}/doUserId.do",
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
					  this.mediaUrl=e.currentTarget.dataset.id;
					  alert(this.mediaUrl);
					  this.playOptions.source[0].src=e.currentTarget.dataset.id;
					  alert(this.playOptions.source[0].src);
					  
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
