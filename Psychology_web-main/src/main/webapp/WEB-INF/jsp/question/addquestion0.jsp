<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>提问</title>
<link href="${APP_PATH }/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="form-group">
		<label class="col-md-3 control-label">详情 <span
			class="required"> * </span>
		</label>
		<div class="col-md-7" id="contextText">
			<div class="form-group" align="center" id="nochecke">
				<form method="post">
				<input type="text" id="qtitle" placeholder="问题标题，5个字~25个字以内，必填" width="100px"/><br>
<!-- 					<textarea id="qcontent" name="qcontent" placeholder="问题描述" style="height:expression((this.scrollHeight>150)?'150px':(this.scrollHeight+5)+'px');overflow:auto;"></textarea>
 -->					<textarea id="qcontent" name="qcontent" placeholder="问题描述" rows="25" cols="60"></textarea>
					
					<div>
					<ul>
					<li>行为</li><li>治疗</li><li>人际</li><li>成长</li><li>情绪</li>
					</ul>
					</div>
					<button id="submitbtn">提交</button>
					<button onclick="doReset()">重置</button>
				</form>
			</div>
		</div>
	</div>
	
	<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
	<script src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${APP_PATH}/jquery/layer/layer.js"></script>
	<script type="text/javascript">
	
	$("#submitbtn").click(function(){
		var title=$('#qtitle');
		var content = $('#qcontent');
		alert(title.val()+content.val()); 
		
		if(($.trim(title.val()) == "")){
    		layer.msg("问题标题不能为空,请重新输入!", {time:1000, icon:5, shift:6}, function(){
    			title.val("");
    			title.focus();
        		//return false ;  //不能结束if,只是结束msg函数.
    		});    		
    		return false;
    	}
    	
    	if(($.trim(content.val()) == "")){
    		layer.msg("问题描述不能为空,请重新输入!", {time:1000, icon:5, shift:6}, function(){
    			content.val("");
    			content.focus();
        		//return false ;  //不能结束if,只是结束msg函数.
    		});    		
    		return false;
    	}
		
		$.ajax({
    		type:"POST",
    		data:{
    			"title":title.val(),
    			"content":content.val()
    		},
    		url:"${APP_PATH}/question/doAdd.do",
    		beforeSend:function(){
    			//表单数据校验
    			alert("处理中")
				loadingIndex = layer.msg('处理中', {icon: 16});
    			return true;
    		},
    		success:function(result){ //返回json数据：{"success":true}  或    {"success":false,"message":"登录失败!"}
    			layer.close(loadingIndex);
    			if(result.success){
    				alert("success");
    				window.location.href="${APP_PATH}/question/toMyquestion.htm";
    			}else{
    				alert("failed");
    				layer.msg(result.message, {time:1000, icon:5, shift:6});

    			}
    		},
    		//error代码只有在controller处理方法抛出异常或则有拦截器处理时抛异常(如服务器代码问题，类型转换问题)就执行该函数，不执行success函数
    		error:function(){
    			alert("error");
    			layer.msg("提问失败！", {time:1000, icon:5, shift:6});
    		}
    	});
	});
	
	function doCommit(){
		var title=$('#qtitle');
		var content = $('#qcontent');
		alert(title.val()+content.val()); 
		
		if(($.trim(title.val()) == "")){
    		layer.msg("问题标题不能为空,请重新输入!", {time:1000, icon:5, shift:6}, function(){
    			title.val("");
    			title.focus();
        		//return false ;  //不能结束if,只是结束msg函数.
    		});    		
    		return false;
    	}
    	
    	if(($.trim(content.val()) == "")){
    		layer.msg("问题描述不能为空,请重新输入!", {time:1000, icon:5, shift:6}, function(){
    			content.val("");
    			content.focus();
        		//return false ;  //不能结束if,只是结束msg函数.
    		});    		
    		return false;
    	}
		
		$.ajax({
    		type:"POST",
    		data:{
    			"title":title.val(),
    			"content":content.val()
    		},
    		url:"${APP_PATH}/question/doAdd.do",
    		beforeSend:function(){
    			//表单数据校验
    			alert("处理中")
				loadingIndex = layer.msg('处理中', {icon: 16});
    			return true;
    		},
    		success:function(result){ //返回json数据：{"success":true}  或    {"success":false,"message":"登录失败!"}
    			layer.close(loadingIndex);
    			if(result.success){
    				alert("success");
    				window.location.href="${APP_PATH}/question/toMyquestion.htm";
    			}else{
    				alert("failed");
    				layer.msg(result.message, {time:1000, icon:5, shift:6});

    			}
    		},
    		//error代码只有在controller处理方法抛出异常或则有拦截器处理时抛异常(如服务器代码问题，类型转换问题)就执行该函数，不执行success函数
    		error:function(){
    			alert("error");
    			layer.msg("提问失败！", {time:1000, icon:5, shift:6});
    		}
    	});
	}

	</script>
</body>
</html>