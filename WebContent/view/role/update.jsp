<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>XX系统 - 角色信息修改</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>所选的角色信息</h3>
	${role}
	<form action="${pageContext.request.contextPath}/role/update" method="post">
	<table class="form-table">
	<tr>
			<td>角色编号</td>
			<td colspan="3" class="control">
				<input type="text"  name="r_id"  value="${role.r_id}" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>角色名称</td>
			<td colspan="3" class="control">
				<input type="text"  name="r_name" value="${role.r_name}" >
			</td>
		</tr>
		<tr>
			<td>角色等级</td>
			<td colspan="3" class="control">
				<input type="text"   name="r_desc" value="${role.r_desc}">
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