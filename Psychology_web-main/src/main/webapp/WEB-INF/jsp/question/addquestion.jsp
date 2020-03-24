<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>提问</title>
</head>
<body>

  <div class="form-group">
        <label class="col-md-3 control-label">详情
          <span class="required"> * </span>
        </label>
      <div class="col-md-7" id="contextText">
	<div class="form-group" align="center" id="nochecke">
	     <textarea id="editor" type="text/plain"  hidden="true" autofocus>
	     </textarea>
	</div>
     </div>
    <div style="display: none">
	<input type="text" id="content" name="content" value=''>	
    </div>
 </div>            

      <!--css引用-->
<!--      <div class="page-sidebar-wrapper" th:include="/common/page_sidebar::pageSidebar"> --> 
    <!--js引用-->
     <script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
     <script src="${APP_PATH }/simditor/scripts/module.js"></script>
     <script src="${APP_PATH }/simditor/scripts/hotkeys.js"></script>
     <script src="${APP_PATH }/simditor/scripts/simditor.js"></script>
     <script src="${APP_PATH }/simditor/scripts/uploader.js"></script>
    <!-- <script type="text/javascript" th:src="@{/scripts/simditor/scripts/module.js}"></script>
    <script type="text/javascript" th:src="@{/scripts/simditor/scripts/hotkeys.js}"></script>
    <script type="text/javascript" th:src="@{/scripts/simditor/scripts/uploader.js}"></script>
    <script type="text/javascript" th:src="@{/scripts/simditor/scripts/simditor.js}"></script>  -->
    <script type="text/javascript">
    
	$(function(){
        Simditor.locale = 'zh-CN';//设置中文
        var editor = new Simditor({
            textarea: $("#editor"),  //textarea的id
            placeholder: '',
            toolbar:  ['title', 'bold', 'italic', 'underline', 'strikethrough', 'fontScale', 'color', '|', 'ol', 'ul', 'blockquote', 'code', 'table', '|', 'link', 'image', 'hr', '|', 'indent', 'outdent', 'alignment'], //工具条都包含哪些内容
            pasteImage: true,//允许粘贴图片
            defaultImage: '/simditor/images/image.png',//编辑器插入的默认图片，此处可以删除
            upload : {
                url : '/smiditor/uploadSimditorImg', //文件上传的接口地址
                params: null, //键值对,指定文件上传接口的额外参数,上传的时候随文件一起提交
                fileKey:'file', //服务器端获取文件数据的参数名
                connectionCount: 3,
                leaveConfirm: '正在上传文件'
            }
        });
      });
	
	{
		  "success":true,
		  "file_path":""
		}
	
	{
		  "success":false
		}
    
    function contextTextOnblur() {
    	$(document).on("blur", "#contextText", function() {
    		var content = $(".simditor-body").html();
    		$("#content").val(content);
    	});
    }
    </script>
</body>
</html>