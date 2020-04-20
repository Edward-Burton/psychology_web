<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>课程首页</title>

<!-- 引入样式 -->
<link rel="stylesheet" href="${APP_PATH}/css/elementui.css">
<style>
.el-carousel__item h3 {
    color: #475669;
    font-size: 14px;
    opacity: 0.75;
    line-height: 250px;
    margin: 0;
  }
  
  .el-carousel__item:nth-child(2n) {
    background-color: #99a9bf;
  }
  
  .el-carousel__item:nth-child(2n+1) {
    background-color: #d3dce6;
  }
  
  .time {
    font-size: 13px;
    color: #999;
  }
  
  .bottom {
    margin-top: 13px;
    line-height: 12px;
  }

  .button {
    padding: 0;
    float: right;
  }

  .image {
    width: 100%;
    display: block;
  }

  .clearfix:before,
  .clearfix:after {
      display: table;
      content: "";
  }
  
  .clearfix:after {
      clear: both
  }
  
</style>
</head>
<body>
<div id="app">
<h1>课程</h1>
<div id="top-swiper">
<el-carousel :interval="4000" type="card" height="150px">
    <el-carousel-item v-for="item in 6" :key="item">
    <!-- <div class="banner" style="background-image:url(https://ossimg.xinli001.com/20200324/c069c91c7313669912795ff7bb981533.jpg?x-oss-process=image/quality,Q_80)">
                               {{ item }} </div> -->
                               
     <h3 class="medium">{{ item }}</h3>
    </el-carousel-item>
  </el-carousel>
</div>

<div id="recommend">
<p>热门推荐</p>
<el-row>
  <el-col :span="8" v-for="(o, index) in 2" :key="o" :offset="index > 0 ? 2 : 0">
    <el-card :body-style="{ padding: '0px' }">
      <img src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png" class="image">
      <div style="padding: 14px;">
        <span>好吃的汉堡</span>
        <div class="bottom clearfix">
          <time class="time">{{ currentDate }}</time>
          <el-button type="text" class="button">操作按钮</el-button>
        </div>
      </div>
    </el-card>
  </el-col>
</el-row>

</div>


<div id="recommend">
<p>热门推荐</p>
<el-row>
  <el-col :span="8" v-for="(o, index) in 2" :key="o" :offset="index > 0 ? 2 : 0">
    <el-card :body-style="{ padding: '0px' }">
      <img src="https://shadow.elemecdn.com/app/element/hamburger.9cf7b091-55e9-11e9-a976-7f4d0b07eef6.png" class="image">
      <div style="padding: 14px;">
        <span>好吃的汉堡</span>
        <div class="bottom clearfix">
          <time class="time">{{ currentDate }}</time>
          <el-button type="text" class="button">操作按钮</el-button>
        </div>
      </div>
    </el-card>
  </el-col>
</el-row>

</div>

</div>

</body>
<script src="${APP_PATH}/js/vue.js"></script>

<script src="${APP_PATH}/js/axios.js"></script>
<!-- 引入组件库 -->
<script src="${APP_PATH}/js/elementui.js"></script>
<script type="text/javascript">
	/* new Vue({
		el:"#app",
		data(){
			return{
				
			}
		},*/
		/* created(){
			axios.get("${APP_PATH }/course/index.do").then(function(response){
				
			})
		} */
		
		/*created(){
			axios.get("${APP_PATH }/course/index.do").then(response=>{
				alert("运行成功");
				
				//alert(JSON.stringify(response));
			})
		}
	}) */
	new Vue().$mount('#app')
</script>
</html>