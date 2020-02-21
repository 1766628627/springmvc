<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<input type="hidden" value="${employee.employeeid }" name="id"/>
<input type="hidden" value="${employee.positionid }" name="positionid"/>
	<div class="action  divaction">
		<div class="t">查看请假</div>
		<div class="pages">
			<!--增加报销单 区域 开始-->
			<table width="90%" border="0" cellspacing="0" cellpadding="0"
				class="addform-base">
				<caption>基本信息</caption>
				<tbody class="head">
					<tr>
						<td width="36%">姓名：王健林</td>
						<td width="64%">部门：财务部</td>
					</tr>
					<tr>
						<td>开始时间：</td>
						<td>结束时间：2019-08-22</td>
					</tr>
					<tr>
						<td>请假天数：1</td>
						<td>请假事由：22</td>
					</tr>
					<tr>
						<td>审批状态：已审批</td>
						<td></td>
					</tr>
				</tbody>
			</table>
			<p>
				-------------------------------------------------------------------------------
			</p>
			<table width="90%" border="0" cellspacing="0" cellpadding="0"
				class="addform-base" style="margin: 20px 0; display: none;"
				id="table1">
				<thead>
					
						<tr>
							<td width="15%">审查人</td>
							<td width="40%">审查意见</td>
							<td width="30%">审查时间</td>
							<td width="15%">审查结果</td>
						</tr>
					
				</thead>
				<tbody>
					
						<tr>
							<td class="name">presidentXi</td>
							<td class="comm"></td>
							<td class="time">
								2019-08-13 14:22:54
							</td>
							<td style="font-weight: bold;" class="result">拒绝</td>
						</tr>
						<tr>
							<td >审批意见：</td>
						</tr>
						<tr>
							<td ><textarea rows="5" cols="45"></textarea></td>
						</tr>
						<tr>
						<td>
							<input type="button" value="存档"  class="submit_01 cun">
							</td>
						</tr>
				</tbody>
					
			</table>
			
			<table width="90%" border="0" cellspacing="0" cellpadding="0"
				class="addform-base" style="margin: 20px 0; display: none; "
				id="table2">
				<tbody>
					
						<tr>
							<td>审批意见：</td>
						</tr>
						<tr>
							<td ><textarea rows="5" cols="45" class="text" ></textarea></td>
						</tr>
						<tr>
						<td>
							<input type="button" value="审批通过"  class="submit_01 shen">
							<input type="button" value="审批拒绝"  class="submit_01 shen">
							</td>
						</tr>
				</tbody>
					<!--表单提交行-->
					
			</table>
			<!--增加报销单 区域 结束-->
			<input type="button" value="返回" onclick="window.history.go(-1)" class="submit_01">
		</div>
	</div>

</body>
<script type="text/javascript" src="js/vue.js" ></script>
<script type="text/javascript" src="js/jq_ajax_config.js" ></script>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
var id = window.sessionStorage.getItem("id");
var pan = window.sessionStorage.getItem("pan");
$.getJSON("/springmvc/api/checks/check/"+id+"",function(data){
	$(".head").html("");
	
	$.each(data,function(i,obj){
		var $row=$(`<tr><td width="36%">姓名：\${obj.employeeName}</td>
				<td width="64%">部门：\${obj.departmentName}</td></tr>
			<tr><td>开始时间：\${obj.startTime}</td>
				<td>结束时间：\${obj.endTime}</td></tr>
			<tr><td>请假天数：\${obj.totalCount}</td>
				<td>请假事由：\${obj.event}</td></tr>
			<tr><td>审批状态：\${obj.statusName}</td>
				<td></td>
			</tr>`);
		$(".head").append($row);
		});
	var positionid=$("[name='positionid']").val();
	if(pan==1){
		if(positionid==1||positionid==3){
				$("#table2").show();
			}else if(positionid==6){
				$("#table1").show();
				 $.getJSON("/springmvc/api/checks/leave/"+id+"",function(data){
					$(".name").text(data.employeeName);
					$(".coom").text(data.checkComment);
					$(".time").text(data.checkTime);
					$(".result").text(data.resultName);
					
						}); 
				}
		}
	
});
	$(".shen").click(function(){
		var he=$(this).val();
		var check = {};
		check["bizid"] =id;
		check["typeid"] = 1;
		check["checkman"] = $.trim($("[name='id']").val());
		if(he=="审批通过"){
			check["checkresult"] = 1;
		}else if(he=="审批拒绝"){
			check["checkresult"] = 2;
		}
		check["checkcomment"] = $.trim($(".text").val());
		$.ajax("/springmvc/api/checks/check", {
			type : "post",	
			dataType : "json",
			contentType : "application/json",//非常重要
			data : JSON.stringify(check),//非常重要
			success : function(data) {
				if (data.code == "200") {
					alert("成功");
				} else {
					alert("失败");
				}
			}
		}); 
		$.ajax("/springmvc/api/leaves/leave/"+id+"/"+1007+"/"+4, {
			type : "put",	
			dataType : "json",
			success : function(data) {
				if (data.code == "200") {
					alert("成功");
					location.href="qjList.jsp";
				} else {
					alert("失败");
				}
			}
		}); 
		
		

		});
	$(".cun").click(function(){
		$.ajax("/springmvc/api/leaves/leave1/"+id+"/"+7, {
			type : "put",	
			dataType : "json",
			success : function(data) {
				if (data.code == "200") {
					alert("成功");
					location.href="qjList.jsp";
				} else {
					alert("失败");
				}
			}
		}); 

		});

</script>
</html>