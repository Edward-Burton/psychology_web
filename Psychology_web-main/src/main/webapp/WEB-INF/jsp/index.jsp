<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>这个首页</title>
</head>
<body>
<h1>来到首页</h1>
<%-- <jsp:forward page="WEB-INF/jsp/article/index.jsp"></jsp:forward> --%>
<%-- <jsp:forward page="article_index.jsp"></jsp:forward> --%>
<a href="${pageContext.request.contextPath}/test.do">test</a>
<a href="${pageContext.request.contextPath}/article/index.do">文章阅读</a>
<%-- <jsp:forward page="/jsp/addarticle.jsp"></jsp:forward> --%>
<a href="${APP_PATH }/article/addArticle.htm">addArticle</a>
<a href="${APP_PATH }/login.htm">登录</a>
<a href="${APP_PATH }/register.htm">注册</a>
</body>
</html>