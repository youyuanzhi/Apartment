<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>智游公寓系统 - 用户信息添加</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
</head>
<body>
<div class="box">
	<h3>添加用户信息</h3>
	<form action="${pageContext.request.contextPath}/UserAddServlet" method="post">
	<table class="form-table">
		<tr>
			<td>用户账号</td>
			<td colspan="3" class="control">
				<input type="text" name="name" value=${user.name } readonly="true">
			</td>
		</tr>
		<tr>
			<td>账号密码</td>
			<td colspan="3" class="control">
				<input type="text" name="pass" value=${user.pass }>
			</td>
		</tr>
		<tr>
			<td>用户名称</td>
			<td colspan="3" class="control">
				<input type="text" name="realname" value=${user.realname }>
			</td>
		</tr>
		<tr>
			<td>用户年龄</td>
			<td colspan="3" class="control">
				<input type="text" name="u_sex" placeholder="用户性别">
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