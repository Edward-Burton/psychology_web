<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>课程首页</title>

<!-- 引入样式 -->
<link rel="stylesheet" href="https://unpkg.com/element-ui@1.4/lib/theme-default/index.css">
<%-- <link rel="stylesheet" href="${APP_PATH}/bootstrap/css/bootstrap.css"> --%>
<%-- <link rel="stylesheet" href="${APP_PATH}/css/course_index.css"> --%>
<style>
* {
	margin: 0px;
	text-decoration: none;
}

body {
	margin-top: 10px;
	position: relative;
	width: 100%;
}

.f-main {
	width: 1200px;
	margin: 0 auto;
	min-height: 400px;
	margin-top: 20px;
	margin-bottom: 30px;
}

.clearfix {
	clear: both;
}

.main-category {
	width: 1200px;
	height: 450px;
}

.main-bg {
	position: absolute;
	width: 1200px;
	height: 450px;
	z-index: 1;
	float: left;
}

a:link {
	text-decoration: none;
}

.main-bg-item {
	position: absolute;
	top: 0;
	width: 1200px;
	height: 450px;
	z-index: 1;
}

.f-nav-box {
	height: 114px;
	margin: 0 auto;
	position: relative;
}

.bg-nav {
	position: absolute;
	width: 200px;
	height: 20px;
	z-index: 10;
	bottom: -330px;
	right: 0px;
}

.bg-nav {
	position: absolute;
	width: 200px;
	height: 20px;
	z-index: 10;
	bottom: -330px;
	right: 0px;
}

.bg-nav a {
	width: 12px;
	height: 12px;
	border: 2px #929DA5 solid;
	border-radius: 50%;
	cursor: pointer;
	float: left;
	margin-left: 10px;
}

.bg-nav a.cur {
	width: 12px;
	height: 12px;
	background-color: #929DA5;
	border: none;
}

.main-container {
	margin-top: 30px;
	display: flex;
	justify-content: center;
}

.recommend {
	width: 1350px;
	background-color: #e9eff0;
}

.recommend .main-title {
	height: 40px;
}

.recommend .main-title .course-category {
	width: 80px;
	height: 32px;
	line-height: 32px;
	text-align: center;
	border: 1px solid transparent;
	color: #000;
	display: inline-block;
	cursor: pointer;
	font-size: 16px;
	margin-right: 30px;
}

.recommend .main-title .course-category:hover, .recommend .main-title .active-course {
	border: 1px solid #0b8bff;
	border-radius: 90px;
	color: #0b8bff;
}

.recommend .recommend-content {
	height: 650px;
}

.recommend .recommend-content .content {
	height: 300px;
	width: 430px;
	background: #f9f9fa;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	float: left;
	margin-top: 20px;
	margin-right: 20px;
	border-radius: 10px;
	cursor: pointer;
	display: inline-block;
	position: relative;
}

.recommend .recommend-content .content:last-child {
	margin-bottom: 30px;
}

.recommend .recommend-content .content .slide-img {
	width: 430px;
	height: 200px;
	position: absolute;
	border-radius: 10px 10px 0 0;
	background-size: 100% auto;
}

.recommend .recommend-content .content .info {
	height: 100px;
	width: 400px;
	position: absolute;
	bottom: 0;
	text-align: left;
	margin-left: 20px;
}

.recommend .recommend-content .content .info .course-title {
	line-height: 24px;
	margin-top: 15px;
	overflow: hidden;
	text-overflow: ellipsis;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	margin-right: 20px;
}

.recommend .recommend-content .content .info .course-teacher {
	font-size: 14px;
	color: #666;
	line-height: 16px;
	margin-top: 20px;
	display: inline-block;
}

.recommend .recommend-content .content .info .course-pay {
	color: #ff5b5b;
	line-height: 16px;
	display: inline-block;
	border-radius: 100px;
	margin-right: 14px;
	margin-top: 14px;
	font-weight: 700;
	font-size: 16px;
	float: right;
}

