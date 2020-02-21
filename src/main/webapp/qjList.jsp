<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script>
	$(function(){
		 //日期选择控件
	 	$("#startDate").click(function(){
			WdatePicker({dateFmt:'yyyy-MM-dd',maxDate:'#F{$dp.$D(\'endDate\')}',isShowClear:true, readOnly:true });
		});
		$("#endDate").click(function(){
			WdatePicker({dateFmt:'yyyy-MM-dd',minDate:'#F{$dp.$D(\'startDate\')}',isShowClear:true, readOnly:true });
		});
	});
</script>
</head>
<body>

<input type="hidden" value="${employee.employeeid }" name="id"/>
<input type="hidden" value="${employee.employeename }" name="name"/>
<input type="hidden" value="${employee.positionid }" name="positionid"/>

	<div class="action  divaction">
		<div class="t">请假列表</div>
		<div class="pages">
			<div class="forms">
				<form id="leave_searchLeave_action" name="queryForm"
					action="ckqj.html"
					method="get">
					<label for="time">开始时间</label> <input type="text" name="sTime"
						value="" id="startDate" class="nwinput"> <label
						for="end-time">结束时间</label> <input type="text" name="eTime"
						value="" id="endDate" class="nwinput" readonly=""> <input
						type="hidden" name="pageNo" value="1"> <input
						type="hidden" name="pageSize" value="5"> <input
						type="submit" id="leave_searchLeave_action_0" value="查询"
						class="submit_01">

				</form>
			</div>
			<!--增加报销单 区域 开始-->
			<table id="vmLeave" width="90%" border="0" cellspacing="0" cellpadding="0"
				class="list items">
				<thead>
					<tr class="even">
						<td>编号</td>
						<td>名称</td>
						<td>发起时间</td>
						<td>审批时间</td>
						<td>审批意见</td>
						<td>待处理人</td>
						<td>审批状态</td>
						<td>操作</td>
					</tr>
				</thead>
				<tbody>
					
					<!-- <tr>
						<td><a href="leave_getLeaveById.action?leave.id=143">143</a></td>
						<td>张平请假1.0天</td>
						<td>2013-09-09 15:10</td>
						<td></td>
						<td></td>
						<td>待审批</td>
						<td>
							<a href="claimVoucher_toUpdate.action?claimVoucher.id=133">
									<img src="images/edit.gif" width="16" height="16">
							</a> 
							<a onclick="delVoucher(133)" href="#"> <img
								src="images/delete.gif" width="16" height="16">
							</a> 
							<a target="rightFrame" href="leaveDetail.jsp"><img
								src="images/search.gif" width="16" height="15"></a>
							<a target="rightFrame" href="leaveCheck.jsp"> <img
								src="images/sub.gif" width="16" height="16"></a></td>
					</tr> -->

					<tr>
						<td colspan="7" align="center">
							<div class="page-bar">

								<a href="/jboa/leave/findList?sTime=&eTime=&pageNum=1&pageSize=10">首页</a>
								&nbsp;&nbsp;
								
								&nbsp;&nbsp;
								
									<a href="/jboa/leave/findList?sTime=&eTime=&pageNum=2&pageSize=10">下一页</a>
								
								&nbsp;&nbsp; <a href="/jboa/leave/findList?sTime=&eTime=&pageNum=3&pageSize=10">末页</a>							
								&nbsp;&nbsp; &nbsp;&nbsp;第 1页/共3页&nbsp;&nbsp;共21条记录
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<div class="page-bar">

								<a href="javascript:void(0)" id="firstPage">首页</a>
								<input type="hidden" value="" name="firstPage"/>
								&nbsp;&nbsp;
								&nbsp;&nbsp;
								<a href="javascript:void(0)" id="prePage">上一页</a>
								<input type="hidden" value="" name="prePage""/>
								&nbsp;&nbsp;
								<a href="javascript:void(0)" id="nextPage">下一页</a>
								<input type="hidden" value="" name="nextPage"/>
								&nbsp;&nbsp; 
								<a href="javascript:void(0)" id="lastPage">末页</a>
								<input type="hidden" value="" name="lastPage"/>							
								&nbsp;&nbsp; &nbsp;&nbsp;第 <span id="pagenum"></span>页/共<span id="pages"></span>页&nbsp;&nbsp;共<span id="total"></span>条记录
							</div>
			<!--请假 区域 结束-->
		</div>
	</div>
