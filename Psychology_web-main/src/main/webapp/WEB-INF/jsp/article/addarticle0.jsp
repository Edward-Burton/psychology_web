<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert article</title>
<link href="${APP_PATH }/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.css"
	rel="stylesheet">
</head>
<body>

<div class="form-group">
		<label class="col-md-3 control-label">详情 <span
			class="required"> * </span>
		</label>
		<div class="col-md-7" id="contextText">
			<div class="form-group" align="center" id="nochecke">
				<!--  <textarea id="editor" hidden="true" autofocus>
	     </textarea> -->
				<!-- <textarea id="editor" placeholder="Balabala" autofocus></textarea> -->
				<form method="post">
					<textarea id="summernote" name="editordata"></textarea>
					<button onclick="doCommit()">提交</button>
					<button onclick="doReset()">重置</button>
				</form>
			</div>
		</div>
		<div style="display: none">
			<input type="hidden" id="content" name="content" value='提交'>
		</div>
	</div>

	<form id="articleForm" method="post" enctype="multipart/form-data"
		action="">
		<label>文章标题：</label> <input type="text" name="articleTitle"
			id="articleTitle"><br> <label>文章内容：</label><input
			type="text" name="content" id="content"><br> <label>上传图片：</label>
		<input type="file" name="indexImg" id="indexImg"><br> 
		<img
			src="" id="preview" style="width: 20rem; height: 15rem;"> 
			<input
			type="submit" id="addBtn"> 
			<input type="hidden"
			id="errorinfo" value="${uploadFileEroor}">
	</form>

	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script src="${APP_PATH }/jquery/layer/layer.js"></script>
	<script src="${APP_PATH }/jquery/jquery-form/jquery-form.min.js"></script>
	<script src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote.min.js"></script>
	<script type="text/javascript">
	function doCommit(){
		var content = $('#summernote').summernote('code');
		alert(content); 
		
		var innnerhtml = $("comtent").val();
		$("#summernote").val(innerhtml);
		
		$.ajax({
    		type:"POST",
    		data:{
    			"content":content,
    			"psychouser_password":psychouser_password.val()
    		},
    		url:"${APP_PATH}/doLogin.do",
    		beforeSend:function(){
    			//表单数据校验
				loadingIndex = layer.msg('处理中', {icon: 16});
    			return true;
    		},
    		success:function(result){ //返回json数据：{"success":true}  或    {"success":false,"message":"登录失败!"}
    			layer.close(loadingIndex);
    			if(result.success){
    				window.location.href="${APP_PATH}/main.htm";
        			/* alert("success"); */
    			}else{
    				/* alert("failed"); */
    				layer.msg(result.message, {time:1000, icon:5, shift:6});

    			}
    		},
    		//error代码只有在controller处理方法抛出异常或则有拦截器处理时抛异常(如服务器代码问题，类型转换问题)就执行该函数，不执行success函数
    		error:function(){
    			/* alert("error"); */
    			layer.msg("登陆失败！", {time:1000, icon:5, shift:6});
    		}
    	});
	}
	
	
	function doReset(){
		$('#summernote').summernote('reset')
	}
		$(function() {
			$('#summernote').summernote({
		        placeholder: 'Hello Bootstrap 4',
		        tabsize: 2,
		        height: 100,
		        focus:true
		      });
		});
		/* var articleImg = null;
		 var errorInfo = null;
		 $(function(){
		 articleImg = $("#articleImg");
		 errorInfo = $("#errorinfo");
		 if(errorinfo.val() == null||errorinfo.val() == ""){
		 articleImg.next.html("上传文件大小不能超过5000KB*上传文件类型必须为：jpg,jpeg,png,pneg");
		 }else{
		 articleImg.next.html(errorinfo.val());
		 }
		 }) */

		/* public function uppic()
		 {
		 $file = request()->file('f');
		 $info = $file->move(ROOT_PATH . 'public/uploads/avatar');
		 $a=$info->getSaveName();  
		 $imgp= str_replace("\\","/",$a);  
		 $imgpath='uploads/avatar/'.$imgp;  
		 $banner_img= $imgpath;
		 $response = array();  
		 if($info){  
		 $response['isSuccess'] = true;  
		 $response['f'] = $imgpath;  
		 }else{  
		 $response['isSuccess'] = false;  
		 }  
		
		 echo json_encode($response);
		 } */

		 $("#indexImg").change(function(){  
		 		 var objUrl = getObjectURL(this.files[0]) ;//获取文件信息  
		 		 console.log("objUrl = "+objUrl);  
		 		  if (objUrl) {  
		 		  $("#preview").attr("src", objUrl);  
		 		 }   
		 }) ;  
		 function getObjectURL(file) {  
		 		 var url = null;   
		 		 if (window.createObjectURL!=undefined) {  
		 		  url = window.createObjectURL(file) ;  
		 		 } else if (window.URL!=undefined) { // mozilla(firefox)  
		 		  url = window.URL.createObjectURL(file) ;  
		 		 } else if (window.webkitURL!=undefined) { // webkit or chrome  
		 		  url = window.webkitURL.createObjectURL(file) ;  
		 		 }  
		 		 return url ;  
		 		} 


		$("#addBtn")
				.click(
						function() {
							
							var articleTitle = $("articleTitle");
							var content = $("content");
							/* 
							if(($.trim(articleTitle.val()) == "")){
					    		layer.msg("文章标题不能为空!", {time:1000, icon:5}, function(){
					    			articleTitle.val("");
					    			articleTitle.focus();
					        		//return false ;  //不能结束if,只是结束msg函数.
					    		});    		
					    		return false;
					    	}
							
							if(($.trim(content.val()) == "")){
					    		layer.msg("文章内容不能为空!", {time:1000, icon:5}, function(){
					    			content.val("");
					    			content.focus();
					        		//return false ;  //不能结束if,只是结束msg函数.
					    		});    		
					    		return false;
					    	}  */
							
							/* 
							$.ajax({
								type : "POST",
								data : form,
								url : "${APP_PATH}/article/doAddArticle.do",
								beforeSend : function() {            			
									return true ;
								},
								success : function(result){
									if(result.success){
										window.location.href="${APP_PATH}/article/toIndex.htm";
									}else{
										layer.msg("保存用户失败", {time:1000, icon:5, shift:6}); 
									}
								},
								error : function(){
									layer.msg("保存失败", {time:1000, icon:5, shift:6}); 
								}
							});  */
							

							/* var options = {
								url : "${APP_PATH}/addArticle.do",
								beforeSubmit : function() {
									loadingIndex = layer.msg('数据正在保存中', {
										icon : 6
									});
									return true; //必须返回true,否则,请求终止.
								},
								success : function(result) {
									layer.close(loadingIndex);
									if (result.success) {
										layer.msg("广告数据保存成功", {
											time : 1000,
											icon : 6
										});
										window.location.href = "${APP_PATH}/jsp/addarticle.jsp";
									} else {
										layer.msg("广告数据保存失败", {
											time : 1000,
											icon : 5,
											shift : 6
										});
									}
								}
							};

							$("#articleForm").ajaxSubmit(options); //异步提交
							return; */

							$("#articleForm").attr("action","${APP_PATH}/article/doAddArticle.do");
							$("#articleForm").submit();  
						});
	</script>
</body>
</html>