<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert article</title>
</head>
<body>

	<form id="articleForm" method="post" enctype="multipart/form-data"
		action="">
		<label>文章标题：</label><input type="text" name="articleTitle"
			id="articleTitle"><br> <label>文章内容：</label><input
			type="text" name="content" id="content"><br> 
			<label>上传图片：</label>
			<input type="file" name="indexImg" id="indexImg"><br>
		<img src="" id="preview" style="width: 20rem;height: 15rem;">
		<input type="submit" id="addBtn"> 
		<input type="hidden"
			id="errorinfo" value="${uploadFileEroor}">
	</form>
	<div>
		<h1>添加状态：${uploadFileEroor}</h1>
	</div>

	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script src="${APP_PATH }/jquery/layer/layer.js"></script>
	<script src="${APP_PATH }/jquery/jquery-form/jquery-form.min.js"></script>
	<script type="text/javascript">
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
							/* 
							var form = new FormData(document.getElementById("tf"));
							
							$.ajax({
								type : "POST",
								data : form,
								url : "${pageContext.request.contextPath }/addArticle.do",
								beforeSend : function() {            			
									return true ;
								},
								success : function(result){
									if(result.success){
										window.location.href="${pageContext.request.contextPath }/jsp/addarticle.jsp";
									}else{
										layer.msg("保存用户失败", {time:1000, icon:5, shift:6}); 
									}
								},
								error : function(){
									layer.msg("保存失败", {time:1000, icon:5, shift:6}); 
								}
							}); */

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

							$("#articleForm").attr("action","${APP_PATH}/addArticle.do");
							$("#articleForm").submit();  
						});
	</script>
</body>
</html>