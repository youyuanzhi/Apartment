<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>智游公寓系统 - 活动信息添加</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加房屋信息</h3>
	<form action="${pageContext.request.contextPath}/activity/add" method="post">
	<table class="form-table">
		<tr>
			<td>活动主题</td>
			<td colspan="3" class="control">
				<input type="text" name="a_subject" placeholder="活动主题">
			</td>
		</tr>
		<tr>
			<td>活动内容</td>
			<td colspan="3" class="control">
				<input type="text" name="a_content" placeholder="活动内容">
			</td>
		</tr>
		<tr>
			<td>活动地点</td>
			<td colspan="3" class="control">
				<input type="text" name="a_site" placeholder="活动地点">
			</td>
		</tr>
		<tr>
			<td>活动花费</td>
			<td colspan="3" class="control">
				<input type="text" name="a_cost" placeholder="活动花费">
			</td>
		</tr>
		<tr>
			<td>组织者</td>
			<td colspan="3" class="control">
				<input type="text" name="a_organizer" placeholder="活动组织者">
			</td>
		</tr>
		<tr>
			<td>举办时间</td>
			<td colspan="3" class="control">
				<input type="text" name="a_taketime" placeholder="活动举办的时间">
			</td>
		</tr>
	</table>
	<div class="buttons">
		<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
	</form>
</div>
</body>
</html>