</body>
<script type="text/javascript" src="js/vue.js" ></script>
<script type="text/javascript" src="js/jq_ajax_config.js" ></script>
<script type="text/javascript">
var pan=0;
$(document).on("click","#id",function(){
	var id=$.trim($(this).parents("tr").children().first().text());
	window.sessionStorage.setItem("id",id);
	window.sessionStorage.setItem("pan",pan);
	location.href="qjxq.jsp";
	
});
$(document).on("click","#pan",function(){
	var id=$.trim($(this).parents("tr").children().first().text());
	pan=1;
	window.sessionStorage.setItem("id",id);
	window.sessionStorage.setItem("pan",pan);
	location.href="qjxq.jsp";
	
});
	$.getJSON("/springmvc/api/pageleave",{id:$("[name='id']").val(),positionid:$("[name='positionid']").val(),pageNum:"1"},function(date){
		$("tbody").html("");	
		var positionid=$("[name='positionid']").val();
			$.each(date.list,function(i,obj){
				
				var	$row=$(`<tr>
						<td><a href="javascript:void(0)">\${obj.leaveid}</a></td>
						<td><span>\${obj.employeeName}</span>请假<span>\${obj.totalCount}</span>天</td>
						<td>\${obj.createTime}</td>
						<td>\${obj.checkTime}</td>
						<td>\${obj.resultName}</td>
						<td>\${obj.nextname}</td>
						<td>\${obj.statusName}<input id="checkId" type="hidden" value="temp.checkId" />
						</td>
						<td>
							<a href="javascript:void(0)" name="id" id="id">
								<img src="images/search.gif" width="16" height="15">
							</a>
							
							
						</td>
					</tr>`);
				var	$row1=$(`<a href="qjxq.jsp" id="pan">
						<img src="images/sub.gif" width="16" height="15">
						</a>`);
				
				
				$("tbody").append($row);
				if(obj.statusName=="待审批"&&obj.nextname==$("[name='name']").val()){
					$("[name='id']").eq(i+1).append($row1);
				}else if(obj.statusName=="已审批"&&positionid==6&&obj.resultName=="通过"&&obj.nextname=="无"){
					$("[name='id']").eq(i+1).append($row1);
				}
				});
			$("#pagenum").text(date.pagenum);
			$("#pages").text(date.pages);
			$("#total").text(date.total);
			$("[name='firstPage']").val(date.firstPage);
			$("[name='prePage']").val(date.prePage);
			$("[name='nextPage']").val(date.nextPage);
			$("[name='lastPage']").val(date.lastPage);

		});
	$("#nextPage").click(function(){
		$.getJSON("/springmvc/api/pageleave",{id:$("[name='id']").val(),positionid:$("[name='positionid']").val(),pageNum:$("[name='nextPage']").val()},function(date){
			$("tbody").html("");	
			var positionid=$("[name='positionid']").val();
				$.each(date.list,function(i,obj){
					var	$row=$(`<tr>
							<td><a href="javascript:void(0)">\${obj.leaveid}</a></td>
							<td><span>\${obj.employeeName}</span>请假<span>\${obj.totalCount}</span>天</td>
							<td>\${obj.createTime}</td>
							<td>\${obj.checkTime}</td>
							<td>\${obj.resultName}</td>
							<td>\${obj.nextname}</td>
							<td>\${obj.statusName}<input id="checkId" type="hidden" value="temp.checkId" />
							</td>
							<td>
								<a href="qjxq.jsp" name="id">
									<img src="images/search.gif" width="16" height="15">
								</a>
								
								
							</td>
						</tr>`);
					var	$row1=$(`<a href="qjxq.jsp">
							<img src="images/sub.gif" width="16" height="15">
							</a>`);
					$("tbody").append($row);
					if(obj.statusName=="待审批"&&obj.nextname==$("[name='name']").val()){
						$("[name='id']").eq(i+1).append($row1);
					}else if(obj.statusName=="已审批"&&positionid==6&&obj.resultName=="通过"&&obj.nextname=="无"){
						$("[name='id']").eq(i+1).append($row1);
					}
					});
				$("#pagenum").text(date.pagenum);
				$("[name='prePage']").val(date.prePage);
				$("[name='nextPage']").val(date.nextPage);


			});

		});
	$("#prePage").click(function(){
		$.getJSON("/springmvc/api/pageleave",{id:$("[name='id']").val(),positionid:$("[name='positionid']").val(),pageNum:$("[name='prePage']").val()},function(date){
			$("tbody").html("");
			var positionid=$("[name='positionid']").val();	
				$.each(date.list,function(i,obj){
					var	$row=$(`<tr>
							<td><a href="javascript:void(0)">\${obj.leaveid}</a></td>
							<td><span>\${obj.employeeName}</span>请假<span>\${obj.totalCount}</span>天</td>
							<td>\${obj.createTime}</td>
							<td>\${obj.checkTime}</td>
							<td>\${obj.resultName}</td>
							<td>\${obj.nextname}</td>
							<td>\${obj.statusName}<input id="checkId" type="hidden" value="temp.checkId" />
							</td>
							<td>
								<a href="qjxq.jsp" name="id">
									<img src="images/search.gif" width="16" height="15">
								</a>
								
									
								
							</td>
						</tr>`);
					var	$row1=$(`<a href="qjxq.jsp">
							<img src="images/sub.gif" width="16" height="15">
							</a>`);
					$("tbody").append($row);
					if(obj.statusName=="待审批"&&obj.nextname==$("[name='name']").val()){
						$("[name='id']").eq(i+1).append($row1);
					}else if(obj.statusName=="已审批"&&positionid==6&&obj.resultName=="通过"&&obj.nextname=="无"){
						$("[name='id']").eq(i+1).append($row1);
					}
					});
				$("#pagenum").text(date.pagenum);
				$("[name='prePage']").val(date.prePage);
				$("[name='nextPage']").val(date.nextPage);


			});

		});
	$("#firstPage").click(function(){
		$.getJSON("/springmvc/api/pageleave",{id:$("[name='id']").val(),positionid:$("[name='positionid']").val(),pageNum:$("[name='firstPage']").val()},function(date){
			$("tbody").html("");	
			var positionid=$("[name='positionid']").val();
				$.each(date.list,function(i,obj){
					var	$row=$(`<tr>
							<td><a href="javascript:void(0)">\${obj.leaveid}</a></td>
							<td><span>\${obj.employeeName}</span>请假<span>\${obj.totalCount}</span>天</td>
							<td>\${obj.createTime}</td>
							<td>\${obj.checkTime}</td>
							<td>\${obj.resultName}</td>
							<td>\${obj.nextname}</td>
							<td>\${obj.statusName}<input id="checkId" type="hidden" value="temp.checkId" />
							</td>
							<td>
								<a href="qjxq.jsp" name="id">
									<img src="images/search.gif" width="16" height="15">
								</a>

							</td>
						</tr>`);
					var	$row1=$(`<a href="qjxq.jsp">
							<img src="images/sub.gif" width="16" height="15">
							</a>`);
					$("tbody").append($row);
					if(obj.statusName=="待审批"&&obj.nextname==$("[name='name']").val()){
						$("[name='id']").eq(i+1).append($row1);
					}else if(obj.statusName=="已审批"&&positionid==6&&obj.resultName=="通过"&&obj.nextname=="无"){
						$("[name='id']").eq(i+1).append($row1);
					}
					});
				$("#pagenum").text(date.pagenum);
				$("[name='prePage']").val(date.prePage);
				$("[name='nextPage']").val(date.nextPage);


			});

		});
	$("#lastPage").click(function(){
		$.getJSON("/springmvc/api/pageleave",{id:$("[name='id']").val(),positionid:$("[name='positionid']").val(),pageNum:$("[name='lastPage']").val()},function(date){
			$("tbody").html("");	
			var positionid=$("[name='positionid']").val();
				$.each(date.list,function(i,obj){
					var	$row=$(`<tr>
							<td><a href="javascript:void(0)">\${obj.leaveid}</a></td>
							<td><span>\${obj.employeeName}</span>请假<span>\${obj.totalCount}</span>天</td>
							<td>\${obj.createTime}</td>
							<td>\${obj.checkTime}</td>
							<td>\${obj.resultName}</td>
							<td>\${obj.nextname}</td>
							<td>\${obj.statusName}<input id="checkId" type="hidden" value="temp.checkId" />
							</td>
							<td>
								<a href="qjxq.jsp" name="id">
									<img src="images/search.gif" width="16" height="15">
								</a>
							</td>
						</tr>`);
					var	$row1=$(`<a href="qjxq.jsp">
							<img src="images/sub.gif" width="16" height="15">
							</a>`);
					$("tbody").append($row);
					if(obj.statusName=="待审批"&&obj.nextname==$("[name='name']").val()){
						$("[name='id']").eq(i+1).append($row1);
					}else if(obj.statusName=="已审批"&&positionid==6&&obj.resultName=="通过"&&obj.nextname=="无"){
						$("[name='id']").eq(i+1).append($row1);
					}
					});
				$("#pagenum").text(date.pagenum);
				$("[name='prePage']").val(date.prePage);
				$("[name='nextPage']").val(date.nextPage);


			});

		});
	
</script>
</html>
