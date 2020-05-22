<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<style>
body {
	background-color: #f3f4f5;
	color: #000000
}

html * {
	outline: 0;
	zoom: 1;
}

a {
	text-decoration: none;
}

.main-container {
	width: 1180px;
	height: 100%;
	margin: 0 auto;
	display: flex;
	padding-top: 20px;
	align-items: flex-start;
}

.main-left-container {
	width: 800px;
}

.left-main {
	border-radius: 10px;
	padding: 30px;
}

.white-bg {
	background: #fff;
}

.tag-m .first-tag {
	display: flex;
	justify-content: space-between;
	padding: 18px 0 0;
	margin: 0;
}

.tag-m li {
	list-style: none;
	display: inline-block;
}

.tag-m .first-tag li.selected a, .tag-m .first-tag li a:hover {
	color: #0b8bff;
}

.tag-m li a {
	font-family: PingFangSC-Regular;
	font-size: 16px;
	color: #666;
	line-height: 18px;
	text-decoration: none;
}

.tag-m #secondTagM {
	margin-top: 18px;
}

.tag-m .second-tag {
	background-color: #f3f4f5;
	border-radius: 4px;
}

.tag-m .second-tag ul {
	display: block;
	padding: 5px 10px 15px 0;
	list-style-type: none;
	font-size: 0;
}

.tag-m .second-tag li {
	margin-left: 30px;
	margin-top: 10px;
}

.tag-m .second-tag li a {
	color: #999;
	font-size: 14px;
}

.tag-m .second-tag li.selected a, .tag-m .second-tag li a:hover {
	color: #0b8bff;
}

#articleListM .item {
	margin-top: 52px;
	display: flex;
	position: relative;
	font-size: 0;
}

#articleListM .item img {
	height: 98px;
	width: 98px;
	max-width: 98px;
	object-fit: cover;
}

a img, fieldset {
	border: 0;
}

#articleListM .item .right {
	margin-left: 18px;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	flex-direction: column;
	-webkit-box-pack: justify;
	justify-content: space-between;
}

.right {
	float: right;
}

#articleListM .item .right .title {
	font-weight: 700;
	font-family: PingFangSC-Medium;
	font-size: 20px;
	color: #333;
	padding-right: 80px;
	max-height: 20px;
}

#articleListM .item .right .desc, #articleListM .item .right .title {
	line-height: 20px;
	display: -webkit-box;
	-webkit-box-orient: vertical;
	overflow: hidden;
}

#articleListM .item .right .content{
	max-height: 100px;
    overflow: hidden;
}

#articleListM .item .right .desc {
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #666;
	max-height: 40px;
	-webkit-line-clamp: 2;
}

#articleListM .item .statistics {
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #ccc;
	position: absolute;
	right: 0;
	top: 0;
}

#articleListM .item .right .info a {
	background: #f1f5f9;
	border-radius: 19px;
	font-family: PingFangSC-Regular;
	font-size: 12px;
	color: #999;
	padding: 2px 10px;
	text-decoration: none;
	margin-left: 18px;
	line-height: 12px;
}

#articleListM .item .right .info span {
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #999;
	margin-left: 18px;
	line-height: 14px;
}

#articleListM .item .right .info span:first-child {
	margin-left: 0;
}

#articleListM .item .right .info a:first-child {
	background-color: transparent;
	margin-left: 0;
	padding: 0;
}

#articleListM .item .right .info a:first-child span {
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #999;
	line-height: 14px;
}

.main-right-container {
	width: 360px;
	margin-left: 20px;
	border-radius: 10px;
	padding: 20px;
}

.white-bg {
	background: #fff;
}

.main-left-container .page-wrap .pagination {
	text-align: center;
	margin-top: 40px;
	margin-bottom: 50px;
}

.main-left-container .page-wrap .pagination li {
	width: 40px;
	height: 40px;
	line-height: 40px;
	text-align: center;
	font-size: 14px;
	color: #666;
	background-color: #fff;
	display: inline-block;
	margin-right: 5px;
	border-radius: 3px;
	font-weight: 700;
	cursor: pointer;
}

.main-left-container .page-wrap .pagination .active {
	color: #fff;
	background-color: #0b8bff;
}

.main-left-container .page-wrap .pagination li a {
	display: block;
}

.main-right-container .adver {
	display: block;
	width: 100%;
}

.main-right-container .adver img {
	width: 100%;
	height: auto;
}

.main-right-container .activity-m {
	margin-top: 20px;
}

