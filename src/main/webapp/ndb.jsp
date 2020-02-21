<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
	<link href="css/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">
	function submitSearch(){
		if(document.queryForm.endYear.value < document.queryForm.startYear.value){
			alert("请输入正确的年份区间");
			return false;
		}
		document.queryForm.submit();
		
	}
</script>
</head>
<body>
	<div class="action  divaction">
		<div class="t">年度统计列表</div>
		<div class="pages">
			<form id="compYearStatistics_getList_action" name="queryForm"
				action="../jboa/statistics/yearList?pageNum=1&pageSize=10"
				method="get">
				<label for="time">开始年份</label> 
					<select name="startYear"  id="startYear" class="nwinput">
						<option value="0">无</option>
						
							
								
								
									<option value="2013">2013年</option>
								
							
						
							
								
								
									<option value="2014">2014年</option>
								
							
						
							
								
								
									<option value="2015">2015年</option>
								
							
						
							
								
								
									<option value="2016">2016年</option>
								
							
						
							
								
								
									<option value="2017">2017年</option>
								
							
						
							
								
								
									<option value="2018">2018年</option>
								
							
						
					</select>
				<label for="end-time">结束年份</label> 
				<select name="endYear"  id="endYear" class="nwinput">
					<option value="0">无</option>
					
						
							
							
								<option value="2013">2013年</option>
							
						
					
						
							
							
								<option value="2014">2014年</option>
							
						
					
						
							
							
								<option value="2015">2015年</option>
							
						
					
						
							
							
								<option value="2016">2016年</option>
							
						
					
						
							
							
								<option value="2017">2017年</option>
							
						
					
						
							
							
								<option value="2018">2018年</option>
							
						
					
				</select>
 				<input type="button" value="提交" class="submit_01" onclick="submitSearch()">
			</form>
			<table width="90%" border="0" cellspacing="0" cellpadding="0"
				class="list items">
				<thead>
					<tr class="even">
						<td>编号</td>
						<td>总计</td>
						<td>年份</td>
						<!--  <td>月份</td> -->
						<!-- <td>部门</td> -->
						<td>操作</td>
					</tr>
				</thead>
				<tbody>
					
						<tr>
							<td>1</td>
							<td>￥502883.0</td>
							<td>2018年</td>
							<td>
								<a href="ndbxq.html" target="rightFrame"> 
									<img src="images/search.gif" width="16" height="15">
								</a>
							</td>
						</tr>
						
					
						<tr>
							<td>2</td>
							<td>￥17885.0</td>
							<td>2019年</td>
							<td>
								<a href="/jboa/statistics/yearDetails?year=2019" target="rightFrame"> 
									<img src="images/search.gif" width="16" height="15">
								</a>
							</td>
						</tr>
						
					
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
