<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>文章显示</h1>
	<div class="row">
		<div class="col-sm-6 col-md-4">
			<div class="thumbnail">
				<img src="..." alt="...">
				<div class="caption">
					<h3>文字标题</h3>
					<div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading">Panel heading</div>
						<div class="panel-body">
							<p>...</p>
						</div>

						<!-- Table -->
						<table class="table">
							<ul th:each="user:${articlelist}">
								<li th:text="${user.articleTitle}">标题</li>
							</ul>
							<tr></tr>
							<tr></tr>
							<tr></tr>
						</table>
					</div>
				</div>
			</div>
		</div>
</body>
</html>