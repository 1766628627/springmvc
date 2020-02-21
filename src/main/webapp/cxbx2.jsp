<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	<link href="css/style.css" rel="stylesheet" type="text/css">
<style>
	.img{width:40px;height:40px;cursor:pointer;}
	.weight{font-weight: bold;}
</style>
	<script type="text/javascript" src="js/common.js"></script>
	<script src="js/jquery-1.12.4.js"></script>
</head>
<body>
	<form id="myForm" name="myForm" method="post">
		<div class="action  divaction">
			<div class="t">查看报销单</div>
			<div class="pages">
				<!--增加报销单 区域 开始-->
				<table width="90%" border="0" cellspacing="0" cellpadding="0"
					class="addform-base">
					<caption>基本信息</caption>
					<tbody>
						<tr>
							<td >编&nbsp;&nbsp;号：<span class="no"></span></td>
							<td >填&nbsp;写&nbsp;人：<span class="name"></span></td>
							<td class="bumen">部&nbsp;&nbsp;门：${employee.departmentname }</td>
							<td class="zhiwei">职&nbsp;&nbsp;位：${employee.positionname }</td>
						</tr>
						<tr>
							<td >总金额：<span class="qian"></span></td>
							<td >填报时间：<span class="time"></span></td>
							<td >状态：<span class="sta"></span></td>
							<td >待处理人：<span class="next"></span></td>
						</tr>
						<tr>
							<td colspan="4"><p>-------------------------------------------------------------------------------</p></td>
						</tr>
					</tbody>
				</table>
				<p>&nbsp;</p>
				<table width="90%" border="0" cellspacing="0" cellpadding="0"
					class="addform-base">
					<thead>
						<tr>
							<td>项目说明</td>
							<td>项目金额</td>
							<td>票据截图</td>
						</tr>
					</thead>
					<tbody class="body1">
						
							
						

					</tbody>
				</table>
				<p>&nbsp;</p>
				<p>-------------------------------------------------------------------------------</p>

				<table style="margin-top: 15px;" width="90%" border="0" cellspacing="0" cellpadding="0"
					class="addform-base">
					<thead id="head">
					
						
					</thead>
					<tbody id="body">
						

					</tbody>

				</table>
				<p>&nbsp;</p>

				<p>&nbsp;</p>
				<p>
					<input type="button" value="返回" onclick="window.history.go(-1)"
						class="submit_01">
				</p>
				<!--增加报销单 区域 结束-->
			</div>
		</div>
	</form>
</body>
<script type="text/javascript">
var id = window.sessionStorage.getItem("id");
	$.getJSON("/springmvc/api/reims/reim/rei/"+id,function(data){
			$(".no").text(id);
			$(".name").text(data.reimburse.employeeName);
			$(".qian").text(data.reimburse.totalCount);
			$(".time").text(data.reimburse.createTime);
			$(".sta").text(data.reimburse.statusName);
			$(".next").text(data.reimburse.nextname);
			$(".body1").html("");
			$.each(data.details,function(i,obj){
				var $row=$(`<tr>
					<td>
					<span>\${obj.desc}</span>
				</td>
				<td>
					<span>\${obj.subtotal}</span>
				</td>
				<td><img src='\${obj.picturepath}'/></td>
			</tr>`);
				$(".body1").append($row);
				
				});
			if(data.checks!=""){
					var $row=$(`<tr>
							<td>审查人</td>
							<td>审查意见</td>
							<td>审查时间</td>
							<td>审查结果</td>	
						</tr>`);
					$("#head").append($row);
					$.each(data.checks,function(i,obj){
						var $row1=$(`<tr>
								<td>\${obj.employeeName}</td>
								<td>\${obj.checkComment}</td>
								<td>\${obj.checkTime}</td>
								<td>\${obj.resultName}</td>	
							</tr>`);
						$("#body").append($row1);
						});
				}
		}); 
</script>
</html>
