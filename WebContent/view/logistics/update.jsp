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
	<h3>所选的用户信息</h3>
	${logistics}
	<form action="${pageContext.request.contextPath}/logistics/update" method="post">
	<table class="form-table">
	<tr>
			<td>人员编号</td>
			<td colspan="3" class="control">
				<input type="text"  name="lo_id"  value="${logistics.lo_id}" readonly="readonly">
			</td>
		</tr>
		<tr>
			<td>人员姓名</td>
			<td colspan="3" class="control">
				<input type="text"  name="lo_name" value="${logistics.lo_name}" >
			</td>
		</tr>
		<tr>
			<td>身份证号</td>
			<td colspan="3" class="control">
				<input type="text"  name="lo_idcard" value="${logistics.lo_idcard}">
			</td>
		</tr>
		<tr>
			<td>手机号码</td>
			<td colspan="3" class="control">
				<input type="text"  name="lo_tel" value="${logistics.lo_tel}">
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