.recommend #secondTagM {
	margin-top: 18px;
}

.recommend .second-tag {
	background-color: #f3f4f5;
	border-radius: 4px;
}

.recommend .second-tag ul {
	display: block;
	padding: 5px 10px 15px 0;
	list-style-type: none;
	font-size: 0;
}

.recommend .second-tag li {
	margin-left: 30px;
	margin-top: 10px;
    list-style: none;
    display: inline-block;
    background-color: #b3c5d5;
    border-radius: 5px;
    padding: 5px;
}

.recommend .second-tag .selected{
	background-color:#f9f9fa;
}

.recommend .second-tag li a {
	color: #999;
	font-size: 14px;
}

.recommend .second-tag li.selected a, .tag-m .second-tag li a:hover {
	color: #0b8bff;
}
</style>
</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
	</div>

	<div id="main">

		<div id="f-main">
			<div class="clearfix">
				<div class="main-category">

					<!-- 轮播区-start -->
					<div class="main-bg">
						<a href="http://www.ioswift.org/course/learn/1.html">
							<div class="main-bg-item"
								style="background-image: url(&quot;http://ioswift.org/res/0.jpg&quot;); display: none;"></div>
						</a> <a href="http://www.ioswift.org/course/learn/1.html">
							<div class="main-bg-item"
								style="background-image: url(&quot;http://ioswift.org/res/1.jpg&quot;); display: none;"></div>
						</a> <a href="http://www.ioswift.org/course/learn/1.html">
							<div class="main-bg-item"
								style="background-image: url(&quot;http://ioswift.org/res/2.jpg&quot;); display: none;"></div>
						</a> <a href="http://www.ioswift.org/course/learn/1.html">
							<div class="main-bg-item"
								style="background-image: url(&quot;http://ioswift.org/res/3.jpg&quot;); display: block;"></div>
						</a>
					</div>
					<div class="f-nav-box">
						<div class="bg-nav">
							<a class=""></a> <a class=""></a> <a class=""></a> <a class="cur"></a>
						</div>
					</div>
					<!-- 轮播区-end -->

				</div>
			</div>
		</div>


		<div class="main-container">

			<div class="recommend recommend-course">
				<div class="main-title">
					<span class="course-category" style="float: left;" :class="{'active-course':tag==0}" @click="getrecommend()">精品推荐</span>
					<span class="course-category" style="float: left;" :class="{'active-course':tag==1}" @click="gethotcourse()">热门好课</span> 
					<span class="course-category" style="float: left;" :class="{'active-course':tag==2}" @mouseover="tmouseOver()">名师备课</span> <!-- @mouseleave="mouseLeave" -->
					<span class="course-category" style="float: left;" :class="{'active-course':tag==3}" @mouseover="pmouseOver()" >主题分类</span>
				</div>
				<div id="secondTagM" @mouseenter="">
					<!-- <div class="second-tag showed-second-tag"></div> -->
					<div class="second-tag" v-if="tag==2">
						<ul class="selector-tag">
							<li v-for="(t,index) in instructorList"  :class="{selected:isselected==index}" @click="isselected=index"><a href="javascript:void(0)"
								:data-instructorid="t.instructor_id" @click="teachercourse($event)">{{t.instructor_name}}</a></li>
						</ul>
					</div>

					<div class="second-tag" v-if="tag==3">
						<ul class="selector-tag">
							<li v-for="(p,index) in professionList" :class="{selected:isselected==index}" @click="isselected=index"><a href="javascript:void(0)"
								:data-professionid="p.course_profession_id" @click="professioncourse($event)">{{p.profession_name}}</a></li>
						</ul>

					</div>
				</div>

				<div class="recommend-content" style="clear: both;">
					<div class="content" v-for="(course,index) in courseList">
						<a target="_blank" class="common-a"
							:href="'${APP_PATH }/course/course.htm?id='+course.course_id">
							<div class="slide-img"
								:style="'background-image: url(${APP_PATH}/'+course.cover_img+');'">
							</div>
						</a>
						<div class="info">
							<p class="course-title">{{course.course_name}}</p>
							<span class="course-teacher">{{course.instructor.instructor_name}}</span> <span class="course-pay">{{course.course_price}}元</span>
						</div>
					</div>
				</div>
				
				<div class="pagination" v-if="tag>1">
					<el-pagination 
						@current-change="handleCurrentChange"
						background
						layout="prev, pager, next"
						:total="totalno"
						:current-page="pageno">
					</el-pagination>
				</div>

			</div>

		</div>

		<div class="main-container">
			<div class="recommend recommend-tearcher">
				<div class="main-title">
					<span class="course-category " style="float: left;">听书</span>
				</div>

				<div class="recommend-content" style="clear: both;">
					<div class="content">
						<div class="content-item"></div>
					</div>
					<div class="content"></div>
					<div class="content"></div>
					<div class="content"></div>
					<div class="content"></div>
					<div class="content"></div>
				</div>



			</div>
		</div>
	</div>
	<script src="${APP_PATH }/js/vue.js"></script>
	<script src="${APP_PATH }/js/axios.js"></script>
	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script src="https://unpkg.com/element-ui/lib/index.js"></script>
	<script type="text/javascript">
		var course = new Vue({
			  el: '#main',
			  data () {
			    return {
			      pageno : 1,
				  totalno : 0,
				  isbuy:0,
				  isselected:-1,
				  tag:0,
				  teacherid:0,
				  professionid:0,
				  instructorList:[],
				  professionList:[],
				  courseList:[],
			    }
			  },
			  created() {
			    this.getprofession();
			    this.getinstructor();
			    this.getCourseList();
			  },
			  methods: {
				  
				  tmouseOver(){
					  this.tag=2;
					  this.isselected=-1;
				  },
				  
				  mouseLeave(){
				      this.tag=-1;  
				  },
				  
				  pmouseOver(){
					  this.tag=3;
					  this.isselected=-1;
				  },
				  
				  
				  getrecommend(){
					  this.tag=0;
					  this.getCourseList();
				  },
				  
				  gethotcourse(){
					  this.tag=1;
					  this.getCourseList();
				  },
				  
				  teachercourse(e){
					  this.professionid=0;
					  this.tag=2;
					  this.pageno=1;
					  this.teacherid=parseInt(e.currentTarget.dataset.instructorid);
					  this.getCourseList();
				  },
				  
				  professioncourse(e){
					  this.teacherid=0;
					  this.tag=3;
					  this.pageno=1;
					  this.professionid=parseInt(e.currentTarget.dataset.professionid);
					  this.getCourseList();
				  },
				  
				  getinstructor(){
					  axios({
						  url: "${APP_PATH}/course/doInstructor.do",
					      method: "GET"
					    }).then(res => {
					    	if(res.data.success){
					    		this.instructorList=res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  
				  getprofession(){
					  axios({
						  url: "${APP_PATH}/course/doProfession.do",
					      method: "GET"
					    }).then(res => {
					    	if(res.data.success){
					    		this.professionList=res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  getCourseList(){
					  var params = {
					    	  tag:this.tag,
					    	  pageno:this.pageno,
					    	  pagesize:10
					   };
					  if(this.teacherid!=0){
						  this.$set(params,"teacherid",this.teacherid);
					  }
					  if(this.professionid!=0){
						  this.$set(params,"professionid",this.professionid);
					  }
					  /* alert(JSON.stringify(params)); */
					  axios({
						  url: "${APP_PATH}/course/doindex.do",
					      method: "GET",
					      params:params
					    }).then(res => {
					    	if(res.data.success){
					    		if(this.tag<=1){
					    			this.courseList=res.data.data;
					    		}else{
					    			this.courseList = res.data.page.data;
					    			this.totalno=res.data.page.totalno;
					    		}
					    		//$("#likenum").html(res.data.data);
					    		//this.userid=res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  }
			  }
		})
		
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