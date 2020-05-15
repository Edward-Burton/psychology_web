<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<link rel="stylesheet" href="https://unpkg.com/element-ui@1.4/lib/theme-default/index.css">
		<style>
			a {
			    outline: 0;
			    color: #444;
			}
			
			li, ul {
			    list-style: none;
			    padding: 0;
			    margin: 0;
			}
			body, h1, h2, h3, h4, h5, h6, img, li, ol, p, ul {
			    margin: 0;
			    padding: 0;
			}
			
			body {
			    color: #111;
				font-size: 12px;
			}
			
			.header-container{
				width: 100%;
				height: 72px;
				background-color: #fff;
				position: fixed;
				z-index: 10;
				border-bottom: 1px solid #ddd;
			}
			
			.header-container .header-cont {
			    position: relative;
			    width: 980px;
			    min-width: 980px;
			    height: 72px;
			    margin: 0 auto;
			}
			
			.header-container a {
			    text-decoration: none;
			    outline: 0;
			    position: relative;
			}
			
			.header-container .header-cont .logo-image {
			    float: left;
			    display: inline-block;
			    width: 100px;
			    height: 100%;
			    background: url(https://static.xinli001.com/yixinliPC/static/img/5a2401f….png) 50% no-repeat;
			    background-size: 100%;
			}
			
			.header-container .navbar {
			    float: left;
			    height: 72px;
			    margin-left: 10px;
			}
			
			.header-container .pc-login, .header-container .pc-register{
			    float: right;
			    height: 72px;
			    width: 67px;
			    line-height: 72px;
			    margin-left: 30px;
			    cursor: pointer;
			    color: #0b8bff;
			    text-align: center;
			    font-size: 16px;
			}
			
			.header-container .header-cont .navbar .border-right {
			    position: absolute;
			    height: 22px;
			    display: inline-block;
			    width: 1px;
			    border-right: 1px dashed #ccc;
			    border-right-width: 1px;
			    border-right-style: dashed;
			    border-right-color: rgb(204, 204, 204);
			    top: -3px;
			    right: 0;
			}
			
			.header-container .header-cont .navbar .navbar-item {
			    display: inline-block;
			    height: 72px;
			    line-height: 72px;
			    padding: 0 15px;
			    font-size: 14px;
			    color: #000;
			    cursor: pointer;
			    position: relative;
			}
			
			.header-container .user-center .notice {
			    float: left;
			    cursor: pointer;
			    line-height: 78px;
			    width: 52px;
			    text-align: center;
			    position: relative;
			    height: 72px;
			}
			
			
			.header-container .user-center .notice .message-content {
			    position: absolute;
			    top: 72px;
			    left: 0;
			    width: 236px;
			    font-size: 16px;
			    color: #333;
			    background: #fff;
			    box-shadow: 0 4px 14px 0 rgba(0,0,0,.23);
				display: none;
			    z-index: 10;
			}
			
			
			.header-container .user-center .notice .show{ 
				display:block 
			}
			
			.header-container .user-center .notice:hover .notice .message-content { 
				display:block 
			}
			
			.header-container .user-center .notice .message-content .private-message {
			    height: 45px;
			    line-height: 45px;
			    padding-left: 16px;
			    text-align: left;
			    padding-top: 4px;
			}
			
			.header-container .user-center .notice .message-content .private-message:hover {
			    background: #eef1f6;
			}
			
			.header-container .user-center .notice .message-content .all-message-show {
			    border-top: 1px solid #e1e1e1;
			    height: 50px;
			    line-height: 50px;
			}
			
			.header-container .user-center .notice .message-content .all-message-show:hover {
			    background: #eef1f6;
			}
			
			.header-container .user-center .notice .message-content .all-message-show a {
			    display: block;
			    color: #0b8bff;
			}
			
			.header-container .user-center .avatar {
			    position: relative;
			    float: left;
			    width: 50px;
			    text-align: center;
			    padding-top: 4px;
			    cursor: pointer;
			    height: 72px;
			}
			
			.header-container .user-center .avatar .avatar-img {
			    margin-top: 7px;
			    width: 50px;
			    height: 50px;
			    border-radius: 50%;
			}
			
			
			.header-container .user-center .avatar .show-list {
			    position: absolute;
			    top: 72px;
			    left: 0;
			    width: 160px;
			    background: #fff;
			    box-shadow: 0 4px 14px 0 rgba(0,0,0,.23);
			    font-size: 14px;
			    display: none;
			    z-index: 10;
			}
			
			
			.header-container .user-center .avatar .show{
				display: block;
			}
			
			.header-container .user-center .avatar:hover .header-container .user-center .avatar .show-list{
				display: block;
			}
			
			
			.header-container .user-center .avatar .show-list ul {
			    border-bottom: 1px solid #e1e1e1;
			}
			
			.header-container .user-center .avatar .show-list ul li:first-child {
			    margin-top: 10px;
			}
			
			.header-container .user-center .avatar .show-list .list-item {
			    height: 50px;
			    line-height: 50px;
			    text-align: left;
			    padding-left: 16px;
			}
			
			.header-container .user-center .avatar .show-list .list-item:hover {
			    background: #eef1f6;
			}
			
			.header-container .user-center .avatar .show-list a {
			    text-decoration: none;
			    outline: 0;
			    color: #000;
			    display: block;
			}
			
			.header-container .user-center .avatar .log-out {
			    color: #ff5b5b;
			    height: 46px;
			    line-height: 46px;
			    cursor: auto;
			}
			
			.header-container .user-center .avatar .log-out:hover{
				color: #0b8bff;
			}
			
			.header-container .user-center .avatar .log-out a {
			    cursor: pointer;
			    color: #ff5b5b;
			}
			
		</style>
		<div class="header-container">
			<div class="header-cont">

				<a href="${APP_PATH }/index.htm">
					<span class="logo-image"></span>
				</a>
				<ul class="navbar">

					<a href="${APP_PATH }/index.htm">
						<div class="border-right" style="top:-3px"></div>
						<li class="navbar-item ">首页</li>
					</a>
					<a target="_blank" href="${APP_PATH }/article/index.htm">
						<li class="navbar-item ">阅读</li>
					</a>
					<a target="_blank" href="${APP_PATH }/question/index.htm">
						<li class="navbar-item "><span>问答</span>
							<!-- <div class="today-essence" style="display: block;">今日精华 99+</div>
							<div class="arrow" style="display: block;"></div> -->
						</li>
					</a>
					<a target="_blank" href="http://localhost:8083/">
						<div class="border-right" style="position: absolute"></div>
						<li class="navbar-item ">电台</li>
					</a>
					<a target="_blank" href="javascript:void(0)">
						<li class="navbar-item ">测试</li>
					</a>
					<a target="_blank" href="${APP_PATH }/course/index.htm">
						<div class="border-right" style="position: absolute"></div>
						<li class="navbar-item ">课程</li>
					</a>
					<a target="_blank" href="${APP_PATH }/good/index.htm">
						<div class="border-right" style="position: absolute"></div>
						<li class="navbar-item ">解忧杂货店</li>
					</a>
					<a target="_blank" href="javascript:void(0)">
						<li class="navbar-item ">心理咨询
						</li>
					</a>
					<a target="_blank" href="${APP_PATH }/user/toContent.htm">
						<li class="navbar-item qingsu-item">内容管理</li>
					</a>
				</ul>
				<div id="header-auth-user-div">
					<div v-if="user==null">
						<div class="pc-login">
							<a target="_blank" href="${APP_PATH }/login.htm">
					        	<span class="txt">登录</span>
					        </a>
					    </div>
					    
					    <div class="pc-register">
					    	<a target="_blank" href="${APP_PATH }/register.htm">
					        	<span class="txt">注册</span>
					        </a>
					    </div>
					</div>
					
					<div class="user-center" v-if="user!=null">
						<div>
							<div class="notice" @mouseover="nmouseover" @mouseleave="mouseLeave">
								<a target="_blank" class="common-a" href="javascript:void(0)">
									<img class="el-icon-message" src="" alt="">
								</a>
								<div class="message-content" :class="{show:message==1}"><a target="_blank" class="common-a" href="#">
									</a>
									<p class="private-message"><a target="_blank" class="common-a" href="#">
										</a><a target="_blank" class="common-a" href="#">
											私信（<span class="message-num">0</span>）
										</a>
									</p>
									<p class="private-message">
										<a target="_blank" class="common-a" href="#">
											系统通知（<span class="message-num">0</span>）
										</a>
									</p>
									<p class="private-message">
										<a target="_blank" class="common-a" href="#">
											消息（<span class="message-num">0</span>）
										</a>
									</p>
									<p class="private-message">
										<a target="_blank" class="common-a" href="#">
											评论回答（<span class="message-num">0</span>）
										</a>
									</p>

									<p class="all-message-show">
										<a target="_blank" href="#">查看全部消息</a>
									</p>
								</div>

							</div>
						</div>
						<div class="avatar" @mouseover="anmouseover" @mouseleave="mouseLeave">
							<div class="avatar-header-container"  v-if="user!=null" >
								<a target="_blank" href="#" data-id="${loginUser.psychouser_id}">
									<img class="avatar-img" src="${APP_PATH}/${loginUser.psychouser_head_portrait}"
									 width="30" height="30">
								</a>
								<div class="show-list" :class="{show:avatar==1}">
									<ul>
										<li class="list-item"><a href="#">管理中心</a></li>
										<li class="list-item"><a href="#">个人主页</a></li>
										<li class="list-item"><a href="#">我的问答</a></li>
										<li class="list-item"><a href="#">我的课程 (<span class="personal-num">0</span>)</a></li>
										<li class="list-item"><a href="#">专业版测评</a></li>
										<li class="list-item"><a href="#">我的文章</a></li>
									</ul>
									<p class="log-out">
										<a href="${APP_PATH }/logout.do" target="_self">退出</a>
									</p>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div style="clear:both;overflow: hidden; padding-bottom: 72px"></div>
		<script src="${APP_PATH }/js/vue.js"></script>
		<script src="${APP_PATH }/js/axios.js"></script>
		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<script src="https://unpkg.com/element-ui/lib/index.js"></script>
		<script type="text/javascript">
			let user="${loginUser}";
			var header = new Vue({
				  el: '.header-container',
				  data () {
				    return {
				      user:null,
				      message:0,
				      avatar:0
				    }
				  },
				  created() {
					  if(user!=null&&user!=""){
						  this.user=user;
					  }
				  },
				  watch: {
					  
				  },
				  methods: {
					  anmouseover(){
						  this.avatar=1;
					  },
					  
					  nmouseover(){
						  this.message=1;
					  },
					  
					  mouseLeave(){
						  this.message=0;
						  this.avatar=0;
					  }
				  }
			})
		</script>
</html>
