<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href="css/style.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="js/common.js"></script>
<script src="js/jquery-1.12.4.js"></script>

<script>
	
	
</script>
</head>
<body>
	<input type="hidden" value="${employee.employeeid }" name="id" />
	<input type="hidden" value="${employee.employeename }" name="name" />
	<input type="hidden" value="${employee.positionid }" name="positionid" />
	<div class="action  divaction">
		<div class="t">报销单列表</div>
		<div class="pages">
			<div class="forms">
				<form id="myForm" name="queryForm"
					>
					<label>报销单状态</label> <select name="statusId" id="statusId">
						<option value="0">全部</option>
						<option value="1">新创建</option>
						<option value="2">待审批</option>
						<option value="3">审批中</option>
						<option value="4">已审批</option>
						<option value="5">已付款</option>
						<option value="6">已打回</option>
						<option value="7">已存档</option>
					</select> <label for="time">开始时间</label> <input type="text" name="sTime"
						value="" id="startDate" > <label
						for="end-time">结束时间</label> <input type="text" name="eTime"
						value="" id="endDate" >
					<!-- <input
						type="hidden" name="pageNum" value="1"> <input
						type="hidden" name="pageSize" value="2"> -->
					<input type="button" value="查询" class="submit_01 cha">
				</form>
			</div>
			<!--增加报销单 区域 开始-->
			<form id="claimVoucher_searchClaimVoucher_action"
				name="claimVoucherForm"
				action="jsp/claim/claimVoucher_searchClaimVoucher.action"
				method="post">
				<table width="90%" border="0" cellspacing="0" cellpadding="0"
					class="list items">
					<thead>
						<tr class="even">
							<td>编号</td>
							<td>填报日期</td>
							<td>填报人</td>
							<td>总金额</td>
							<td>状态</td>
							<td>待处理人</td>
							<td width=20%>操作</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="javascript:void(0)">247</a></td>
							<td>2019-08-14 15:34:56</td>
							<td>王健林</td>
							<td>200.0</td>
							<td>待审批</td>
							<td>presidentXi</td>
							<td><a target="rightFrame" href="ckbx2.html"> <img
									src="images/search.gif" title="查看详情" width="16" height="15">
							</a></td>
						</tr>
					</tbody>

				</table>
				<div class="page-bar">

					<a href="javascript:void(0)" id="firstPage">首页</a> <input
						type="hidden" value="" name="firstPage" /> &nbsp;&nbsp;
					&nbsp;&nbsp; <a href="javascript:void(0)" id="prePage">上一页</a> <input
						type="hidden" value="" name="prePage" "/> &nbsp;&nbsp; <a
						href="javascript:void(0)" id="nextPage">下一页</a> <input
						type="hidden" value="" name="nextPage" /> &nbsp;&nbsp; <a
						href="javascript:void(0)" id="lastPage">末页</a> <input
						type="hidden" value="" name="lastPage" /> &nbsp;&nbsp;
					&nbsp;&nbsp;第 <span id="pagenum"></span>页/共<span id="pages"></span>页&nbsp;&nbsp;共<span
						id="total"></span>条记录
				</div>
			</form>
			<!--增加报销单 区域 结束-->
		</div>
	</div>
