<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>编辑文章</title>
<link href="${APP_PATH }/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css"
	rel="stylesheet" />
<style>
a {
	text-decoration: none;
}

.global-head {
	height: 68px;
	line-height: 68px;
	padding: 0 16px;
	background: #fff;
	border-bottom: 1px solid #eaeaea;
}

.global-head .global-head-left {
	float: left;
	line-height: 68px;
}

.global-head .global-head-right {
	height: 100%;
}

.global-head .global-head-left .index-link {
	display: inline-block;
	width: 90px;
	height: 100%;
	line-height: 60px;
	vertical-align: middle;
}

.global-head .global-head-left .index-link img {
	width: 100%;
}

.global-head .global-head-right {
	float: right;
}

.global-head .global-head-right>div {
	display: inline-block;
	vertical-align: top;
	height: 100%;
}

.global-head .user-avatar-img {
	position: relative;
	top: 50%;
	width: 30px;
	height: 30px;
	overflow: hidden;
	border-radius: 50%;
	vertical-align: middle;
	margin: -15px 12px 0;
}

.global-head .user-center-link {
	display: block;
	width: 100%;
	height: 100%;
}

.global-head .user-avatar-img .user-avatar {
	width: 100%;
	vertical-align: top;
}

.article-edit-container {
	width: 850px;
	margin: 0 auto;
	padding: 0 0 40px;
}

.article-edit-container .article-cover {
	cursor: pointer;
}

.article-edit-container .article-cover-null {
	width: 850px;
	height: 533px;
	background: #f3f4f5;
	color: #999;
	text-align: center;
}

.article-edit-container .article-cover-camera:before {
	content: '\e037';
	display: inline-block;
	font-size: 60px;
	margin-top: 200px;
}

.article-edit-container .article-cover-tips {
	font-size: 18px;
}

.article-edit-container .article-cover-subtitle {
	font-size: 14px;
	margin-top: 10px;
}

.article-edit-container .article-cover-published {
	position: relative;
	max-height: 533px;
	overflow: hidden;
}

.article-edit-container img {
	display: block;
	max-width: 100%;
	margin: 0 auto;
}

.article-edit-container .article-cover-fn {
	display: none;
	position: absolute;
	bottom: 0;
	right: 0;
	z-index: 2;
}

.article-edit-container .article-cover-fn>span {
	display: inline-block;
	width: 68px;
	height: 68px;
	background: rgba(51, 51, 51, .9);
	color: #fff;
	font-family: yxl-iconfont;
	text-align: center;
	line-height: 68px;
	vertical-align: bottom;
	font-size: 30px;
}

.article-edit-container .article-title-text {
	width: 100%;
	outline: 0;
	border: 0;
	font-size: 32px;
	padding: 1em 0;
	color: #333;
}

.article-edit-container .article-desc-text {
	width: 100%;
    outline: 0;
    border: none;
    font-size: 16px;
    color: #333;
    border-bottom: 1px dashed;
    margin-bottom: 30px;
}

.article-edit-container .category{
	width: 200px;
    height: 30px;
    font-size: 14px;
    margin-bottom: 30px;
    outline: none;
}

.article-edit-container .article-tags {
	padding-bottom: 36px;
}

.article-edit-container .article-tag-list {
	display: inline-block;
	vertical-align: middle;
}

.article-edit-container .article-tag {
	position: relative;
	display: inline-block;
	width: 102px;
	background: #f3f4f5;
	border-radius: 6px;
	height: 36px;
	padding: 0 9px;
	margin-right: 16px;
	box-sizing: border-box;
	vertical-align: middle;
}

.article-edit-container .article-tag-input {
	width: 100%;
	height: 100%;
	outline: 0;
	border: 0;
	font-size: 14px;
	color: #333;
	background: #f3f4f5;
	text-align: center;
	border-radius: 6px;
}

.article-edit-container .article-tag-del-btn {
	display: flex;
	position: absolute;
	top: 0;
	right: 0;
	width: 16px;
	height: 16px;
	line-height: 16px;
	margin-right: -8px;
	margin-top: -8px;
	cursor: pointer;
	color: #666;
}

.article-edit-container .article-tag-add-btn {
	cursor: pointer;
}