.main-right-container .activity-m .item {
	display: block;
	width: 100%;
	margin-top: 20px;
	padding-left: 10px;
	position: relative;
	font-family: PingFangSC-Regular;
	font-size: 16px;
	color: #333;
	line-height: 16px;
	text-decoration: none;
}

.main-right-container .qcode {
	margin-top: 20px;
	width: 360px;
	height: 100px;
}

.main-right-container .qcode .qcode-img {
	width: 360px;
}

.main-right-container .theme-list {
	margin-top: 45px;
}

.main-right-container .theme-list .item {
	display: block;
	margin-top: 20px;
	text-decoration: none;
}

.main-right-container .theme-list .item .title {
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #333;
}

.main-right-container .theme-list .item .detail {
	font-family: PingFangSC-Regular;
	font-size: 14px;
	color: #999;
	line-height: 20px;
	margin-top: 3px;
}

.main-right-container .entrance-m {
	margin-top: 30px;
	display: flex;
}

.main-right-container .entrance-m a {
	display: block;
	text-decoration: none;
	background: #0b8bff;
	border-radius: 8px;
	width: 150px;
	height: 42px;
	line-height: 42px;
	color: #fff;
	font-family: PingFangSC-Regular;
	font-size: 16px;
	text-align: center;
}

.main-right-container .entrance-m .all-theme {
	margin-left: 20px;
}
</style>
</head>
<body>
	<div>
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
	</div>

	<div class="main-container">
		<%-- <div>
			<ul>
				<jsp:include page="/WEB-INF/jsp/common/main-top.jsp"></jsp:include>
			</ul>
		</div> --%>
		<!-- 左边 -->
		<div class="main-left-container">
			<div class="left-main white-bg">
				<!-- 文章标签 -->
				<div class="tag-m">
					<ul class="first-tag">
						<li class="selected open"><a href="#">全部</a></li>
						<c:forEach items="${category}" var="c" varStatus="status">
							<li><a href="javascript:void(0)"
								data-category-id="${c.psycho_category_id}">${c.psycho_category_name}</a></li>
						</c:forEach>
					</ul>

					<div id="secondTagM">
						<div class="second-tag showed-second-tag"></div>
						<div class="second-tag" style="display: none;">
							<ul class="selector-tag">
								<!-- 全部标签 -->
								<li><a href="#" data-category-id="792">全部</a></li>
								<c:forEach items="${subcategory}" var="sub" varStatus="status">
									<li><a href="javascript:void(0)"
										data-category-id="${sub.psycho_category_id}"
										data-p-category-id="${sub.psycho_category_parentid}">${sub.psycho_category_name}</a></li>
								</c:forEach>
							</ul>
						</div>
					</div>

				</div>
				<!-- 文章列表 -->
				<div id="articleListM"></div>

			</div>
			<div class="page-wrap">
				<div class="">
					<ul class="pagination">
					</ul>
				</div>
			</div>
		</div>
		<!-- 右侧边栏 -->
		<div class="main-right-container white-bg">
			<!-- 主题列表 -->
			<div class="theme-list">
				<a target="_blank" href="#" class="item">
					<p class="title">
						<span>#抑郁者</span>&nbsp;&nbsp;<span>98篇</span>
					</p>
					<p class="detail">关于抑郁情绪、抑郁症。</p>
				</a> <a target="_blank" href="#" class="item">
					<p class="title">
						<span>#复原力与逆商</span>&nbsp;&nbsp;<span>9篇</span>
					</p>
					<p class="detail">失败和不完美不可怕，如何保持激情才是重要的~</p>
				</a>

			</div>
			<div class="entrance-m">
				<a target="_blank" href="${APP_PATH }/article/toAddArticle.htm" class="write-article">写文章</a>
				<a target="_blank" href="#" class="all-theme">全部主题</a>
			</div>
		</div>
	</div>

	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script type="text/javascript" src="${APP_PATH}/jquery/layer/layer.js"></script>
	<script type="text/javascript">
		$(function() {
			queryPageArticle(1);
		})

		/* function queryCategorys(categoryid) {
			$
					.ajax({
						type : "POST",
						data : {
							"parentid" : categoryid
						},
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
								var content = '<li class="selected"><a href="javascript:void(0)" data-category-id="'
										+ categoryid + '">全部</a></li>';
								$
										.each(
												data,
												function(i, ca) {//i表示索引，ca表示data中的每一个元素

													content += '<li><a href="javascript:querybycategoryId('
															+ ca.psycho_category_id
															+ ')" data-category-id="'
															+ ca.psycho_category_id
															+ '">'
															+ ca.psycho_category_name
															+ '</a></li>'

												});

								$(".selector-tag").html(content);

							} else {
								layer.msg(result.message, {
									time : 1000,
									icon : 5,
									shift : 6
								});
							}
						},
						error : function() {
							layer.msg("加载数据失败", {
								time : 1000,
								icon : 5,
								shift : 6
							});
						}
					});
		} */

		$(".first-tag li a")
				.click(
						function() {
							var first_tag = $(this).parent();
							first_tag.addClass("selected").siblings()
									.removeClass("selected");
							if (first_tag.index() != 0) {
								var data_category_id = $(this).attr(
										"data-category-id");
								$(".second-tag li").eq(0).find("a").attr("data-category-id",data_category_id);
								/* 获取以这个类为父类的所有子类的文章 */
								querybypcategoryId(data_category_id);
								var sub_categorys = $(".second-tag li");

								// 如果展开
								if (first_tag.hasClass("expand")) {
									first_tag.removeClass("expand");
									$(".second-tag").css("display", "none");
								}

								// 如果没展开
								else {
									first_tag.siblings().removeClass("expand");
									first_tag.addClass("expand");
									$(".second-tag").css("display", "block");
									sub_categorys.eq(0).addClass("selected").siblings().removeClass("selected");
									sub_categorys.eq(0).show();
									for (i = 1; i < sub_categorys.length; i++) {
										if (sub_categorys.eq(i).find("a").attr(
												"data-p-category-id") == data_category_id) {
											sub_categorys.eq(i).show();
										} else {
											sub_categorys.eq(i).hide();
										}
									}
									
									
								}
							} else {
								first_tag.siblings().removeClass("expand");
								$(".second-tag").css("display", "none");
								querybycategoryId();
								
							}
						})
		
		$(".second-tag li a").click(function() {
			var second_tag = $(this).parent();
			second_tag.addClass("selected").siblings().removeClass("selected");
			var id = $(this).attr("data-category-id");
			if (second_tag.index() != 0) {
				querybycategoryId(id);
			} else {
				querybypcategoryId(id);
			}
		})

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
													content += '<div class="item">';
													content += '<a target="_blank" href="#"> <img src="${APP_PATH}/'+pa.articleImg+'"></a>';
													content += '<div class="right">';
													content += '<a target="_blank" href="#" class="title" onclick="window.location.href=\'${APP_PATH}/article/toArticle.htm?id='
															+ pa.articleId
															+ '\'">'
															+ pa.articleTitle
															+ '</a>';
													content += '<a target="_blank" href="#" class="content"><p class="desc">'+pa.desc+'</p></a>';
													content += '<div class="info">';
													content += '<a target="_blank" href="${APP_PATH}/user/toUserIndex.htm?userid='+pa.articleUser.psychouser_id+'"> <span>'
															+ pa.articleUser.psychouser_name
															+ '</span></a>';
													content += '<span class="date"> '
															+ pa.pubTime
															+ ' </span>';
													$.each(pa.articleLabels,function(j, label){
														content += '<a target="_blank" href="#" data-tag-id="'+label.psycho_label_id+'"> #'+ label.psycho_label_name+ '</a>';
													});
													content += '</div></div>';
													content += '<span class="statistics">'
															+ pa.readsNum
															+ '阅读</span>';
													content += '</div>';

												});
								//实现局部刷新
								$("#articleListM").html(content);
								//alert("需要进行局部刷新"+data);

								//分页部分局部刷新
								var contentPagebar = '';
								//使用JS中的做判断操作

								if (page.pageno == 1) {
									contentPagebar += '<li class="disabled"><a href="#"><span>«</span></a></li>';
									//因内部要使用双引号，JS要拼串都用单引号拼串
								} else {
									contentPagebar += '<li><a href="#" onclick="pageChange('
											+ (page.pageno - 1)
											+ ')"><span>«</span></a></li>';
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
									contentPagebar += '<li class="next disabled"><a href="#"><span>»</span></a></li>';
								} else {
									contentPagebar += '<li class="next"><a href="#" onclick="pageChange('
											+ (page.pageno + 1)
											+ ')"><span>»</span></a></li>';
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

		function querybycategoryId(categoryid) {
			var categoryid = categoryid;
			jsonArticle.categoryId = categoryid;
			jsonArticle.pcategoryId = null;
			/* alert(queryText); */
			queryPageArticle(1);
		}
		
		function querybypcategoryId(pcategoryid) {
			var pcategoryid = pcategoryid;
			jsonArticle.pcategoryId = pcategoryid;
			jsonArticle.categoryId = null;
			/* alert(queryText); */
			queryPageArticle(1);
		}

	</script>

</body>
</html>
