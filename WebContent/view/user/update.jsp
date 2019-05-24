<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>XX系统 - 活动信息修改</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>所选的用户信息</h3>

	<form action="${pageContext.request.contextPath}/user/update" method="post">
	<table class="form-table">
	<tr>
			<td>账号编号</td>
			<td colspan="3" class="control">
				<input type="text"  name="u_id"  value="${user.u_id}" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>用户账号</td>
			<td colspan="3" class="control">
				<input type="text"  name="u_name" value="${user.name}" >
			</td>
		</tr>
		<tr>
			<td>账号密码</td>
			<td colspan="3" class="control">
				<input type="text"   name="u_pass" value="${user.pass}">
			</td>
		</tr>
		<tr>
			<td>用户名称</td>
			<td colspan="3" class="control">
				<input type="text"  name="u_realname" value="${user.realname}">
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