.article-edit-container .article-tag-add-btn:after,
	.article-edit-container .article-tag-add-btn:before {
	content: '';
	position: absolute;
	width: 14px;
	height: 2px;
	top: 50%;
	left: 50%;
	margin-top: -1px;
	margin-left: -7px;
	background: #ccc;
}

/* 添加标签的加号那一竖 */
.article-edit-container .article-tag-add-btn:after {
	transform: rotate(90deg);
}

input[type=file] {
	display: inline-block;
	margin-top: 200px;
}

.img {
	z-index: 10;
	opacity: 1;
	left: -94px;
	top: 1px;
	border: 0;
	outline: 0;
	padding: 1px 30px;
	font-size: 16px;
}

.col-md-7 {
	width: 100%;
}

.form-bnt a {
	display: inline-block;
	text-decoration: none;
	background: #0b8bff;
	border-radius: 8px;
	margin-right: 15px;
	width: 100px;
	height: 42px;
	line-height: 42px;
	color: #fff;
	font-family: PingFangSC-Regular;
	font-size: 16px;
	text-align: center;
	cursor: pointer;
}

.main-container {
	width: 900px;
	height: 100%;
	margin: 0 auto;
	padding-top: 20px;
	border-radius: 10px;
	padding-bottom: 51px;
	background: #fff;
	position: relative;
	min-height: 100%;
}

.main-container .top {
	padding: 0 30px;
	padding-top: 40px;
}

.main-container .top .title {
	margin-top: 20px;
	font-family: PingFangSC-Medium;
	font-size: 22px;
	color: #333;
	font-weight: 700;
}

.main-container .article-body-m {
	padding: 0 120px;
	margin-top: 69px;
}

.main-container .article-body-m .cover-con {
	text-align: center;
}

.main-container .article-body-m .article-cover {
	max-width: 100%;
}

.main-container .article-body-m .yxl-editor {
	margin-top: 30px;
}

.yxl-editor-article {
	min-height: 48px;
}

.yxl-editor {
	padding-top: 16px;
}

.view, .yxl-editor {
	color: #444;
	font-size: 16px;
	line-height: 1.8;
	word-break: break-all;
}

.control-btn {
	display: flex;
	-webkit-box-pack: justify;
	justify-content: space-between;
	padding: 18px 0 0;
	margin: 0;
}

