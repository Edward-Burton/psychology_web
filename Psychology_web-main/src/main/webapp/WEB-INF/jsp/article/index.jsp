<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${APP_PATH }/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${APP_PATH }/css/font-awesome.min.css">
<link rel="stylesheet" href="${APP_PATH }/css/main.css">
</head>
<body>
	<h1>文章显示</h1>
	<%-- <div class="btn-group">
		<button type="button">
			${sessionScope.loginUser.psychouser_name}</button>
		<ul class="dropdown-menu" role="menu">
			<li><a href="#"><i></i>个人中心</a></li>
			<li><a href="#"><i></i>设置</a></li>
			<li class="divider"></li>
			<li><a href="${APP_PATH}/logout.do"><i></i>退出系统</a></li>
		</ul>
	</div> --%>
	<div>
		<ul>
			<%--百分号注释(JSP注释)不参与编译，不会生成到源码中，
	感叹号(HTML注释)注释会参与编译 ，会生成到源码中，所以，不能使用html注释EL表达式和JSTL标签库
	故如<!-- ${sessionScope.user.username}--> 仍会把用户名输出给页面，可在浏览器查看源码显示--%>

			<!-- 动态包含：被包含的页面也会独立编译，生成字节码文件。 
	--><jsp:include page="/WEB-INF/jsp/common/main-top.jsp"></jsp:include>

			<!-- 静态包含：被包含的页面 不会生成独立字节码文件。
		  将所包含的页面内容加入到当前页面，一起进行编译。
	-->
			<%--<%@ include file="/WEB-INF/jsp/common/main-top.jsp" %> --%>
		</ul>
	</div>

	<hr style="clear:both;">
          <div class="table-responsive">
            <table class="table  table-bordered">
              <thead>
                <tr >
                  <th width="30">#</th>
				  <th width="30"><input type="checkbox"></th>
                  <th>标题</th>
                  <th>发布时间</th>
                  <th width="100">图片</th>
                </tr>
              </thead>
              <tbody>
              
              
              	<c:forEach items="${page.data}" var="pa" varStatus="status">
	                <tr>
	                  <td>${status.count }</td>
					  <td><input type="checkbox"></td>
	                  <td>${pa.articleTitle }</td>
	                  <td>${pa.pubTime }</td>
	                  <td>${pa.articleImg }</td>
	                  <td>
					      <button type="button" class="btn btn-success btn-xs"><i class=" glyphicon glyphicon-check"></i></button>
					      <button type="button" class="btn btn-primary btn-xs"><i class=" glyphicon glyphicon-pencil"></i></button>
						  <button type="button" class="btn btn-danger btn-xs"><i class=" glyphicon glyphicon-remove"></i></button>
					  </td>
	                </tr>
                </c:forEach>
              </tbody>
			  <tfoot>
			     <tr >
				     <td colspan="6" align="center">
						<ul class="pagination">
								<c:if test="${page.pageno==1 }">
									<li class="disabled"><a href="#">上一页</a></li>
								</c:if>
								<c:if test="${page.pageno!=1 }">
									<li><a href="#" onclick="pageChange(${page.pageno-1})">上一页</a></li>
								</c:if>
								
								<c:forEach begin="1" end="${page.totalno}" var="num">
									<li 
										<c:if test="${page.pageno == num}">
											class="active"
										</c:if>									
									><a href="#" onclick="pageChange(${num})">${num }</a></li>									
								</c:forEach>								
								
								<c:if test="${page.pageno==page.totalno }">
									<li class="disabled"><a href="#">下一页</a></li>
								</c:if>
								<c:if test="${page.pageno!=page.totalno }">
									<li><a href="#" onclick="pageChange(${page.pageno+1})">下一页</a></li>
								</c:if>
						</ul>
					 </td>
				 </tr>

			  </tfoot>
            </table>
          </div>

		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<script src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
		<script src="${APP_PATH }/script/docs.min.js"></script>
		<script type="text/javascript">
			$(function() {
				$(".list-group-item").click(function() {
					if ($(this).find("ul")) {
						$(this).toggleClass("tree-closed");
						if ($(this).hasClass("tree-closed")) {
							$("ul", this).hide("fast");
						} else {
							$("ul", this).show("fast");
						}
					}
				});

			});
			
			function pageChange(pageno){
            	window.location.href="${APP_PATH}/article/index.do?pageno="+pageno ;
            }
			
		</script>
</body>
</html>