<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
			<style>
			.action {
				background-color: #fff;
				float: right;
				width: 759px;
				padding-bottom: 69px;
				background: url(../images/right.gif) no-repeat 0 bottom;
			}
			
			* {
				margin: 0;
				padding: 0;
			}
			
			body {
				font: 12px 宋体;
			}
			
			div {
				display: block;
			}
			
			img {
				border: 0px;
			}
			
			a {
				color: #000;
				text-decoration: none;
			}
			
			.global-width {
				width: 971px;
				margin: 0 auto;
			}
			
			.top {
				background: url("images/Top_bg.gif") repeat-x;
				width: 100%;
				height: 88px;
			}
			
			.top .logo {
				margin: 17px 0 0 0;
			}
			
			.status {
				width: 100%;
				height: 36px;
				background: url(images/Top_bg.gif) repeat-x 0 bottom;
				line-height: 36px;
			}
			
			.usertype {
				color: #2357E7;
				margin-right: 30px;
			}
			
			.main {
				background: #4E93BB;
				height: 100%;
				overflow: hidden;
				padding: 14px 0;
			}
			
			.nav {
				float: left;
				width: 191px;
				padding-bottom: 69px;
				background: url(images/left_bg.gif) no-repeat -382px bottom;
			}
			
			.nav .t {
				height: 51px;
				background: url(images/left_bg.gif) no-repeat;
			}
			
			dt {
				display: block;
			}
			
			.nav dl {
				background: url(images/left_bg.gif) -191px 0 repeat-y;
				line-height: 22px;
				padding-left: 20px;
			}
			
			.nav dl.open dt {
				background-position: 0 0;
			}
			
			.nav dl dt {
				background: url(images/ico.gif) no-repeat 0 -23px;
				padding-left: 32px;
			}
			
			.nav dl.open dd {
				display: block;
			}
			
			.nav dl dd {
				background: url(images/ico.gif) no-repeat 18px -51px;
				padding-left: 36px;
				display: none;
			}
			
			.action {
				float: right;
				width: 759px;
				padding-bottom: 69px;
				background: url(images/right.gif) no-repeat 0 bottom;
			}
			
			.copyright {
				text-align: center;
				font: 12px Arial;
				margin: 20px 0;
				color: #000;
			}
			
			#loginOut {
				color: #2357E7;
				margin: 0 10px;
			}
		</style>
	</head>

	<body>
		<div class="top">
			<div class="global-width">
				<img class="logo" src="images/logo.gif">
			</div>
		</div>
		<div id="vmList" class="status" id="JiaZaiZy">
			<div class="global-width">
			
				
				<span class="usertype">【登录角色：${employee.positionname }】
				
				
				<a id="loginOut" href="/springmvc/index.jsp" onclick="return confirm('确定要退出登录吗？')">退出登录</a></span> ${employee.employeename } &nbsp;你好！欢迎访问青鸟办公管理系统！

			</div>
		</div>
		<div class="main">
			<div class="global-width">
				<div class="nav" id="nav">
					<div class="t"></div>
					<dl>
						<dt onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">报销单管理</dt>
						<dd>
							<a target="rightFrame" href="/springmvc/xzbx.jsp">新增报销单</a>
						</dd>
						<dd>
							<a target="rightFrame" href="cxbx.jsp">查看报销单</a>
						</dd>
					</dl>
					<dl>
						<dt onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">请假管理</dt>

						<dd>
							<a target="rightFrame" href="qj.jsp">请假</a>
						</dd>

						<dd>
							<a target="rightFrame" href="qjList.jsp">查看请假</a>
						</dd>
					</dl>

					<dl>
						<dt onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">统计报表</dt>
						<dd>
							<a target="rightFrame" href="ydb.jsp">报销单月度统计</a>
						</dd>
						<dd>
							<a target="rightFrame" href="ndb.jsp">报销单年度统计</a>
						</dd>
					</dl>

					<dl>
						<dt onclick="this.parentNode.className=this.parentNode.className=='open'?'':'open';">信息中心</dt>
						<dd>信心收件箱</dd>
						<dd>信心发件箱</dd>
					</dl>
				</div>

				<div class="action">
					<!--  onload="setIframeHeight(this)"  scrolling="no"-->
					<iframe name="rightFrame" style="WIDTH: 100%;HEIGHT:600px;" src="welcome.jsp" frameborder="0" id="iframepage"></iframe>
				</div>
			</div>
		</div>
		<div class="copyright">Copyright &nbsp; ? &nbsp; 北大青鸟</div>
	</body>
	<script type="text/javascript" src="js/jquery-1.12.4.js" ></script>
<!-- 	<script type="text/javascript" src="js/vue.js" ></script> -->
	<script type="text/javascript">
	/* 	var vmList=new Vue({
			el:"#vmList",
			data:{
				userName:""
			},
			methods:{
				loginOut(){
					alert("123");
				}
			},
			mounted(){
				let _this = this;
				jQuery.getJSON('http://localhost:8080/springmvc_oa/api/emps/emp/session',function(res){
					console.info(res);
					_this.userName=res.employeeName;	
				});
			}
		}); */
		/*function setIframeHeight(iframe) {
				    	if (iframe) {
				    		var iframeWin = iframe.contentWindow || iframe.contentDocument.parentWindow;
				    		if (iframeWin.document.body) {
				    			iframe.height = iframeWin.document.documentElement.scrollHeight || iframeWin.document.body.scrollHeight;
				    		}
				    	}
				    };
				    	 
				    window.onload = function () {
				    	setIframeHeight(document.getElementById('iframepage'));
				    };*/
	</script>

</html>