</body>
<script>
	
	$("#firstPage").click(function(){
		var size =$("[name='firstPage']").val();
			page(size);
		});
	$("#prePage").click(function(){
		var size =$("[name='prePage']").val();
			page(size);
		});
	$("#nextPage").click(function(){
		var size =$("[name='nextPage']").val();
			page(size);
		});
	$("#lastPage").click(function(){
		var size =$("[name='lastPage']").val();
			page(size);
		});
	$(document).on("click","#gai",function(){
		alert(1);
		var id=$.trim($(this).parents("tr").children().first().text());
		
		 window.sessionStorage.setItem("id",id);
		location.href="xgbx.jsp";

		});
	$(document).on("click","#jiao",function(){
		alert(2);
		var id=$.trim($(this).parents("tr").children().first().text());
		$.ajax("/springmvc/api/reims/reim/"+id+"/2", {
			type : "put",//非常重要
			dataType : "json",
			success : function(data) {
				if (data.code == 200) {
					alert("提交成功");
					page(1);
				} else{
					alert("提交失败");
				}
			}
		});
		});
	$(document).on("click","#del",function(){
		alert(3);
		var id=$.trim($(this).parents("tr").children().first().text());
		$.ajax("/springmvc/api/reims/reim/rei/"+id, {
			type : "delete",//非常重要
			dataType : "json",
			success : function(data) {
				if (data.code == 200) {
					alert("删除成功");
					page(1);
				} else{
					alert("删除失败");
				}
			}
		});
		});
	
	$(document).on("click","#id",function(){
		alert(4);
		var id=$.trim($(this).parents("tr").children().first().text());
		 window.sessionStorage.setItem("id",id);
		location.href="cxbx2.jsp";

		});
	$(document).on("click","#pan",function(){
		alert(5)
		var id=$.trim($(this).parents("tr").children().first().text());
		 window.sessionStorage.setItem("id",id);
		location.href="xgbx2.jsp";

		});
	$(".cha").click(function(){
		pageone(1);

		})



	
	function page(pageNum){
		var id=$("[name='id']").val();
		var positionid=$("[name='positionid']").val();
		 $.getJSON("/springmvc/api/reims/reim/"+id+"/"+positionid+"/"+pageNum,function(date){
			$("tbody").html("");
			$.each(date.list,function(i,obj){
				var	$row=$(`<tr>
						<td><a href="javascript:void(0)">\${obj.reimburseId}</a></td>
						<td>\${obj.createTime}</td>
						<td>\${obj.employeeName}</td>	
						<td>\${obj.totalCount}</td>	
						<td>\${obj.nextname}</td>
						<td>\${obj.statusName}<input id="checkId" type="hidden" value="temp.checkId" />
						</td>
						<td>
							<a href="javascript:void(0)" name="id" id="id">
								<img src="images/search.gif" width="16" height="15">
							</a>

						</td>
					</tr>`);
				var	$row1=$(`<a href="javascript:void(0)" id="pan">
						<img src="images/sub.gif" width="16" height="15">
						</a>`);		
				var $row2=$(`<a href="javascript:void(0)" id="jiao">
						<img src="images/save.gif" width="16" height="15">
						</a>
						<a href="javascript:void(0)" id="gai">
						<img src="images/edit.gif" width="16" height="15">
						</a>
						<a href="javascript:void(0)" id="del">
						<img src="images/delete.gif" width="16" height="15">
						</a>`);			
				$("tbody").append($row);
				if(obj.statusName=="待审批"&&obj.nextname==$("[name='name']").val()){
					$("[name='id']").eq(i+1).after($row1);
				}else if(obj.statusName=="已审批"&&positionid==4&&obj.nextname==$("[name='name']").val()){
					$("[name='id']").eq(i+1).after($row1);
				}else if(obj.statusName=="新创建"||obj.statusName=="已打回"){
					$("[name='id']").eq(i+1).before($row2);
				}else if(obj.statusName=="审批中"&&positionid==2&&obj.nextname==$("[name='name']").val()){
					$("[name='id']").eq(i+1).after($row1);
				}else if(obj.statusName=="审批中"&&positionid==1&&obj.nextname==$("[name='name']").val()){
					$("[name='id']").eq(i+1).after($row1);
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

		}
	function pageone(pageNum){
		var id=$("[name='id']").val();
		var positionid=$("[name='positionid']").val();
		var stime=$("[name='sTime']").val();
		var etime=$("[name='eTime']").val();
		var statusid=$("[name='statusId']").val();
		 $.getJSON("/springmvc/api/reims/reim/"+id+"/"+positionid+"/"+pageNum+"/"+stime+"/"+etime+"/"+statusid,function(date){
			$("tbody").html("");
			$.each(date.list,function(i,obj){
				var	$row=$(`<tr>
						<td><a href="javascript:void(0)">\${obj.reimburseId}</a></td>
						<td>\${obj.createTime}</td>
						<td>\${obj.employeeName}</td>	
						<td>\${obj.totalCount}</td>	
						<td>\${obj.nextname}</td>
						<td>\${obj.statusName}<input id="checkId" type="hidden" value="temp.checkId" />
						</td>
						<td>
							<a href="javascript:void(0)" name="id" id="id">
								<img src="images/search.gif" width="16" height="15">
							</a>

						</td>
					</tr>`);
				var	$row1=$(`<a href="javascript:void(0)" id="pan">
						<img src="images/sub.gif" width="16" height="15">
						</a>`);		
				var $row2=$(`<a href="javascript:void(0)" id="jiao">
						<img src="images/save.gif" width="16" height="15">
						</a>
						<a href="javascript:void(0)" id="gai">
						<img src="images/edit.gif" width="16" height="15">
						</a>
						<a href="javascript:void(0)" id="del">
						<img src="images/delete.gif" width="16" height="15">
						</a>`);			
				$("tbody").append($row);
				if(obj.statusName=="待审批"&&obj.nextname==$("[name='name']").val()){
					$("[name='id']").eq(i+1).after($row1);
				}else if(obj.statusName=="已审批"&&positionid==4&&obj.nextname==$("[name='name']").val()){
					$("[name='id']").eq(i+1).after($row1);
				}else if(obj.statusName=="新创建"||obj.statusName=="已打回"){
					$("[name='id']").eq(i+1).before($row2);
				}else if(obj.statusName=="审批中"&&positionid==2&&obj.nextname==$("[name='name']").val()){
					$("[name='id']").eq(i+1).after($row1);
				}else if(obj.statusName=="审批中"&&positionid==1&&obj.nextname==$("[name='name']").val()){
					$("[name='id']").eq(i+1).after($row1);
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

		}
</script>

</html>
