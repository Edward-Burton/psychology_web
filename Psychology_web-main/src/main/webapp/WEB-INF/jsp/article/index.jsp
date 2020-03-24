<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>阅读模块</title>
<link rel="stylesheet"
	href="${APP_PATH }/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${APP_PATH }/css/font-awesome.min.css">
<link rel="stylesheet" href="${APP_PATH }/css/main.css">
</head>
<body>
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
			<jsp:include page="/WEB-INF/jsp/common/main-top.jsp"></jsp:include>
		</ul>
	</div>


	<a href="${APP_PATH }/article/toAddArticle.htm">写文章</a>


	<div class="category_tree">
		<a  href="#"
			onclick="querybycategoryId()">全部
		</a>
		<ul class="list-group">
			<c:forEach items="${category}" var="c" varStatus="status">
				<li class="list-group-item tree-closed"><span><a
						href="#" onclick="queryCategorys(${c.psycho_category_id})">${c.psycho_category_name}
					</a> <!-- <span class="badge"
					style="float: right">3</span> --></span>

					<ul class="category-list" style="margin-top: 10px; display: none;">
						<!-- <li style="height: 30px;"><a href="#">全部</a></li> -->
						<!--<li style="height: 30px;"><a href="#">子分类1</a></li>
					<li style="height: 30px;"><a href="#">子分类2</a></li>
					<li style="height: 30px;"><a href="#">子分类3</a></li>
					<li style="height: 30px;"><a href="#">子分类4</a></li> -->
					</ul></li>

			</c:forEach>
			<!-- <li><span>文章分类 <span class="badge" style="float: right">3</span></span></li>
			<li class="list-group-item tree-closed">
				<span><i>头</i></span> <span>文章分类 <span class="badge"
					style="float: right">3</span></span>

				<ul style="margin-top: 10px; display: none;">
					<li style="height: 30px;"><a href="#">心理科普</a></li>
					<li style="height: 30px;"><a href="#">婚姻感情</a></li>
					<li style="height: 30px;"><a href="#">家庭关系</a></li>
					<li style="height: 30px;"><a href="#">人际社交</a></li>
				</ul>
			</li>
			<li class="list-group-item tree-closed">
				<span><i>头</i></span> <span>文章分类 <span class="badge"
					style="float: right">3</span></span>

				<ul style="margin-top: 10px; display: none;">
					<li style="height: 30px;"><a href="#">心理科普</a></li>
					<li style="height: 30px;"><a href="#">婚姻感情</a></li>
					<li style="height: 30px;"><a href="#">家庭关系</a></li>
					<li style="height: 30px;"><a href="#">人际社交</a></li>
				</ul>
			</li> -->
		</ul>
	</div>

	<form class="form-inline" role="form" style="float: left;">
		<div class="form-group has-feedback">
			<div class="input-group">
				<div class="input-group-addon">查询条件</div>
				<input id="queryText"  class="form-control has-success" type="text"
					placeholder="请输入查询条件">
			</div>
		</div>
		<button id="queryBtn" type="button" class="btn btn-warning">
			<i class="glyphicon glyphicon-search"></i> 查询
		</button>
	</form>

	<hr style="clear: both;">
	<div class="table-responsive">
		<table class="table  table-bordered">
			<thead>
				<tr>
					<th width="30">#</th>
					<th width="30"><input type="checkbox"></th>
					<th>标题</th>
					<th>发布时间</th>
					<th width="100">图片</th>
				</tr>
			</thead>
			<tbody>


				<%-- <c:forEach items="${page.data}" var="pa" varStatus="status">
	                <tr>
	                  <td>${status.count }</td>
					  <td><input type="checkbox"></td>
	                  <td><a>${pa.articleTitle }</a></td>
	                  <td>${pa.pubTime }</td>
	                  <td>${pa.articleImg }</td>
	                  <td>
					      <button type="button" class="btn btn-success btn-xs"><i class=" glyphicon glyphicon-check"></i></button>
					      <button type="button" class="btn btn-primary btn-xs"><i class=" glyphicon glyphicon-pencil"></i></button>
						  <button type="button" class="btn btn-danger btn-xs"><i class=" glyphicon glyphicon-remove"></i></button>
					  </td>
	                </tr> 
                </c:forEach> --%>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="6" align="center">
						<ul class="pagination">
							<%-- 
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
								--%>
						</ul>
					</td>
				</tr>

			</tfoot>
		</table>
	</div>

	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
	<%-- 	<script src="${APP_PATH }/script/docs.min.js"></script> --%>
	<script type="text/javascript" src="${APP_PATH}/jquery/layer/layer.js"></script>
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
				
				var href = window.location.href;
				var host = window.location.host;
				var index = href.indexOf(host);
				var path = href.substring(index + host.length)

				var contextPath = "${APP_PATH}";
				var pathAddress = path.substring(contextPath.length);
				//alert(pathAddress);
				var alink = $(".psycho-nav a[href*='" + pathAddress + "']");

				alink.css("color", "purple")

				
			});
			queryPageArticle(1);
			showMenu();
		});
		
		function queryCategorys(categoryid){
			$
			.ajax({
				type : "POST",
				data : {"parentid":categoryid},
				url : "${APP_PATH}/article/doCategory.do",
				beforeSend : function() {
					loadingIndex = layer.load(2, {
						time : 10 * 1000
					});
					return true;
				},
				success : function(result) {
					layer.close(loadingIndex);
					if (result.success) {
						var data = result.data;
						//页面拿到数据后，获得tbody,然后向其中赋值，对页面标签进行拼串操作

						var content ='<li style="height: 30px;"><a href="#" onclick="querybycategoryId('
							+ categoryid+')">全部</a></li>';
						//var content = '';
						$
								.each(
										data,
										function(i, ca) {//i表示索引，ca表示data中的每一个元素
											
											content += '<li style="height: 30px;"><a href="#" onclick="querybycategoryId('
													+ ca.psycho_category_id+')">'+ca.psycho_category_name+'</a></li>'
											
										});

						$(".category-list").html(content);

					} else {
						layer.msg(result.message, {
							time : 1000,
							icon : 5,
							shift : 6
						});
					}
				},
				erro : function() {
					layer.msg("加载数据失败", {
						time : 1000,
						icon : 5,
						shift : 6
					});
				}
			});
		}

		function showMenu() {
			var href = window.location.href;
			var host = window.location.host;
			var index = href.indexOf(host);
			var path = href.substring(index + host.length)

			var contextPath = "${APP_PATH}";
			var pathAddress = path.substring(contextPath.length);
			//alert(pathAddress);
			var alink = $(".psycho-nav a[href*='" + pathAddress + "']");

			alink.css("color", "purple")
		}

		function pageChange(pageno) {
			//window.location.href="${APP_PATH}/article/index.do?pageno="+pageno ;
			queryPageArticle(pageno);
		}

		var loadingIndex = -1;

		var jsonArticle = {
			"pageno" : 1,
			"pagesize" : 3
		};

		function queryPageArticle(pageno) {
			jsonArticle.pageno = pageno;
			$
					.ajax({
						type : "POST",
						data : jsonArticle,
						url : "${APP_PATH}/article/doIndex.do",
						beforeSend : function() {
							loadingIndex = layer.load(2, {
								time : 10 * 1000
							});
							return true;
						},
						success : function(result) {
							layer.close(loadingIndex);
							if (result.success) {
								var page = result.page;
								var data = page.data;
								//页面拿到数据后，获得tbody,然后向其中赋值，对页面标签进行拼串操作

								var content = '';
								$
										.each(
												data,
												function(i, pa) {//i表示索引，n表示data中的每一个元素
													content += '<tr>';
													content += '<td>' + (i + 1)
															+ '</td>';
													content += '<td><input type="checkbox"></td>';
													content += '<td><a  href="#" onclick="window.location.href=\'${APP_PATH}/article/toArticle.htm?id='
															+ pa.articleId
															+ '\'">'
															+ pa.articleTitle
															+ '</a></td>';
													content += '<td><img src="'
															+ pa.articleImg
															+ '"/></td>';
													content += '<td>'
															+ pa.pubTime
															+ '</td>';
													content += '<td>';
													/* content += '    <button type="button" class="btn btn-success btn-xs"><i class=" glyphicon glyphicon-check"></i></button>';
													content += '    <button type="button" class="btn btn-primary btn-xs"><i class=" glyphicon glyphicon-pencil"></i></button>';
													content += '  <button type="button" class="btn btn-danger btn-xs"><i class=" glyphicon glyphicon-remove"></i></button>'; */
													content += '</td>';
													content += '</tr>';
												});
								//实现局部刷新
								$("tbody").html(content);
								//alert("需要进行局部刷新"+data);

								//分页部分局部刷新
								var contentPagebar = '';
								//使用JS中的做判断操作

								if (page.pageno == 1) {
									contentPagebar += '<li class="disabled"><a href="#">上一页</a></li>';
									//因内部要使用双引号，JS要拼串都用单引号拼串
								} else {
									contentPagebar += '<li><a href="#" onclick="pageChange('
											+ (page.pageno - 1)
											+ ')">上一页</a></li>';
								}

								for (var i = 1; i <= page.totalno; i++) {
									contentPagebar += '<li';
									if (page.pageno == i) {
										contentPagebar += ' class="active"';//注意此处有空格
									}
									contentPagebar += '><a href="#" onclick="pageChange('
											+ i + ')">' + i + '</a></li>';
								}

								if (page.pageno == page.totalno) {
									contentPagebar += '<li class=disabled><a href="#">下一页</a></li>';
								} else {
									contentPagebar += '<li><a href="#" onclick="pageChange('
											+ (page.pageno + 1)
											+ ')">下一页</a></li>';
								}

								$(".pagination").html(contentPagebar);

							} else {
								layer.msg(result.message, {
									time : 1000,
									icon : 5,
									shift : 6
								});
							}
						},
						erro : function() {
							layer.msg("加载数据失败", {
								time : 1000,
								icon : 5,
								shift : 6
							});
						}
					});
		}

		$("#queryBtn").click(function() {
			var queryText = $("#queryText").val();
			jsonArticle.queryText = queryText;
			/* alert(queryText); */
			queryPageArticle(1);
		});
		
		/* $(".category-list li a").click(function{
			
		}); */
		
		function querybycategoryId(categoryid){
			var categoryid = categoryid;
			jsonArticle.categoryId = categoryid;
			/* alert(queryText); */
			queryPageArticle(1);
		}
		
	</script>
</body>
</html>