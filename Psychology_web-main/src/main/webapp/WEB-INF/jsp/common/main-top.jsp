<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<style>
.header-top {
	border-radius: 0;
	margin-bottom: 0;
	border: none;
	min-height: 68px;
	background: #fff;
}

.wrap {
	padding-left: 15px;
	padding-right: 15px;
	padding-top: 25px;
}

.header-top-left {
	min-width: 700px;
	float: left !important;
}

.header-top-left ul {
	float: left !important;
}

.header-top-left ul li {
	display: inline-block;
}

.header-top-left>ul>li>a {
	padding: 20px 45px;
}

.cssmenu {
	float: right;
	color: #96e8fc;
}

.cssmenu ul {
	float: right !important;
}

.cssmenu ul li {
	display: inline-block;
}

.cssmenu ul li a {
	padding: 20px 5px;
}

.other {
	float: left;
	width: 20.5%;
	margin-right: 10.6%;
}
</style>
<div class="header-top">
	<div class="wrap">
		<div class="header-top-left">
			<ul>
				<li class="active"><a href="${APP_PATH }/index.htm">首页</a></li>
				<li><a href="${APP_PATH }/article/index.htm">阅读</a></li>
				<li><a href="${APP_PATH }/question/index.htm">论坛</a></li>
				<li><a target="_blank" href="http://localhost:8083/#/test">电台</a></li>
				<li><a class="blog-nav-item"
					href="${APP_PATH }/course/index.htm">解忧杂货店</a></li>
			</ul>
		</div>
		<div class="cssmenu">
			<ul>
				<li class="active"><a href="#" data-id="${loginUser.psychouser_id }"><i>${loginUser.psychouser_name}</i></a></li>
				<li><a href="${APP_PATH }/login.htm">登录</a></li>
				<li><a href="${APP_PATH }/register.htm">注册</a></li>
				<li><a href="${APP_PATH }/logout.do">退出系统</a></li>
				<li>
					<div class="other">
						<select tabindex="4" class="dropdown">
							<option value="" class="label" value="">Language :</option>
							<option value="2">French</option>
							<option value="3">German</option>
						</select>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>
<%-- <div class="psycho-masthead">
	<div class="container">
		<nav class="psycho-nav">
		<a class="blog-nav-item active" href="${APP_PATH }/index.htm">首页</a>
			<a href="${APP_PATH }/article/index.htm">阅读</a> <a
				class="blog-nav-item" href="${APP_PATH }/question/index.htm">论坛</a> <a class="blog-nav-item"
				href="http://localhost:8083/#/test">电台</a> 
				<a class="blog-nav-item" href="${APP_PATH }/course/index.htm">解忧杂货店</a> 
				<a class="blog-nav-item" href="#">About</a> <a
				href="${APP_PATH }/logout.do"><i class="glyphicon glyphicon-off"></i>
				退出系统</a> <a href="#"><i>${loginUser.psychouser_name}</i></a>
		</nav>
	</div>
</div> --%>