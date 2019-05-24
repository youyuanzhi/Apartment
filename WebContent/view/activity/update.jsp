<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>XX系统 - 房屋信息添加</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>所选的活动信息</h3>
	${activity}
	<form action="${pageContext.request.contextPath}/activity/update" method="post">
	<table class="form-table">
	<tr>
			<td>活动编号</td>
			<td colspan="3" class="control">
				<input type="text"  name="a_id"  value="${activity.a_id}" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>活动主题</td>
			<td colspan="3" class="control">
				<input type="text"  name="a_subject" value="${activity.a_subject}" >
			</td>
		</tr>
		<tr>
			<td>活动内容</td>
			<td colspan="3" class="control">
				<input type="text"   name="a_content" value="${activity.a_content}">
			</td>
		</tr>
		<tr>
			<td>活动地点</td>
			<td colspan="3" class="control">
				<input type="text"  name="a_site" value="${activity.a_site}">
			</td>
		</tr>
		<tr>
			<td>活动花费</td>
			<td colspan="3" class="control">
				<input type="text"  name="a_cost" value="${activity.a_cost}">
			</td>
		</tr>
		<tr>
			<td>组织者</td>
			<td colspan="3" class="control">
				<input type="text"  name="a_organizer" value="${activity.a_organizer}">
			</td>
		</tr>
		<tr>
			<td>举办时间</td>
			<td colspan="3" class="control">
				<input type="text"  name="a_taketime" value="${activity.a_taketime}">
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