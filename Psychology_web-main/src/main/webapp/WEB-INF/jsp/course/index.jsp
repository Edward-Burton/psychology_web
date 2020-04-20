<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>课程首页</title>

<!-- 引入样式 -->
<link rel="stylesheet" href="${APP_PATH}/bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="${APP_PATH}/css/course_index.css">

</head>
<body>
<div>
<jsp:include page="/WEB-INF/jsp/common/main-top.jsp"></jsp:include> 
</div>

<div class="f-main">
			<div class="clearfix">
				<div class="main-category">

					<!-- 轮播区-start -->
					<div class="main-bg">
						<a href="http://www.ioswift.org/course/learn/1.html">
							<div class="main-bg-item" style="background-image: url(&quot;http://ioswift.org/res/0.jpg&quot;); display: none;"></div>
						</a>
						<a href="http://www.ioswift.org/course/learn/1.html">
							<div class="main-bg-item" style="background-image: url(&quot;http://ioswift.org/res/1.jpg&quot;); display: none;"></div>
						</a>
						<a href="http://www.ioswift.org/course/learn/1.html">
							<div class="main-bg-item" style="background-image: url(&quot;http://ioswift.org/res/2.jpg&quot;); display: none;"></div>
						</a>
						<a href="http://www.ioswift.org/course/learn/1.html">
							<div class="main-bg-item" style="background-image: url(&quot;http://ioswift.org/res/3.jpg&quot;); display: block;"></div>
						</a>
					</div>
					<div class="f-nav-box">
						<div class="bg-nav">
							<a class=""></a>
							<a class=""></a>
							<a class=""></a>
							<a class="cur"></a>
						</div>
					</div>
					<!-- 轮播区-end -->

				</div>
			</div>
		</div>


		<div class="main-container">

			<div class="recommend recommend-course">
				<div class="main-title">
					<span class="course-category active-course" style="float: left;">精品推荐</span>
					<span class="course-category" style="float: left;">精品推荐</span>
					<span class="course-category" style="float: left;">精品推荐</span>
					<span class="course-category" style="float: left;">精品推荐</span>
				</div>

				<div class="recommend-content" style="clear: both;">
					<div class="content">
						<a target="_blank" class="common-a" href="${APP_PATH }/course/course.htm">
							<div class="slide-img" style="background-image: url(${APP_PATH}/img/zhiyu.jpg);">
							</div>
						</a>
						<div class="info">
							<p class="course-title">
								课程标题
							</p>
							<span class="course-teacher">讲师</span>
							<span class="course-pay">99元</span>
						</div>
					</div>
					<div class="content"></div>
					<div class="content"></div>
					<div class="content"></div>
					<div class="content"></div>
					<div class="content"></div>
				</div>

				<nav aria-label="...">
					<ul class="pager">
						<li class="previous disabled"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
						<li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
					</ul>
				</nav>

			</div>

		</div>

		<div class="main-container">
			<div class="recommend recommend-tearcher">
				<div class="main-title">
					<span class="course-category " style="float: left;">听书</span>
				</div>

				<div class="recommend-content" style="clear: both;">
					<div class="content">
						<div class="content-item">

						</div>
					</div>
					<div class="content"></div>
					<div class="content"></div>
					<div class="content"></div>
					<div class="content"></div>
					<div class="content"></div>
				</div>



			</div>
		</div>

		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<script type="text/javascript">
			$(function() {
						//轮播效果 -start
						var size = Number('4');

						var index = 0;
						var timer = 4000;
						$('.bg-nav a').click(function() {
							index = $('.bg-nav a').index($(this));
							rollBg(index);
						});
						$('.index-roll-item').click(function() {
							index = $('.index-roll-item').index($(this));
							rollBg(index);
						});
						var rollBg = function(i) {
							$('.main-bg-item').fadeOut(1000);
							$($('.main-bg-item')[i]).fadeIn(1000);
							$('.bg-nav a').removeClass('cur');
							$($('.bg-nav a')[i]).addClass('cur');
							$('.index-roll-item').removeClass('cur');
							$($('.index-roll-item')[i]).addClass('cur');
						}
						setInterval(function() {
							index += 1;
							index = index % size;
							rollBg(index);
						}, timer);
						//轮播效果 -end
				});
		</script>

</body>

</html>