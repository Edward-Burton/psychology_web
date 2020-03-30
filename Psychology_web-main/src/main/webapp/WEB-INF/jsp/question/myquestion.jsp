<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>我的问答</title>
</head>
<body>
<ul>
<li>提问</li><li>回答</li><li>收藏</li>
</ul>
<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
<script src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdn.bootcss.com/vue/2.2.2/vue.min.js"></script>
<script src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/javascript" src="${APP_PATH}/jquery/layer/layer.js"></script>
	
<script type="text/javascript">
$(document.ready(function(){
	//queryQuestions(2);
}));

function queryQuestions(userid){
	
	var app = new Vue({
		  el: '#app',
		  data: {
		    questionlist: []
		  },
		  created:function(){
		        axios({
		            url:'${APP_PATH}/question/doMyquestion.do',
		            method:"get"
		        }).then(function(res){
		        	this.questionlist=res.data.result;
		            alert(this.questionlist);
		        })
		        
		    }
		})
	/* $.ajax({
		type:"GET",
		url:"${APP_PATH}/question/myquestion.do",
		beforeSend : function() {
			loadingIndex = layer.load(2, {
				time : 10 * 1000
			});
			return true;
		},
		success : function(result) {
			
		},
		erro : function() {
			layer.msg("加载数据失败", {
				time : 1000,
				icon : 5,
				shift : 6
			});
		}
	}) */
	
}


</script>
</body>
</html>