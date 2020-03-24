<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<div>
		<span></span>
		</div>
		
<script type="text/javascript">

$(function() {
	queryCategorys(categoryid)

function queryCategorys(categoryid){
	$
	.ajax({
		type : "POST",
		data : '',
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
}
</script>
</body>
</html>