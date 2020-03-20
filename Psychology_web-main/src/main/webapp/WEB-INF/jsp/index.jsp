<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="${APP_PATH }/bootstrap/css/bootstrap.min.css">
<title>这个首页</title>
</head>
<body>
	<div>
		<ul>
			<%--百分号注释(JSP注释)不参与编译，不会生成到源码中，
	感叹号(HTML注释)注释会参与编译 ，会生成到源码中，所以，不能使用html注释EL表达式和JSTL标签库
	故如<%-- <!-- ${sessionScope.user.username}-->  --%>
			<!-- 仍会把用户名输出给页面，可在浏览器查看源码显示 -->


			<!-- 动态包含：被包含的页面也会独立编译，生成字节码文件。 
	-->
			<jsp:include page="/WEB-INF/jsp/common/main-top.jsp"></jsp:include> 

			<!-- 静态包含：被包含的页面 不会生成独立字节码文件。
		  将所包含的页面内容加入到当前页面，一起进行编译。
	-->
			<%--<%@ include file="/WEB-INF/jsp/common/main-top.jsp" %> --%>
		</ul>
	</div>
	<div class="container">

		
		<div class="jumbotron">
			<%-- <jsp:forward page="WEB-INF/jsp/article/index.jsp"></jsp:forward> --%>
			<%-- <jsp:forward page="article_index.jsp"></jsp:forward> --%>
			<a href="${APP_PATH }/test.do">test</a> <a
				href="${APP_PATH }/article/index.htm">文章阅读</a>
			<%-- <jsp:forward page="/jsp/addarticle.jsp"></jsp:forward> --%>

			<a href="${APP_PATH }/login.htm">登录</a> <a
				href="${APP_PATH }/register.htm">注册</a>
		</div>
	</div>
	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
	
	<script type="text/javascript">
	$(function() {

		var href = window.location.href;
		alert(href);
		
	});
	</script>
	
</body>
</html>