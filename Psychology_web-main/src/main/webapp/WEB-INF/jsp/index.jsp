<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- <link rel="stylesheet"
	href="${APP_PATH }/bootstrap/css/bootstrap.min.css"> --%>
	<link href="${APP_PATH }/css/index.css" rel="stylesheet"/>
<title>这个首页</title>

</head>
<body>
<div>
			<%--百分号注释(JSP注释)不参与编译，不会生成到源码中，
	感叹号(HTML注释)注释会参与编译 ，会生成到源码中，所以，不能使用html注释EL表达式和JSTL标签库
	故如<%-- <!-- ${sessionScope.user.username}-->  --%>
			<!-- 仍会把用户名输出给页面，可在浏览器查看源码显示 -->


			<!-- 动态包含：被包含的页面也会独立编译，生成字节码文件。 
	-->
			<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include> 

			<!-- 静态包含：被包含的页面 不会生成独立字节码文件。
		  将所包含的页面内容加入到当前页面，一起进行编译。
	-->
			<%--<%@ include file="/WEB-INF/jsp/common/main-top.jsp" %> --%>
	</div>
	<%-- <div class="container">

		
		<div class="jumbotron">
			<jsp:forward page="WEB-INF/jsp/article/index.jsp"></jsp:forward>
			<jsp:forward page="article_index.jsp"></jsp:forward>
			<a href="${APP_PATH }/test.do">test</a> <a
				href="${APP_PATH }/article/index.htm">文章阅读</a>
			<jsp:forward page="/jsp/addarticle.jsp"></jsp:forward>
			<a href="${APP_PATH }/question/index.htm">问答</a>
			<a href="${APP_PATH }/login.htm">登录</a> <a
				href="${APP_PATH }/register.htm">注册</a>
						<a href="${APP_PATH }/radio/check.htm">vuetest</a> 
						<a href="http://localhost:8083/#/test">FM</a> 
						<audio src="http://m701.music.126.net/20200322234704/778236cf72af3b16e446c2d81c9c72b6/jdymusic/obj/w5zDlMODwrDDiGjCn8Ky/1762665303/57a4/a3e6/b810/260885c3affc9d84fe155501db1d2a22.mp3" autoplay="autoplay" controls="controls"></audio>
		</div>
	</div> --%>
	
	<!-- 首页轮播图 -->
		<div class="swiper-container">
			<p style="text-align: center;">轮播图</p>

		</div>
		
		<!-- 心理文章 -->
		<div class="container">
			<div class="index-margin article">
				<!-- 文章分类 -->
				<ul id="article-title" class="article-title">
					<li class="article-item active-article">
						最新热文
					</li>
				</ul>
				<!-- 文章显示 -->
				<div id="article-content" class="article-content">
					<div class="content-container">
						<!-- 一篇文章的概览内容 -->
						<div class="content">
							<!-- 文章图片 -->
							<div class="content-img">
								<a target="_blank" href="#">
									<img src="" alt />
								</a>
							</div>
							<div class="content-title">
								<a target="_blank" class="common-a" href="#">
									<p class="main_title">文章标题:稍微糟糕一些也没关系的</p>
								</a>
								<p class="small-title">文章简述:你觉得自己融不进去，很多时候是因为你所在环境不对，而不是因为你这个人有问题。</p>
								<a href="#">
									<p class="ci-title">文章标签</p>
								</a>
							</div>
						</div>

						<div class="content">
							<!-- 文章图片 -->
							<div class="content-img">
								<a target="_blank" href="#">
									<img src="" alt />
								</a>
							</div>
							<div class="content-title">
								<a target="_blank" class="common-a" href="#">
									<p class="main_title">文章标题:稍微糟糕一些也没关系的</p>
								</a>
								<p class="small-title">文章简述:你觉得自己融不进去，很多时候是因为你所在环境不对，而不是因为你这个人有问题。</p>
								<a href="#">
									<p class="ci-title">文章标签</p>
								</a>
							</div>
						</div>

						<div class="content">
							<!-- 文章图片 -->
							<div class="content-img">
								<a target="_blank" href="#">
									<img src="" alt />
								</a>
							</div>
							<div class="content-title">
								<a target="_blank" class="common-a" href="#">
									<p class="main_title">文章标题:稍微糟糕一些也没关系的</p>
								</a>
								<p class="small-title">文章简述:你觉得自己融不进去，很多时候是因为你所在环境不对，而不是因为你这个人有问题。</p>
								<a href="#">
									<p class="ci-title">文章标签</p>
								</a>
							</div>
						</div>

						<div class="content">
							<!-- 文章图片 -->
							<div class="content-img">
								<a target="_blank" href="#">
									<img src="" alt />
								</a>
							</div>
							<div class="content-title">
								<a target="_blank" class="common-a" href="#">
									<p class="main_title">文章标题:稍微糟糕一些也没关系的</p>
								</a>
								<p class="small-title">文章简述:你觉得自己融不进去，很多时候是因为你所在环境不对，而不是因为你这个人有问题。</p>
								<a href="#">
									<p class="ci-title">文章标签</p>
								</a>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- 心理问答 -->
		<div class="container container-gray">
			<div class="answer-and-ask">
				<div class="main-title">
					<!-- 心理问答首页地址 -->
					<a target="_blank" class="common-a" href="#">
						<span class="psycho-answer">心理问答</span>
					</a>
					<span class="sub-title">每个人的心事都能找到答案</span>
					<!-- 发布问题 -->
					<p class="send-content my-content">
						<a target="_blank" class="common-a" href="#">
							<span style="color:#0B8BFF">100w+</span><span>个回答</span>
							<span class="tringle"></span>
						</a>
					</p>
					<p class="send-content">
						<a target="_blank" class="common-a" href="#">
							<span class="icom-question"></span>
							<span class="margin-icon">我要提问</span>
						</a>
					</p>

				</div>
				<div class="main-content">
					<div class="left-content">
						<a target="_blank" href="#"><span class="more-content">更多</span></a>
						<!-- 回答列表 -->
						<div class="content-ul">
							<div class="main-title">
								<!-- 问题信息 -->
								<a target="_blank" class="common-a" href="#">
									<span class="title">总是批评自己，对自己特别严格，怎么才能停止这样呢？</span>
								</a>
								<span class="answer-number">15个回答</span>
								<span class="use">有用 33</span>
							</div>

							<!-- 回答信息 -->
							<div class="content">
								<div class="before"></div>
								<img src="https://ossimg.xinli001.com/20190915/dc310f9a30e7299d3068b704b8c62271.jpg!80" alt="用户头像">

								<!-- 回复内容 -->
								<a target="_blank" class="common-a" href="/qa/100596438?source=pc-home">
									<div class="ellipsis">
										<div class="ellipsis-container">
											<div class="ellipsis-content">
												楼主您好！作为一个成年人，我们都应该意识到的一个问题就是：这个世界上有太多我们不能控制的事情，而我们能做的就是把自己可以控制的部分努力做好就可以了。世界是物质的，物质是运动的，运动是有规律的，规律是可以认识的，认识是发展变化的。我们不能直接去改变世界，但是我们能够通过改变自己的认知和调整自己的行为的方式去影响世界。耶基斯-多德森定律表明：动机不足或过分强烈都会影响工作和学习效率。（1）动机的最佳水平随任务性质的不同而不同。（2）在比较容易的任务中，学习效率随动机的提高而上升；随着任务难度的增加，动机的最佳水平有逐渐下降的趋势。（2）一般来讲，最佳水平为中等强度的动机。（3）动机水平与行为效率的关系呈倒U型曲线。当你对自己特别不满意时，想要改变的动机就会特别强烈。而这种过于强烈的动机会造成一种巨大的心理压力，进而影响到你的行为的效率。调整自己对于类似事情的“动机水平”到一个比较良好的适中的水平，这种情况就会得到改善。每个人都会有自己的不足之处，同样也会有自己的优点。对自己有要求不是什么坏事，但是不能无视客观事实，而且大多数的概念都是相对的，好的样貌、好的身材、好的工作都是世俗对一些实物的评判标准，不具有客观真实性。以容貌为例，不同时代、不同的国家和地区对此的审美标准是不一样的。就像你找不出一个全世界70亿人都能认可的脸庞一样。如果你存在的全部意义为了让他人认可你和接纳你，那这在本质上和“奴隶”又有什么区别？而且如果连你自己都无法认同和接纳你自己，又怎么会获得他人的认可嗯？我也希望拥有彭于晏的身材、吴彦祖的脸蛋、马云的财富，尼采的哲学思想，但我知道这些不是我光靠想就能得到的。如果想拥有好身材就去健身，如果想拥有财富就去努力学习获得财富的方法，如果想要拥有哲人般的思想高度去就学习辩证的看待世界。只要努力了，结果是怎样的，都必须要接受，这就是现实啊~没有什么公平不公平，大家都一样。你可以继续抱怨批评自己，不爱自己，但要知道这对你几乎没有什么帮助和好处。你也可以放下手机，开始努力改变那些你能改变的事情，然后发现更好的自己。这是谁都不能否认的事实。我是心理咨询师小東，祝您生活愉快！
											</div>
											<div class="ellipsis-ghost">
												<div class="ellipsis-placeholder"></div>
												<div class="ellipsis-more">...[查看全部]</div>
											</div>
										</div>
									</div>
								</a>

								<!-- 问题分类 -->
								<a target="_blank" class="common-a" href="#">
									<span class="tip tip-margin">
										自我成长
									</span>
								</a>
								<a target="_blank" class="common-a" href="#">
									<span class="tip">
										自我接纳
									</span>
								</a>
							</div>
						</div>
					</div>

					<!-- 右侧推荐问题 -->
					<div class="right-content">
						<span class="last">推荐问题</span>
						<a target="_blank" class="common-a" href="#">
							<span class="more">更多</span>
						</a>

						<!-- 问题列表 -->
						<ul>
							<li>
								<a target="_blank" class="common-a" href="#">
									<span class="title" title="#">30岁女生，一直觉得父母偏心姐姐，觉得不公平？</span>
								</a>
								<p class="answer">74回答</p>
							</li>
						</ul>

					</div>
				</div>

			</div>

		</div>

		<!-- 心理测试 -->
		<div class="container">
			<div class="psycho-test">

				<!-- 模块头部信息显示 -->
				<div class="main-title">

					<!-- 跳转到测试主页的链接 -->
					<a target="_blank" class="common-a" href="#">
						<span class="test-answer">认识自己，了解他人</span>
					</a>
					<span class="sub-title">认识自己，了解他人</span>
					<!-- 测试的数字信息 -->
					<div class="num">
						<a target="_blank" class="common-a" href="#">
							<!-- 测试数量 -->
							<!-- 三个行内元素显示在一行 -->
							<span class="test-number">1600+</span>
							<span style="margin-right: 10px;">测试题</span>
							<span class="test-number">15万+</span>
							<span>人测过</span>
						</a>
						<!-- 查看更多的图标 -->
						<span class="tringle"></span>
					</div>
					<div></div>
				</div>

				<!-- 心理测试概览信息 -->
				<div class="content">
					<div class="swiper-container">
						<!-- <div class="swiper-slide swiper-slide-active" style="order: 0; width: 230px; margin-right: 20px;"> -->

						<!-- 测试主题列表 -->
						<div class="test-topic">
							<!-- 该心理测试的链接入口 -->
							<a target="_blank" class="common-a" href="#">

								<div class="go-test">去测试</div>

								<!-- 测试封面图片 -->
								<img src="https://ossimg.xinli001.com/20171225/16544aa48c890dd77ee4f8d8cadd0cb7.jpg?x-oss-process=image/quality,Q_80"
								 alt="">

								<!-- 测试主题名称 -->
								<p title="性格优势评估">
									性格优势评估 </p>

								<!-- 测试价格和已测人数 -->
								<div class="two-tip">
									<span class="no-free">￥9.90</span>
									<span style="width: 70px"></span>
									<span class="test">1918人测试过</span>
								</div>
							</a>
						</div>

						<div class="test-topic">
							<!-- 该心理测试的链接入口 -->
							<a target="_blank" class="common-a" href="#">

								<div class="go-test">去测试</div>

								<!-- 测试封面图片 -->
								<img src="https://ossimg.xinli001.com/20171225/16544aa48c890dd77ee4f8d8cadd0cb7.jpg?x-oss-process=image/quality,Q_80"
								 alt="">

								<!-- 测试主题名称 -->
								<p title="性格优势评估">
									性格优势评估 </p>

								<!-- 测试价格和已测人数 -->
								<div class="two-tip">
									<span class="free">免费</span>
									<span style="width: 70px"></span>
									<span class="test">1918人测试过</span>
								</div>
							</a>
						</div>
						<!-- </div> -->
					</div>
				</div>
			</div>
		</div>

		<!-- 心理咨询 -->
		<div class="container container-gray">
			<div class="psycho-consult">

				<!-- 模块简介信息 -->
				<div class="main-title">

					<!-- 模块首页跳转地址 -->
					<a target="_blank" class="common-a" href="#">
						<!-- 模块名称 -->
						<span class="psycho-answer">心理咨询</span>
					</a>

					<!-- 模块简介 -->
					<span class="sub-title">没有人是一座孤岛，每个人都需要心理咨询</span>
					<p class="send-content my-content">
						<!-- 模块首页跳转地址 -->
						<a href="#">
							<span style="color: #0AA5E2">100+</span>
							<span>权威咨询师</span>
							<span class="tringle"></span>
						</a>
					</p>

					<!-- 咨询师申请入驻地址 -->
					<p class="send-content">
						<a target="_blank" class="common-a" href="#">

							<!-- 一个图标 -->
							<span class="yxl-icon yxl-font-agree"></span>

							<span class="margin-icon">咨询师入驻</span>
						</a>

					</p>
				</div>

				<!-- --------------------------- -->

				<!-- 咨询师卡片信息 -->
				<div class="content">

					<!-- 该容器限制可显示的宽度 -->
					<div class="swiper-consult">

						<!-- 容纳咨询师卡片列表的容器 -->
						<div class="swiper-wrapper" style="transform: translate3d(0px, 0px, 0px); transition-duration: 0ms;">

							<!-- 一个咨询师的卡片 -->
							<div class="swiper-slide swiper-slide-active" style="width: 230px; margin-right: 20px;">
								<div class="user-img">
									

									<!-- 背景图元素position为static，没有定位，元素出现在正常流中 -->
									<div class="hidden-img">
										<img src="" alt="">
										<!-- <img src="../../../page-resource/indeximg/pict.jpg" alt=""> -->
									</div>

									<!-- 背景图遮罩position为absolute -->
									<div class="zhezhao"></div>

                                    <!-- position为absolute -->
									<span class="consult-name">咨询师</span>

									<!-- 头像position为absolute -->
									<img class="user-radius-img" src="" alt="">
									
									<!-- position为absolute -->
									<p class="show-user-tip">累计帮助了478人</p>
									
									<!-- position为static-->
									<ul class="user-introudct">
										<li data-title="国家二级咨询师">国家二级咨询师</li>
									</ul>
									
									<!-- position为static-->
									<p class="aera-info" title="情绪管理、婚姻家庭、性心理">
										擅长：情绪管理、婚姻家庭、性心理 </p>

									<!-- 跳转到咨询师个人主页： position为static -->
									<p class="prew-metting">
										<a target="_blank" class="common-a" href="#">预约
										</a>
									</p>


								</div>
							</div>
							<div class="swiper-slide swiper-slide-active" style="width: 230px; margin-right: 20px;">
								<div class="user-img">

									<!-- 背景图 -->
									<div class="hidden-img">
										<img src="" alt="">
										<!-- <img src="../../../page-resource/indeximg/pict.jpg" alt=""> -->
									</div>

									<!-- 背景图遮罩 -->
									<div class="zhezhao"></div>


									<span class="consult-name">咨询师</span>

									<!-- 头像 -->
									<img class="user-radius-img" src="" alt="">
									<p class="show-user-tip">累计帮助了478人</p>
									<ul class="user-introudct">
										<li data-title="国家二级咨询师">国家二级咨询师</li>
									</ul>
									<p class="aera-info" title="情绪管理、婚姻家庭、性心理">
										擅长：情绪管理、婚姻家庭、性心理 </p>

									<!-- 跳转到咨询师个人主页 -->
									<p class="prew-metting">
										<a target="_blank" class="common-a" href="#">预约
										</a>
									</p>


								</div>
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>

		<!-- 心理课程 -->
		<div class="container">
			<div class="psycho_course">

				<!-- 模块简介信息 -->
				<div class="main-title">
					<a target="_blank" class="common-a" href="${APP_PATH }/course/index.htm">
						<span class="psycho-answer">心理课程</span>
					</a>
					<span class="sub-title">打开心理学新世界</span>

					<!-- 我的课程入口 -->
					<p class="send-content my-content">
						<a target="_blank" class="common-a" href="#">
							<!-- 图标 -->
							<span class=""></span>
							<span class="margin-icon">我的课程</span>
						</a>
					</p>

					<!-- 课程模块入口 -->
					<p class="send-content zixun-content">
						<a target="_blank" class="common-a" href="">
							<span class="#"></span>
							<span class="margin-icon">更多课程</span>
						</a>
					</p>

				</div>

				<!-- 课程概要信息列表 -->
				<div class="content">

					<div class="swiper-course">

						<!-- 限制显示范围 -->
						<div class="swiper-wrapper">

							<!-- 一页的显示容器 -->
							<div class="swiper-slide">

								<!-- 顶部两个课程广告 -->
								<div class="top-fm slide-top">

									<!-- 第一个 -->
									<div class="top-one top-margin">
										<a target="_blank" class="common-a" href="#">
											<!-- 课程封面简介图 -->
											<div class="slide-top-img" style="background-image: url('')">封面图片
											</div>

											<!-- 课程文字信息 -->
											<div class="info">
												<p class="info-title" title="">课程标题</p>
												<p class="teacher-info">教师介绍：XXX</p>
												<span class="pay">XX元</span>
												<del>XXX元</del>
												<span class="class-info">课程介绍</span>
											</div>
										</a>
									</div>

									<!-- 第二个 -->
									<div class="top-one">
										<a target="_blank" class="common-a" href="#">
											<!-- 课程封面简介图 -->
											<div class="slide-top-img" style="background-image: url('')">封面图片
											</div>

											<!-- 课程文字信息 -->
											<div class="info">
												<p class="info-title" title="">课程标题</p>
												<p class="teacher-info">教师介绍：XXX</p>
												<span class="pay">XX元</span>
												<del>XXX元</del>
												<span class="class-info">课程介绍</span>
											</div>
										</a>
									</div>

								</div>

								<!-- 底部四个课程广告 -->
								<div class="bottom-fm slide-bottom">

									<!-- 第一个 -->
									<div class="bottom-one bottom-margin">
										<a target="_blank" class="common-a" href="#">
											<!-- 课程封面简介图 -->
											<div class="slide-top-img" style="background-image: url('')">封面图片
											</div>

											<!-- 课程文字信息 -->
											<div class="info">
												<p class="info-title" title="">课程标题</p>
												<p class="teacher-info">教师介绍：XXX</p>
												<span class="pay">XX元</span>
												<del>XXX元</del>
												<span class="class-info">课程介绍</span>
											</div>
										</a>
									</div>

									<div class="bottom-one bottom-margin">
										<a target="_blank" class="common-a" href="#">
											<!-- 课程封面简介图 -->
											<div class="slide-top-img" style="background-image: url('')">封面图片
											</div>

											<!-- 课程文字信息 -->
											<div class="info">
												<p class="info-title" title="">课程标题</p>
												<p class="teacher-info">教师介绍：XXX</p>
												<span class="pay">XX元</span>
												<del>XXX元</del>
												<span class="class-info">课程介绍</span>
											</div>
										</a>
									</div>

									<div class="bottom-one bottom-margin">
										<a target="_blank" class="common-a" href="#">
											<!-- 课程封面简介图 -->
											<div class="slide-top-img" style="background-image: url('')">封面图片
											</div>

											<!-- 课程文字信息 -->
											<div class="info">
												<p class="info-title" title="">课程标题</p>
												<p class="teacher-info">教师介绍：XXX</p>
												<span class="pay">XX元</span>
												<del>XXX元</del>
												<span class="class-info">课程介绍</span>
											</div>
										</a>
									</div>

									<div class="bottom-one">
										<a target="_blank" class="common-a" href="#">
											<!-- 课程封面简介图 -->
											<div class="slide-top-img" style="background-image: url('')">封面图片
											</div>

											<!-- 课程文字信息 -->
											<div class="info">
												<p class="info-title" title="">课程标题</p>
												<p class="teacher-info">教师介绍：XXX</p>
												<span class="pay">XX元</span>
												<del>XXX元</del>
												<span class="class-info">课程介绍</span>
											</div>
										</a>
									</div>

								</div>
							</div>
						</div>
					</div>

				</div>

			</div>
		</div>

		<!-- 心理电台 -->
		<div class="container container-gray">
			<div class="psycho-fm">

				<div class="main-title">
					<a target="_blank" class="common-a" href="https://fm.xinli001.com/?source=pc-home">
						<span class="psycho-answer">心理FM</span>
					</a>
					<span class="sub-title">世界和我爱着你</span>
					<p class="send-content">
						<a target="_blank" class="common-a" href="https://fm.xinli001.com/nj/apply">
							<span class="yxl-icon yxl-font-icon-diary-recording"></span>
							<span class="margin-icon">更多节目</span>
						</a>
					</p>
					<p class="send-content">
						<a target="_blank" class="common-a" href="https://fm.xinli001.com/nj/apply">
							<span class="yxl-icon yxl-font-icon-diary-recording"></span>
							<span class="margin-icon">申请主播</span>
						</a>
					</p>

				</div>


				<div class="content">
					<div class="swiper-fm">
						
					<!-- 	一页数据 -->
						<div class="swiper-wrapper">
							
							<!-- 一个电台信息卡片 -->
							<div class="swiper-slide slide-top swiper-slide-active" style="width: 180px; margin-right: 20px;">
								
								<!-- 节目封面 -->
								<div class="slide-top-img" style="background-image: url('')">
									电台节目封面
								</div>
								
								<div class="info">
									<div class="img-info">
										<!-- 主播头像 -->
										<img class="user-img" src="" alt="">
										<span class="zhubo" title="">电台主播</span>
									</div>
									
									
									<!-- 节目播放按钮 -->
									<p class="play-blue">
										
										<!-- 这个节目的播放地址 -->
										<a target="_blank" class="common-a" href="#">
											<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAABAFJREFUSA2tV19IZFUY/53rZCM6QSsYii31Um3LEug+bVla7VuwgkXty0L71K4g6pgPyy7IYoE5VxdZoqAIeilbDIWeknIXwSftwR6iYmFRcMHazXAI/8zM6fc7zMgdnevcbD64c8/9zvf9fuc75zvfOWMQQYas9XwfZ2jaaYFWvpv0sF3F958GWLUWC1Ue5lpa8P3tDpOh/lChT7g89YWNP3iAHhIkCdwQbhnoMbhvDD6ticP/o9ukAz1FzVDiOt92kWwcFk/Kg2C/cQDTjHHWy2ElHsfao9vI/hND/fYOThiLF2HwFn2edwwcQKwabX/3mLtFjPmPA8TWWpPwMUyAK3mAJYIOpt83P5YC2K9LjNk2m8UI9ZnNAbxiDL3LiUjrUvbr2lFr+ewy6m7pyvnt75fPsQn72H596DdJPxBp3ah9SNKOUMMjdBD75aCbV/jIr6mmNwMPXemkmSv0/d83SW9y6e4kfPtGAcsRK3tdIlFrPPRWklREXOTf3dvis8ISOGJtGZe9Bkub/fhYRpWUdBITTJR5BvfE7g7eE7an4sARJfWh7I2UhbSVn3yiiDBtDNdlmwN6T35jq00iZV/KWcxzRL9yyzxXDqh23L6OLL6kfRUfP5lEasgY4pUXrvUyoz6FGM5q1J1y4aaZKe/KWclijMvSSIAGDngk5eMHrltzFF9yfOfssiTmNKv2qurOunf5n6eDJhxA+842lhnNm0F9ybYHV4RU5RSxCj5UBksaR1By8I9zALdqU/bz5jFbE+YSy8CVT0betEes2hvmEFlvcfGvLD4Js48D6/m+BhE7sXGW+EqIwWthMNljLE0UTnVODRfp9gYawxz+i56j/zbMfo+DJ9ceMYdwPMwhoj7Ho3P4dCv6w+wDHGseR7jkDJniYQ4R9CteFdrTA+baobePPAcTcVERTwuY834uAoHq7i9BO0Y5+UgML2z2m/mgvlSbQbqawWhnPFaeBTqvE/BZHoevlnII6mLAJX7/RJ+fWbouMMp3NvrMRtCmVFvYjPQZcYnT2bBsDrrDP2UXj3LwlyIK6oTJPb4oDnGpT1ON+npMcDOtch5bE2O4LF0lJZFCt7DF4bgI7ojvvWu2OAV9IrM53Kjk7UNYXMZxYYtDXGo7YjV4+E+x40M2Yzy7pipB7jCIJUxhi0NckqJqpbXgDfMrJsHb7MvoNqKLQdQz2iHyx+FwyTR7/BTp5GYS54M4RcRyzJMf+XrrstfgI7emxFOkJL0aJBXPAWIpJZym4gs9LwruzA5c6GW3tYUmV5FYHLRPtWWkVyKRtC84vU6f/wklVv9R/sKQbJ2gvrK3kEhBwkL7UOKCke5Xpf605ft1yKwRSKV3WsUhylXoXwBmn0Y1nEixAAAAAElFTkSuQmCC"
											 alt="">
										</a>
									</p>
									
									<!-- 节目名称 -->
									<div class="title">
										<div class="content-title">
											<div class="content-splice" title="放弃一个喜欢很久的人是什么感觉？">放弃一个喜欢很久的人是什么感觉？</div>
										</div>
									</div>
								</div>
							</div>
							
							
							<!-- 第二个节目卡片 -->
							<div class="swiper-slide slide-top swiper-slide-active" style="width: 180px; margin-right: 20px;">
								
								<!-- 节目封面 -->
								<div class="slide-top-img" style="background-image: url('')">
									电台节目封面
								</div>
								
								<div class="info">
									<div class="img-info">
										<!-- 主播头像 -->
										<img class="user-img" src="" alt="">
										<span class="zhubo" title="">电台主播</span>
									</div>
									
									
									<!-- 节目播放按钮 -->
									<p class="play-blue">
										
										<!-- 这个节目的播放地址 -->
										<a target="_blank" class="common-a" href="#">
											<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAAXNSR0IArs4c6QAABAFJREFUSA2tV19IZFUY/53rZCM6QSsYii31Um3LEug+bVla7VuwgkXty0L71K4g6pgPyy7IYoE5VxdZoqAIeilbDIWeknIXwSftwR6iYmFRcMHazXAI/8zM6fc7zMgdnevcbD64c8/9zvf9fuc75zvfOWMQQYas9XwfZ2jaaYFWvpv0sF3F958GWLUWC1Ue5lpa8P3tDpOh/lChT7g89YWNP3iAHhIkCdwQbhnoMbhvDD6ticP/o9ukAz1FzVDiOt92kWwcFk/Kg2C/cQDTjHHWy2ElHsfao9vI/hND/fYOThiLF2HwFn2edwwcQKwabX/3mLtFjPmPA8TWWpPwMUyAK3mAJYIOpt83P5YC2K9LjNk2m8UI9ZnNAbxiDL3LiUjrUvbr2lFr+ewy6m7pyvnt75fPsQn72H596DdJPxBp3ah9SNKOUMMjdBD75aCbV/jIr6mmNwMPXemkmSv0/d83SW9y6e4kfPtGAcsRK3tdIlFrPPRWklREXOTf3dvis8ISOGJtGZe9Bkub/fhYRpWUdBITTJR5BvfE7g7eE7an4sARJfWh7I2UhbSVn3yiiDBtDNdlmwN6T35jq00iZV/KWcxzRL9yyzxXDqh23L6OLL6kfRUfP5lEasgY4pUXrvUyoz6FGM5q1J1y4aaZKe/KWclijMvSSIAGDngk5eMHrltzFF9yfOfssiTmNKv2qurOunf5n6eDJhxA+842lhnNm0F9ybYHV4RU5RSxCj5UBksaR1By8I9zALdqU/bz5jFbE+YSy8CVT0betEes2hvmEFlvcfGvLD4Js48D6/m+BhE7sXGW+EqIwWthMNljLE0UTnVODRfp9gYawxz+i56j/zbMfo+DJ9ceMYdwPMwhoj7Ho3P4dCv6w+wDHGseR7jkDJniYQ4R9CteFdrTA+baobePPAcTcVERTwuY834uAoHq7i9BO0Y5+UgML2z2m/mgvlSbQbqawWhnPFaeBTqvE/BZHoevlnII6mLAJX7/RJ+fWbouMMp3NvrMRtCmVFvYjPQZcYnT2bBsDrrDP2UXj3LwlyIK6oTJPb4oDnGpT1ON+npMcDOtch5bE2O4LF0lJZFCt7DF4bgI7ojvvWu2OAV9IrM53Kjk7UNYXMZxYYtDXGo7YjV4+E+x40M2Yzy7pipB7jCIJUxhi0NckqJqpbXgDfMrJsHb7MvoNqKLQdQz2iHyx+FwyTR7/BTp5GYS54M4RcRyzJMf+XrrstfgI7emxFOkJL0aJBXPAWIpJZym4gs9LwruzA5c6GW3tYUmV5FYHLRPtWWkVyKRtC84vU6f/wklVv9R/sKQbJ2gvrK3kEhBwkL7UOKCke5Xpf605ft1yKwRSKV3WsUhylXoXwBmn0Y1nEixAAAAAElFTkSuQmCC"
											 alt="">
										</a>
									</p>
									
									<!-- 节目名称 -->
									<div class="title">
										<div class="content-title">
											<div class="content-splice" title="放弃一个喜欢很久的人是什么感觉？">放弃一个喜欢很久的人是什么感觉？</div>
										</div>
									</div>
								</div>
							</div>
							
							
						</div>
					</div>

				</div>
			</div>

		</div>
		
		
	
	<script src="${APP_PATH }/js/vue.js"></script>
	<script src="${APP_PATH }/js/axios.js"></script>
	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<!-- <script type="text/javascript">
		let user="${loginUser}";
		var header = new Vue({
			  el: '.header-container',
			  data () {
			    return {
			      user:null
			    }
			  },
			  created() {
				  if(user!=null&&user!=""){
					  this.user=user;
				  }
				  alert(this.user);
			  },
			  watch: {
				  
			  },
			  methods: {
				  
			  }
		})
	</script> -->
	
</body>
</html>