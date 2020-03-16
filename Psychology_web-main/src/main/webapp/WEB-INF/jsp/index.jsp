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
<a href="${pageContext.request.contextPath}/Article.do">showArticle</a>
<%-- <jsp:forward page="/jsp/addarticle.jsp"></jsp:forward> --%>
<a href="${APP_PATH }/addArticle.htm">addArticle</a>
<a href="${APP_PATH }/login.htm">登录</a>
<form action="${pageContext.request.contextPath }/regist.do">
		<table border="1">
			<tr>
				<td>用户名</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>密码</td>
				<td><input type="text" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="注册"></td>
			</tr>
		</table>
	</form>
</body>
</html>