.control-btn a {
	display: inline-block;
	text-decoration: none;
	background: #0b8bff;
	border-radius: 8px;
	width: 150px;
	height: 42px;
	line-height: 42px;
	color: #fff;
	font-size: 16px;
	cursor: pointer;
	text-align: center;
}
</style>
</head>
<body>
	<header class="global-head">
		<jsp:include page="/WEB-INF/jsp/common/header.jsp"></jsp:include>
	</header>
	<main class="article-edit-container" style="display: block;">
	<div class="article-edit-wrap" style="">
		<div class="article-cover">
			<div class="article-cover-null" style="display: block;">
				<input type="file" id="articleImg" name="articleImg" class="img" value="" />
				<!-- <p class="article-cover-camera"></p>
						<p class="article-cover-tips">点击更换封面图片</p> -->
				<p class="article-cover-subtitle">最佳尺寸：900x600px</p>
			</div>
			<div class="article-cover-published" style="display: none;">
				<img src="" alt="" class="cover-img">
				<div class="article-cover-fn">
					<span class="article-cover-replace-btn">重置</span> <span
						class="article-cover-remove-btn">删除</span>
				</div>
			</div>
		</div>
		<div class="article-title">
			<input type="text" placeholder="点击输入文章标题" id="article-title-text"
				class="article-title-text" autocomplete="off">

		</div>
		
		<div class="article-desc">
			<input type="text" placeholder="点击输入文章简介" id="article-desc-text"
				class="article-desc-text" autocomplete="off">

		</div>
		
		<div>
			<select name="cityId" class="category" id="category">
				<option value="0">请选择分类</option>
			</select>
		</div>

		<div class="col-md-7" id="contextText">
			<div class="form-group" id="nochecke">
				<textarea id="summernote" name="editordata"></textarea>

				<div class="form-bnt">
					<a onclick="doCommit()">发布文章</a> <a onclick="doReset()">重置</a>
					<!-- href="javascript:showarticle()" -->
					<a class="pre-article" href="javascript:void(0);">预览</a>
				</div>
			</div>
		</div>
		</div>
	</main>

	<div class="article-pre" style="display: none;">
		<div class="main-container" style="display: block;">
			<div class="top">

				<p class="title">标题很长很长</p>

			</div>
			<div class="article-body-m">
				<div class="cover-con">
					<img class="article-cover"
						:src=""
						alt="文章封面">
				</div>
				<div class="yxl-editor">
					<div class="yxl-editor-article ">富文本内容</div>

				</div>
				<!-- 文章结尾 -->

				<div class="control-btn">
					<a target="_blank" class="public_article_btn">发布文章</a> <a
						target="_blank" class="edit_article_btn">编辑文章</a>
				</div>

			</div>
		</div>
	</div>
	<script src="${APP_PATH }/js/axios.js"></script>
	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script src="${APP_PATH }/js/vue.js"></script>
    <script src="${APP_PATH }/jquery/layer/layer.js"></script>
	<script
		src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="${APP_PATH }/js/summernote.min.js"></script>
	<script type="text/javascript">
	$(function() {
		summernote();
		getCategory();
	})
	
	function getCategory(){
		$.ajax({
			type : "GET",
			url : "${APP_PATH}/article/doSubCategory.do",
			success : function(result) { //返回json数据：{"success":true}  或    {"success":false,"message":"登录失败!"}
				if (result.success) {
					var data = result.data;
					$.each(data,function(i, sub){
						$("#category").append("<option value='"+sub.psycho_category_id+"'>"+sub.psycho_category_name+"</option>");
					}); 
				} else {
					layer.msg(result.message, {
						time : 1000,
						icon : 5,
						shift : 6
					});

				}
			}
		})
	}

	function summernote(){
		$('#summernote')
		.summernote({
			placeholder: 'Hello stand alone ui',
			tabsize: 2,
			height: 400,
			toolbar: [
				['style', ['style']],
				[
					'font',
					['bold', 'underline', 'clear']
				],
				['color', ['color']],
				['para', ['ul', 'ol', 'paragraph']],
				['table', ['table']],
				['insert',
					['link', 'picture', 'video']
				],
				[
					'view',
					['fullscreen', 'codeview',
						'help'
					]
				]
			],
			lang: 'zh-CN',
			focus: true,
			dialogsFade: true, // Add fade effect on dialogs
			dialogsInBody: true, // Dialogs can be placed in body, not in
			// summernote.
			disableDragAndDrop: false, // default false You can disable drag
			// and drop
			tabDisable: false,
			callbacks: {
				onImageUpload: function(files) {
					$.each(files, function() {
						var file = this;
						alert(file);
						var data = new FormData();
						data.append("file",
							file);
						$.ajax({
							data: data,
							type: "POST",
							url: "${APP_PATH}/file/img.do",
							cache: false,
							contentType: false,
							processData: false,
							success: function(
								res) {
								alert(res.message);
								alert(res.data.completeSavePath);
								$('#summernote').summernote(
									'insertImage',
									res.data.completeSavePath);

							},
							error: function() {
								layer.msg("加载数据失败", {
									time: 1000,
									icon: 5,
									shift: 6
								});
							}

						});
					})
				},
				onPaste: function(e) {
					console.log(e)
					setTimeout(function() {
						var str = $('#summernote').summernote('code');
						//匹配图片（g表示匹配所有结果i表示区分大小写）
						var imgReg = /<img.*?(?:>|\/>)/gi;
						//匹配src属性
						var srcReg = /src=[\'\"]?([^\'\"]*)[\'\"]?/i;
						if (srcReg!=null) {
							var arr = str.match(imgReg);
							alert('所有已成功匹配图片的数组：' + arr);
							for (var i = 0; i < arr.length; i++) {
								var src = arr[i].match(srcReg);
								//alert("src:"+src);
								//当然你也可以替换src属性
								if (src) {
									var imgpath = encodeURI(src[1]);
									alert(imgpath);
									$
										.ajax({
											url: '${APP_PATH}/file/pathupload.do',
											type: 'POST',
											data: {
												"imgpath": src[1]
											},
											async: false,
											success: function(res) {
												str = str.replace(src[0], 'src="' + res.data.completeSavePath + '"');
												if (res.success) {
													//$("#img").val(data.data);
												} else {
													alert("失败");
												}
											}
										});
								}
							}
						}
						$('#summernote').summernote('code', str);
					}, 1000);
				},
				onMediaDelete: function(target) {
					alert(target.context.currentSrc);
					var imgSrc = target.context.currentSrc;
				    var  data = new FormData();  
				    data.append("imgSrc",imgSrc);  
					$.ajax({
						data: data,
						type: "POST",
						url: "${APP_PATH}/file/deletefile.do",
						cache: false,
						contentType: false,
						processData: false,
						success: function(data) {
							console.log(data);
						}
					});
				}
			},
		});
	}	
	
		function doCommit() {
			var indeximg = $("#articleImg")[0].files[0];

			// 获取标题
			var title = $("#article-title-text").val();
			
			// 获取文章简介
			var desc = $("#article-desc-text").val();

			// 获取内容
			var content = $('#summernote').summernote('code');

			// 获取标签个数
			var num = $(".article-tag-list div").length;
			
			var categoryOption = parseInt($("#category option:selected").val());

			// 获取标签
			var tags = [];
			
		    var  data = new FormData();  
		    data.append("articleImg", indeximg); 
		    data.append("articleTitle", title);
		    data.append("articleDesc", desc);
		    data.append("content", content);
		    data.append("articleLabels", tags);
		    if(categoryOption!=0){
			    data.append("categoryId",categoryOption);
		    }
		    
			$.ajax({
				type : "POST",
				data : data,
				url : "${APP_PATH}/article/doAddArticle.do",
				processData: false,
				contentType: false,
				beforeSend : function() {
					//表单数据校验
					loadingIndex = layer.msg('处理中', {
						icon : 16
					});
					return true;
				},
				success : function(result) { //返回json数据：{"success":true}  或    {"success":false,"message":"登录失败!"}
					layer.close(loadingIndex);
					if (result.success) {
						window.location.href = "${APP_PATH}/main.htm";
					} else {
						layer.msg(result.message, {
							time : 1000,
							icon : 5,
							shift : 6
						});

					}
				},
				//error代码只有在controller处理方法抛出异常或则有拦截器处理时抛异常(如服务器代码问题，类型转换问题)就执行该函数，不执行success函数
				error : function() {
					/* alert("error"); */
					layer.msg("发布失败！", {
						time : 1000,
						icon : 5,
						shift : 6
					});
				}
			});
		}

		function doReset() {
			$('#summernote').summernote('reset')
		}

		$(".edit_article_btn").click(function() {
			$(".article-edit-container").css('display', 'block');
			$(".article-pre").css('display', 'none');
		})

		$("#articleImg").change(function() {
			var objUrl = getObjectURL(this.files[0]); //获取文件信息  
			console.log("objUrl = " + objUrl);
			if (objUrl) {
				$(".cover-img").attr('src', objUrl);
				$(".article-cover-published").css('display', 'block');
				$(".article-cover-null").css('display', 'none');
				$(".article-cover-fn").css('display', 'block')
			}
		})

		function getObjectURL(file) {
			var url = null;
			if (window.createObjectURL != undefined) {
				url = window.createObjectURL(file);
			} else if (window.URL != undefined) { // mozilla(firefox)  
				url = window.URL.createObjectURL(file);
			} else if (window.webkitURL != undefined) { // webkit or chrome  
				url = window.webkitURL.createObjectURL(file);
			}
			return url;
		}

		$(".confirm").click(function() {
			var option = $("#category option:selected");
			alert(option.val());
		})
		
		$(".article-cover-replace-btn").click(function() {
			$("#articleImg").trigger('click');
		})

		$(".article-cover-remove-btn").click(function() {
			$(".article-cover-published").css('display', 'none');
			$(".article-cover-null").css('display', 'block');
			$(".article-cover-fn").css('display', 'none')
			// 清除input中的文件
			$(".img").val("")
		})

		$(".pre-article").click(function() {

			var title = $("#article-title-text").val();
			var content = $('#summernote').summernote('code');
			var img = $("#articleImg")[0].files[0];
			alert(JSON.stringify(img));

			$(".title").html(title);
			$(".yxl-editor-article").html(content);
			$(".article-edit-container").css('display', 'none');
			$(".article-pre").css('display', 'block');
			$(".article-cover").attr('src',img); 
		})
	</script>

</body>
</html>
