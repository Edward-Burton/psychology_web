<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>

		<style>

			body, button, div, form, html, input, li, p, select, ul {
			    margin: 0;
			    padding: 0;
			}
			
			button {
			    cursor: pointer;
			    padding: 0;
				
			}
			
			button {
			    width: 140px;
			    height: 42px;
			    background-color: #0b8bff;
			    border-radius: 8px;
			    border: 0;
			    font-size: 16px!important;
			    color: #fff;
			    line-height: 42px;
			    text-align: center;
			    outline: 0;
			}
			
			#main {
			    width: 1180px;
			    margin: 0 auto;
			    padding-top: 40px;
			}
			
			#left {
			    width: 760px;
			    background-color: #fff;
			    float: left;
			    margin-right: 20px;
			    margin-bottom: 40px;
			    padding: 30px 20px 40px;
			}
			
			#left .issue {
			    height: 20px;
			    width: 100%;
			    margin-bottom: 20px;
			    line-height: 20px;
			}
			
			#left .issue .ask-title {
			    float: left;
			    font-size: 20px;
			    color: #333;
			    font-weight: 700;
			}
			
			.choose-con {
			    display: inline-block;
			    height: 26px;
			    margin-left: 17px;
			    border-radius: 20px;
			    padding: 0 2px;
			    font-size: 0;
			    background-color: #f3f4f5;
			}
			
			.shiming-con {
			    background: #0b8bff;
			}
			
			input[type=radio] {
			    position: absolute;
			    clip: rect(0,0,0,0);
			}
			
			.niming-label, .shiming-label {
			    display: inline-block;
			    height: 22px;
			    line-height: 22px;
			    margin-top: 2px;
			    font-size: 12px;
			    padding: 0 8px;
			    color: #fff;
			}
			
			.shiming-label {
			    color: #666;
			}
			
			input[type=radio]:checked+label {
			    background-color: #fff;
			    color: #333;
			    border-radius: 20px;
			}
			
			#left .title {
			    width: 758px;
			    height: 36px;
			    border: 1px solid #e1ebf1;
			    border-radius: 8px;
			    line-height: 38px;
			    text-indent: 16px;
			    font-size: 14px;
			    color: #999;
			    margin-bottom: 20px;
			}
			
			#left .list span {
			    font-size: 14px;
			    line-height: 14px;
			    color: #333;
			}
			
			#left .list li {
			    line-height: 14px;
			    font-size: 14px;
			    color: #333;
			    margin-top: 14px;
			    cursor: pointer;
			}
			
			#left .desc-question {
			    padding: 16px;
			    margin-top: 30px;
			    width: 726px;
			    height: 258px;
			    border: 1px solid #e1ebf1;
			    border-radius: 8px;
			    font-size: 14px;
			}
			
			#left .label-ques {
			    margin-top: 20px;
			}
			
			#left .label-ques a {
			    display: block;
			    margin-bottom: 24px;
			    font-size: 14px;
			    line-height: 14px;
			    color: #333;
			    text-decoration: underline;
			}
			#left .label-ques ul li {
			    display: inline-block;
			    width: 88px;
			    height: 38px;
			    margin-right: 15px;
			    text-align: center;
			    line-height: 38px;
			    font-size: 14px;
			    color: #666;
			    background-color: #f3f4f5;
			    border-radius: 8px;
			    margin-bottom: 20px;
			    cursor: pointer;
			}
			
			#left .label-ques ul .visit {
			    color: #fff;
			    background-color: #0b8bff;
			}
			
			#left .tag {
			    padding: 0 20px;
			    width: 720px;
			    background-color: #f9f9fa;
			    border-radius: 4px;
			    position: relative;
			    margin-top: 5px;
			    padding-bottom: 20px;
			}
			
			#left ul {
			    list-style-type: none;
			}
			#left .tag li {
			    margin-top: 22px;
			    display: inline-block;
			    width: 74px;
			    height: 22px;
			    text-align: center;
			    line-height: 22px;
			    background: #fff;
			    border: 1px solid #e1e1e1;
			    border-radius: 6px;
			    font-size: 14px;
			    color: #999;
			    margin-right: 15px;
			    cursor: pointer;
			}
			
			#left .tag .checked,#left .tag li:hover{
				color: #fff;
				background-color: #00aaff;
				border: none;
			}
			
			#left .click, #left .filter {
			    font-size: 14px;
			    line-height: 14px;
			}
			
			#left .click {
			    margin-top: 20px;
			    margin-bottom: 50px;
			    color: #999;
			}
			
			#left .dispatch {
			    margin: 0 auto;
			    text-align: center;
			    line-height: 42px;
			    height: 42px;
			    width: 760px;
			    background-color: #0b8bff;
			    border-radius: 8px;
			    font-size: 16px;
			    color: #fff;
			    cursor: pointer;
			}
			
		</style>
	</head>
	<body style="font-size: 12px;">
		<div id="main">
			<div id="left">
				<div class="issue">
					<span class="ask-title" >发布提问</span>
					<span class="choose-con" :class="{'shiming-con':isanonym==0}">
						<input id="shiming" type="radio" value="0" name="chose-type" >
						<label class="shiming-label" for="shiming" :data-tag="0" @click="anonym($event)" >实名</label>
						<input id="niming" type="radio" checked="checked" value="1" name="chose-type">
						<label class="niming-label" for="niming" :data-tag="1" @click="anonym($event)">匿名</label>
					</span>

				</div>
				<input class="title" maxlength="25" name="title" placeholder="问题标题，5个字～25个字以内，必填" v-model="title">
				<div class="list">
					<span>举例：</span>
					<ul>
						<li><a>大二学生</a>，无法和室友相处，<a>很容易受影响</a>怎么办？</li>
						<li><a>情绪低落</a>，很丧，怎么确认我是否患有抑郁症呢？<a>3个月</a>了</li>
					</ul>
				</div>
				<textarea class="desc-question" id="qa_content" name="content" placeholder="描述问题（40个字～400字以内，必填）" v-model="content"></textarea>
				<div class="label-ques">
					<a>选择1-3个问题标签（必选）</a>
					<ul id="tip">
						<li v-for="(tag,index) in tagList" :key="index" class="p_tags p_tag_" :class="{visit:flag==tag.psycho_label_id}" @click="flag=tag.psycho_label_id" :data-tagid="tag.psycho_label_id">{{tag.psycho_label_name}}</li>
					</ul>
				</div>
				<div id="tag" class="tag">

					<ul id="tag">
						<li v-for="(subtag,index) in subtagList" @click="addtags($event)" class="'sub_tags sub_tag_'+subtag.psycho_label_id" :class="{checked:tags.indexOf(parseInt(subtag.psycho_label_id))>=0}" :data-tagid="subtag.psycho_label_id" :data-ptagid="subtag.psycho_label_parentid" v-if="flag==subtag.psycho_label_parentid">{{subtag.psycho_label_name}}</li>
						
					</ul>
				</div>
				
				<p class="click">点击一次选中，再点一次取消</p>
				<!--阿里云验证插件的div-->
				<!-- <div id="aliVerify">
					<div id="SM_BTN_WRAPPER_1" class="sm-btn-wrapper">
						<div id="SM_BTN_1" class="sm-btn sm-btn-default" style="width: 100%; height: 42px; line-height: 42px;">
							<div class="sm-ico">
								<div class="right-tick">
									<div class="right-tick-left"></div>
									<div class="right-tick-right"></div>
								</div>
								<div class="wrong-cross">
									<div class="wrong-cross-left"></div>
									<div class="wrong-cross-right"></div>
								</div>
								<div class="shield">
									<svg width="12px" height="14px" viewBox="0 0 200 255">
										<g id="Page3" stroke="#eeeeee" strokewidth="1" fill="none" fillrule="evenodd">
											<g id="Group3" fill="#ffffff" fillrule="nonzero">
												<path d="M192.215987,31.5402031 C190.026012,31.619176 187.868479,31.6497744 185.757709,31.6497744 L185.748648,31.6497744 C130.221833,31.6497744 105.760339,6.2755772 105.556627,6.05672609 L100.008184,0 L94.4518488,6.05672609 C94.2095573,6.32191195 68.3980713,33.5987437 7.78430533,31.5402029 L2.8561292e-07,31.2753086 L0,146.302981 C0,176.418758 10.0841737,220.345176 97.2848165,253.952079 L100.000584,255 L102.715183,253.952079 C189.915826,220.345176 200,176.418467 200,146.302981 L200,31.2753086 L192.215987,31.5402031 Z"
												 id="Shape3"></path>
											</g>
										</g>
									</svg>
								</div>
								<div class="sm-ico-wave"></div>
								<div class="out-silder-circle"></div>
							</div>
							<span id="SM_TXT_1" class="sm-txt">点击按钮开始智能验证</span>
							<div id="rectMask" style="width: calc(100% + 2px); height: 44px; line-height: 44px;">
								<div class="rect-top" id="rectTop" style="width: 100%; height: 21px; line-height: 42px;"></div>
								<div class="rect-bottom" id="rectBottom" style="width: 100%; height: 21px; line-height: 42px; top: 22px;"></div>
							</div>
						</div>
						<div id="sm-btn-bg" style="width: 100%; height: 42px; line-height: 42px;">
						</div>
					</div>
				</div>
				 -->
				<button class="dispatch" @click="dispatch()">发布提问</button>
			</div>

		</div>

		<script src="${APP_PATH }/js/vue.js"></script>
		<script src="${APP_PATH }/js/axios.js"></script>
		<script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
		<script type="text/javascript">
		
		var kg = 1;
		var article = new Vue({
			  el: '#main',
			  data () {
			    return {
			      isanonym:1,
				  subtagList : [],
				  tagList : [],
			      flag:0,
			      choose:0,
			      tags:[],
			      title:"",
			      content:""
			    }
			  },
			  created() {
			      this.getTagList();
			      this.getSubTagList();
			  },
			  methods: {
				  anonym(e){
					  this.isanonym=parseInt(e.currentTarget.dataset.tag);
					  alert(this.isanonym);
				  },
				  
				  dispatch(){
					  window.location.href="${APP_PATH}/question/toMyquestion.htm";
					if (this.title == "") {
						alert("标题不能为空！！！");
					} else if (this.content == "") {
						alert("问题描述不能为空！！！");
					} else if (this.tags.length == 0) {
						alert("请选择问题标签");
					} else {
						alert("是否匿名：" +this.isanonym + "\n" + "标题：" + this.title + "\n" + "内容：" + this.content + "\n" + "标签：" + JSON.stringify(this.tags));
						let data={
					    	  anonym:this.isanonym,
					    	  title:this.title.trim(),
					    	  content:this.content.trim(),
					    	  tags:JSON.stringify(this.tags)
					      }
						axios({
							  url: "${APP_PATH}/question/doAdd.do",
						      method: "POST",
						      dataType: "json",
						      contentType : 'application/json; charset=UTF-8',
						      params:data
						    }).then(res => {
						    	if(res.data.success){
						    		alert("success");
				    				window.location.href="${APP_PATH}/question/toMyquestion.htm";
						    	}else{
						    		alert(res.data.message);
						    	}
						    });
					}
				  },
				  
				  addtags(e){
					  if (this.tags.length <= 3) {
							if (this.tags.indexOf(parseInt(e.currentTarget.dataset.tagid))>=0) {
								// 删除数组指定元素
								var index = this.tags.indexOf(parseInt(e.currentTarget.dataset.tagid));
								this.tags.splice(index, 1);
							} else if (this.tags.length < 3) {
								this.tags.push(parseInt(e.currentTarget.dataset.tagid));
							} else {
								alert("只能添加三个标签!!!");
							}
						}
				  },
				  
				  getTagList(){
					  axios({
						  url: "${APP_PATH}/question/getTags.do",
					      method: "GET"
					    }).then(res => {
					    	if(res.data.success){
					    		this.tagList=res.data.data;
					    		//this.userid=res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    });
				  },
				  getSubTagList(){
					  axios({
						  url: "${APP_PATH}/question/getSubTags.do",
					      method: "GET"
					    }).then(res => {
					    	if(res.data.success){
					    		this.subtagList = res.data.data;
					    		//this.userid=res.data.data;
					    	}else{
					    		alert(res.data.message);
					    	}
					    }); 
				  }
			  }
		});
		
			

			/* $(".choose-con label").click(function() {
				kg = $(this).prev().attr("value");
				if ($(this).attr("class") == "shiming-label") {
					$(this).parent().addClass("shiming-con");
				} else if ($(this).attr("class") == "niming-label") {
					$(this).parent().removeClass("shiming-con");
				}
				alert(kg);
			}); */

			/* $(".label-ques #tip li").click(function() {
				$(this).addClass("visit").siblings().removeClass("visit");
				var data_tag_id = $(this).attr("data-tag-id");
				var sub_tags = $("#tag li");
				for (i = 0; i < sub_tags.length; i++) {
					if (sub_tags.eq(i).attr("data-p-tag-id") == data_tag_id) {
						sub_tags.eq(i).show();
					} else {
						sub_tags.eq(i).hide();
					}
					// alert(data_tag_id+"\n"+sub_tags.eq(i).attr("data-p-tag-id"));
				}
			}) */

			/* $("#tag li").click(function() {
				if (tags.length <= 3) {
					if ($(this).hasClass("checked")) {
						$(this).removeClass("checked");
						// 删除数组指定元素
						var index = tags.indexOf($(this).attr("data-tag-id"));
						tags.splice(index, 1);
					} else if (tags.length < 3) {
						$(this).addClass("checked");
						// tags[tags.length] = $(this).attr("data-tag-id");
						tags.push($(this).attr("data-tag-id"));
					} else {
						alert("只能添加三个标签!!!");
					}
				}
			}); */

			/* $(".dispatch").click(function() {
				title = $(".title").val();
				content = $(".desc-question").val();
				if (title == "") {
					alert("标题不能为空！！！");
				} else if (content == "") {
					alert("问题描述不能为空！！！");
				} else if (tags.length == 0) {
					alert("请选择问题标签");
				} else {
					alert("是否匿名：" + kg + "\n" + "标题：" + title + "\n" + "内容：" + content + "\n" + "标签：" + tags);
				}
			}); */
		</script>
	</body>
</html>
