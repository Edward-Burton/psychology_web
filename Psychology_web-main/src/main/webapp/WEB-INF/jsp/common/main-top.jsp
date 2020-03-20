<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="zh-CN">
<div class="psycho-masthead">
	<div class="container">
		<nav class="psycho-nav">
		<a class="blog-nav-item active" href="${APP_PATH }/index.htm">首页</a>
			<a href="${APP_PATH }/article/index.htm">阅读</a> <a
				class="blog-nav-item" href="#">论坛</a> <a class="blog-nav-item"
				href="#">电台</a> <a class="blog-nav-item" href="#">解忧杂货店</a> <a
				class="blog-nav-item" href="#">About</a> <a
				href="${APP_PATH }/logout.do"><i class="glyphicon glyphicon-off"></i>
				退出系统</a> <a href="#"><i>${loginUser.psychouser_name}</i></a>
		</nav>
	</div>
</div>